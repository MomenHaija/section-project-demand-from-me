using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJ5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection("data source=DESKTOP-B9B8CS7;database=LIBRARYBOOKS;integrated security=SSPI;MultipleActiveResultSets=true");


        protected void Page_Load(object sender, EventArgs e)
        {




            if (Session["ID"] == null)
            {
                Response.Redirect("EXAMPLE.aspx");
            }
            int userId = Convert.ToInt32(Session["ID"].ToString());
            SqlCommand com1 = new SqlCommand($"select product.product_name , product.product_PICTURE , product.prodct_price , cart.product_quantity ,cart.cart_id , cart.product_id from cart inner join product on product.product_id = cart.product_id where Userid = {userId}", CONN);
            CONN.Open();
            SqlDataReader reader = com1.ExecuteReader();
            OrderSummary.InnerHtml = "";
            double sub = 0;
            while (reader.Read())
            {
                OrderSummary.InnerHtml += $" <div class='row item'>  " +
                    $"<div class='col-4 align-self-center'>" +
                    $"<img class='img-fluid' src='Images/{reader[1]}'>" +
                    $"</div> <div class='col-8'>" +
                    $" <div class='row'>" +
                    $"<b>{reader[2]} Jd</b>" +
                    $"</div>" +
                    $" <div class='row text-muted'>" +
                    $"{reader[0]}" +
                    $"</div>" +
                    $"<div class='row'>Qty:{reader[3]}</div>" +
                    $" </div>" +
                    $" </div>";
                sub += Convert.ToDouble(reader[2]) * Convert.ToDouble(reader[3]);
            }
            Subtotal.InnerHtml = sub.ToString() + " " + "Jd";
            Totalpay.InnerHtml = sub.ToString() + " " + "Jd";
            CONN.Close();

            if (Session["success"] != null)
            {
                body.Attributes.Remove("class");
                body.InnerHtml = $"   <div class=\"vh-100 d-flex justify-content-center align-items-center\">\r\n     " +
                    $"       <div class=\"col-md-4\">\r\n                <div class=\"border border-3 border-success\"></div>\r\n    " +
                    $"            <div class=\"card  bg-white shadow p-5\">\r\n    " +
                    $"                <div class=\"mb-4 text-center\">\r\n      " +
                    $"                  <svg xmlns=\"http://www.w3.org/2000/svg\" class=\"text-success\" width=\"75\" height=\"75\"\r\n       " +
                    $"                     fill=\"currentColor\" class=\"bi bi-check-circle\" viewBox=\"0 0 16 16\">\r\n     " +
                    $"                       <path d=\"M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z\" />\r\n    " +
                    $"                        <path\r\n                                d=\"M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z\" />\r\n  " +
                    $"                      </svg>\r\n                    </div>\r\n                    <div class=\"text-center\">\r\n                        <h1>Thank You !</h1>\r\n        " +
                    $"                <p>Your payment was successful, your order number is: {Session["orderNumber"].ToString()} </p>\r\n                        <a href='EXAMPLE.aspx' class=\"btn btn-outline-success\">Back Home</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>";
            } 
            Session["success"] = null;
        }

        protected void Pay(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            int userID = Convert.ToInt32(Session["ID"].ToString());
            CONN.Close();
            CONN.Open();
            SqlCommand command = new SqlCommand($"insert into orders values('{now}' ,{userID})", CONN);
            command.ExecuteNonQuery();
            CONN.Close();
            CONN.Open();
            SqlCommand cv = new SqlCommand("SELECT IDENT_CURRENT('orders')", CONN);


            CONN.Close();
            CONN.Open();
            SqlDataReader rea = cv.ExecuteReader();
            while (rea.Read())
            {
                SqlCommand cc = new SqlCommand($"update cart set order_id = {Convert.ToInt32(rea[0]).ToString()} where cart.Userid = {userID}", CONN);
                cc.ExecuteNonQuery();
                Session["orderNumber"] = rea[0];

            }




            CONN.Close();
            CONN.Open();
            SqlCommand command2 = new SqlCommand($"select cart.product_quantity, cart.order_id , cart.product_id  from cart where Userid = {userID} ", CONN);
            SqlDataReader read2 = command2.ExecuteReader();
            while (read2.Read())
            {

                SqlCommand t = new SqlCommand($"insert into order_product values({read2[1]} , {read2[2]} , {read2[0]})", CONN);
                t.ExecuteNonQuery();


            }


            SqlCommand command3 = new SqlCommand($"delete from cart where Userid = {userID} ", CONN);
            command3.ExecuteNonQuery();
            Session["success"] = "ok";
            Response.Redirect("payment.aspx");
         
            CONN.Close();
        }
    }
}
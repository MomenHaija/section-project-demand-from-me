using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PROJ5
{
    public partial class singleProduct : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection("data source= DESKTOP-B9B8CS7;database=LIBRARYBOOKS;Integrated security=SSPI");

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["product_id"]);





            if (!string.IsNullOrEmpty(Session["ID"] as string))
            {
                LinkButton2.Visible = true;
                LOGIN.Visible = false;
                pro.Visible = true;


                int IDs = Convert.ToInt32(Session["ID"].ToString());
                SqlCommand command2 = new SqlCommand($"SELECT First_Name,Last_Name  FROM users where userid={IDs};", CONN);
                string fname;


                CONN.Open();

                SqlDataReader reader1 = command2.ExecuteReader();
                while (reader1.Read())
                {
                    fname = reader1[0].ToString();
                    //lname = reader1[1].ToString();
                    //Label8.Text = fname;
                    //Label9.Text = lname;
                }

                CONN.Close();

            }







                if (Request.QueryString["product_id"] == null)
            {
                Response.Redirect("EXAMPLE.aspx");
            }
            if (Session["ID"] == null)
            {
                TextBox1.Enabled = false;
                TextBox1.Text = "Please login to add a comment.";
                Button2.Enabled = false;



            }
            if(Request.QueryString["sender"] != null)
            {
                if (Request.QueryString["sender"].ToString() == "cartbtn")
                {
                    Alerter();
                }
            }

            if (Session["ID"] != null)
            {
                CONN.Open();
                int userIdForCart = Convert.ToInt32(Session["ID"].ToString());
                SqlCommand getCartCount = new SqlCommand($"select sum(product_quantity) from cart where Userid = {userIdForCart}", CONN);
                SqlDataReader cartCounter = getCartCount.ExecuteReader();
                while (cartCounter.Read())
                {

                    cartCount.InnerText = cartCounter[0].ToString();
                    if(cartCounter[0].ToString() == "")
                    {
                        cartCount.InnerText = "0";
                    }

                }
                CONN.Close();
            }
            else
            {
                cartCount.Visible = false;
            }

             
   
          CONN.Close();
            CONN.Open();

            SqlCommand print = new SqlCommand($"select product.product_name , product.product_PICTURE ,  product.prodct_price , product.quantity , product.detalis , category.category_id , category.category_name from product inner join category on product.category_id = category.category_id  where product_id = {id} ", CONN);
           
            SqlDataReader read = print.ExecuteReader();
           

            while (read.Read())
            {
               
                string im = $"<img class='card-img-top mb-5 mb-md-0 img-width' src='iamges/{read[1]}' alt='...' />";
                imgContainer.InnerHtml = im;
                itemName.InnerText = $"{read[0]}";
                itemPrice.InnerText = $"{read[2]} JD";

                categoryLink.Attributes.Add("href", $"singlecategory.aspx?category_id={read[5]}");
                categoryLink.InnerText = $"{read[6]}";

                     Session["details"] = read[4].ToString();

                    itemDetails.InnerHtml = $"{read[4].ToString()}";
 
            }

            CONN.Close();



            if (Session["ID"] != null)
            {
                SqlCommand com1 = new SqlCommand($"select product.product_name , product.product_PICTURE ,  product.prodct_price , cart.product_quantity , cart.cart_id  from cart inner join product on product.product_id = cart.product_id where Userid = {Convert.ToInt32(Session["ID"].ToString())}", CONN);
                CONN.Open();
                SqlDataReader reader = com1.ExecuteReader();

                while (reader.Read())
                {
                    HtmlTableRow tableRow = new HtmlTableRow();
                    HtmlTableCell tableCell1 = new HtmlTableCell();
                    HtmlTableCell tableCell2 = new HtmlTableCell();
                    HtmlTableCell tableCell3 = new HtmlTableCell();
                    HtmlTableCell tableCell4 = new HtmlTableCell();
                    HtmlTableCell tableCell5 = new HtmlTableCell();


                    tableRow.ID = $"row1-{reader[4]}";
                    Button btn = new Button();
                    // LinkButton btn = new LinkButton();

                    btn.Attributes.Add("class", "btn-close ");

                    btn.ID = $"btn1-{reader[4]}";
                    btn.Click += new EventHandler(this.Remover);

                    tableCell5.Controls.Add(btn);


                    tableCell1.InnerHtml = $" <img src = 'iamges/{reader[1]}' style='width:65px;'>";
                    tableCell2.InnerHtml = $"{reader[0]}";
                    tableCell3.InnerHtml = $"x{reader[3]}";
                    tableCell4.InnerHtml = $"{Convert.ToDouble(reader[2]) * Convert.ToDouble(reader[3])} JD";

                    tableRow.Cells.Add(tableCell1);
                    tableRow.Cells.Add(tableCell2);
                    tableRow.Cells.Add(tableCell3);
                    tableRow.Cells.Add(tableCell4);
                    tableRow.Cells.Add(tableCell5);
                    cartTable.Rows.Add(tableRow);


                }
                CONN.Close();
            }
            CONN.Open();
            SqlCommand cm = new SqlCommand($"  select First_name , user_PICTURE, product_id ,comment , comment_date from comment \r\n inner join users on comment.customer_id = users.Userid where product_id={id};", CONN);
            SqlDataReader rea = cm.ExecuteReader();
            commentsSection.InnerHtml = "";
            while (rea.Read())
            {

                commentsSection.InnerHtml += $"   <div class='card-body p-4'>   " +
                    $"    <div class='d-flex flex-start'> " +
                    $"       <img class='rounded-circle shadow-1-strong me-3'   " +
                    $"        src='images\\{rea[1]}' alt='avatar' width='60'  height='60'>   " +
                    $"      <div>  " +
                    $"     <h6 class='fw-bold mb-1'>{rea[0]}</h6>  " +
                    $"    <div class='d-flex align-items-center mb-3'> " +
                    $"     <p class='mb-0'>{Convert.ToDateTime(rea[4]).ToString("dddd, dd MMMM yyyy hh:mm tt")} </p> " +
                    $" </div>  " +
                    $" <p class='mb-0'>{rea[3]} </p> " +
                    $"  </div> " +
                    $"</div>" +
                    $" </div> " +
                    $" <hr class='my-0' />";


            }


            CONN.Close();

        }
        protected void Submit_Click(object sender, EventArgs e)
        {

            string ss = searches.Value.ToString();
            if (ss.Trim().Length > 0)
            {

                Session["ssearch"] = ss;
                Response.Redirect($"http://localhost:56508/mysearch.aspx?ss={ss.Trim()}");

            }
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("EXAMPLE.aspx");
        }


        protected void Remover(object sender, EventArgs e)
        {

            Button nn = (Button)sender;


            string[] rowin = nn.ID.Split('-');

            HtmlTableRow tr = (HtmlTableRow)Page.FindControl("row1-" + (string)rowin[1]);

            cartTable.Rows.Remove(tr);

            CONN.Close();
            CONN.Open();
            SqlCommand sqcom = new SqlCommand($"delete from cart where cart_id = {Convert.ToInt32(rowin[1])}", CONN);

            sqcom.ExecuteNonQuery();

            CONN.Close();


            Session["sender"] = "remover";
            int id = Convert.ToInt32(Request.QueryString["product_id"]);
            Response.Redirect($"singleProduct.aspx?product_id={id}");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            CONN.Close();
            CONN.Open();
            DateTime now = DateTime.Now;
            int id = Convert.ToInt32(Request.QueryString["product_id"]);
            SqlCommand cm2 = new SqlCommand($" insert into comment values({id} , {Convert.ToInt32(Session["ID"].ToString())} , @comment , '{now}')", CONN);

            cm2.Parameters.AddWithValue("@comment", TextBox1.Text);
            if (!string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                cm2.ExecuteNonQuery();
                Response.Redirect($"singleProduct.aspx?product_id={id}");

            }
         
            CONN.Close();

           
   
       

        }

 

        protected void CartButton_Click1(object sender, EventArgs e)
        {

            if (Session["ID"] != null)
            {


                int id = Convert.ToInt32(Request.QueryString["product_id"]);
                Session["productId"] = id;

                Response.Redirect($"cart.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            int val = Convert.ToInt32(quantityBox.Value);
            int id = Convert.ToInt32(Request.QueryString["product_id"]);

       
            if (Session["ID"] != null)
            {
              
                CONN.Close();
                CONN.Open();
                SqlCommand com = new SqlCommand($"insert into cart (product_id , product_quantity , Userid ) Values( {id} , {val} , {Convert.ToInt32(Session["ID"].ToString())} )", CONN);

                com.ExecuteNonQuery();
                CONN.Close();
                Response.Redirect($"singleProduct.aspx?product_id={id}&val={val}&sender=cartbtn");
            }
            else
            {
                Label1.Visible = true;
                Label2.Visible = true;
                Label1.Text = $"Please <a href=\"login.aspx?prevPage=singleProduct.aspx?product_id={id}\">Login</a> to add or to view cart.";
            }

               
            CONN.Close();


      
           
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["product_id"]);
            if (Session["ID"] != null)
            {
                Response.Redirect("cart.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label2.Visible = true;
                Label1.Text = $"Please <a href=\"login.aspx?prevPage=singleProduct.aspx?product_id={id}\">Login</a> to add or to view cart.";
            }
        }

        protected void Alerter()
        {
            int id = Convert.ToInt32(Request.QueryString["product_id"]);
            CONN.Open();

            SqlCommand print = new SqlCommand($"select product.product_name from product where product_id = @id ", CONN);
            print.Parameters.AddWithValue("@id", id);
            SqlDataReader read = print.ExecuteReader();
            while (read.Read())
            {
                addTocart.InnerHtml = $"<div class='alert alert-success flasher' role='alert'> " +
                          $" Added x{Request.QueryString["val"]} of {read[0]} to your cart." +

                          $"</div>";
            }

            CONN.Close();



        }
    }
}
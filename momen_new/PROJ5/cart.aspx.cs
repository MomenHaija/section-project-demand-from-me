using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;

namespace PROJ5
{
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection("data source= DESKTOP-B9B8CS7;database=LIBRARYBOOKS;Integrated security=SSPI");
 
         
        protected void Page_Load(object sender, EventArgs e)
        {
                      if (Session["ID"] == null)
            {
                Response.Redirect("EXAMPLE.aspx");
            }

            RenderCart();
            RenderCategory();

            if (!string.IsNullOrEmpty(Session["ID"] as string))
            {
                LinkButton1.Visible = true;
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


            if (Session["ID"] != null)
            {
                CONN.Open();
                int userIdForCart = Convert.ToInt32(Session["ID"].ToString());
                SqlCommand getCartCount = new SqlCommand($"select sum(product_quantity) from cart where Userid = {userIdForCart}", CONN);
                SqlDataReader cartCounter = getCartCount.ExecuteReader();
                while (cartCounter.Read())
                {

                    cartCount.InnerText = cartCounter[0].ToString();
                    if (cartCounter[0].ToString() == "")
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


           
            

            }
        protected void RenderCategory()
        {
            //SqlCommand com1 = new SqlCommand($"select category_name , category_id from category ORDER BY category_name ASC; ", connection);
            //connection.Open();
            //SqlDataReader reader = com1.ExecuteReader();
            //categoyLinks.InnerHtml = "";
            //while (reader.Read())
            //{
            //    categoyLinks.InnerHtml += $"<li><a class='item' href='singlecategory.aspx?category_id={reader[1]}'>{reader[0]}</a></li>";
            //}
            //connection.Close();
        }
        protected void Changer(object sender, EventArgs e) 
        {
             TextBox thisbox = (TextBox)sender;
            string[] ids = thisbox.ID.Split('-');
             Label lbl = (Label)Page.FindControl($"{ids[1]}-Label");
            lbl.Text = thisbox.Text;
           // f += lbl.Text + "-";
        }
       
        protected void RenderCart()
        {

            int userId = Convert.ToInt32(Session["ID"].ToString());
            SqlCommand com1 = new SqlCommand($"select product.product_name , product.product_PICTURE , product.prodct_price , cart.product_quantity ,cart.cart_id , cart.product_id from cart inner join product on product.product_id = cart.product_id where Userid = {userId}", CONN);

            CONN.Open();
            SqlDataReader reader = com1.ExecuteReader();
       
            while(reader.Read())
            {
     
 
      

                HtmlTableRow row1= new HtmlTableRow();
                HtmlTableCell td1 = new HtmlTableCell();
                row1.ID = $"row-{reader[4]}";
                td1.Attributes.Add("class", "pro-img text-center");
                 td1.InnerHtml = $"<a href='product-details.html'><img class='img-fluid lazyload' src='Images/{reader[1]}' width='100' /></a>";
                    row1.Controls.Add(td1);
                HtmlTableCell td2 = new HtmlTableCell();
                td2.Attributes.Add("class", "pro-del text-center text-sm-left");
                td2.InnerHtml = $"<p class='mb-1 pro-name'><a href='singleProduct.aspx?product_id={reader[5]}'>{reader[0]}</a></p>";
                row1.Controls.Add (td2);
                HtmlTableCell td3 = new HtmlTableCell();
                td3.Attributes.Add("class", "pro-price text-center");
                td3.InnerHtml = $"JD <span id='price-{reader[4]}'>{reader[2]}</span>";
                row1.Controls.Add(td3);
                HtmlTableCell td4 = new HtmlTableCell();
                td4.Attributes.Add("class", "pro-qty text-center");
                HtmlGenericControl div1 = new HtmlGenericControl();
                div1.Attributes.Add("class", "qty-box");
                HyperLink minus = new HyperLink();
                minus.Attributes.Add("onclick", "decrement(this.id)");
                minus.Attributes.Add("id", $"minus-{reader[4]}");
                minus.Attributes.Add("class", "qtyminus button");
                HtmlGenericControl spanMinus = new HtmlGenericControl();
                spanMinus.InnerHtml += "<i class='fa fa-minus icon'></i>";
                minus.Controls.Add(spanMinus);
                div1.Controls.Add(minus);
                TextBox quantity = new TextBox();
                quantity.Attributes.Add("type", "number");
               
                //current quantity
                quantity.Attributes.Add("value", $"{reader[3]}");
                quantity.Attributes.Add("id", $"quantityBox-{reader[4]}");
                quantity.ID = $"quantityBox-{reader[4]}";
                quantity.TextChanged += (this.Changer);
                quantity.Attributes.Add("class", "qty-input");
                div1.Controls.Add(quantity);
                HyperLink plus = new HyperLink();
                plus.Attributes.Add("id", $"plus-{reader[4]}");
                plus.Attributes.Add("onclick", $"increment(this.id)");
                plus.Attributes.Add("class", "qtyplus button");
                HtmlGenericControl spanPlus = new HtmlGenericControl();
                spanPlus.InnerHtml += "<i class='fa fa-plus icon'></i>";
                plus.Controls.Add(spanPlus);
                div1.Controls.Add(plus);
                LinkButton close = new LinkButton();
                HtmlGenericControl spanClose = new HtmlGenericControl();
                spanClose.InnerHtml += "<i class='fa fa-xmark icon'></i>";
                close.ID = $"delete-{reader[4]}";
                close.Attributes.Add("class", "qty-remove ml-3");
              
                close.OnClientClick = $"return deleter(this.id)";
                CheckBox check = new CheckBox();
                check.CheckedChanged += new EventHandler(this.Deleter);
                check.ID = $"deleter-{reader[4]}";
                 check.Attributes.Add("style", "visibility:hidden");
                form1.Controls.Add(check);
               // close.Attributes.Add("onclick", "gg()");
                close.Controls.Add(spanClose);
                td4.Controls.Add(div1);
                td4.Controls.Add(close);
                row1.Controls.Add(td4);
                HtmlTableCell td5 = new HtmlTableCell();
                td5.Attributes.Add("class", "pro-total text-center");
                td5.InnerHtml = $"JD <span id='totalPrice-{reader[4]}' class='subtotal1'>{Convert.ToInt32(reader[2]) * Convert.ToInt32(reader[3])}</span>";
                row1.Controls.Add(td5);
                tableCheckout.Controls.Add(row1);
                //TableCell table
              
                    Label label = new Label();
                    label.ID = $"{reader[4]}-Label";
                label.Attributes.Add("style", "visibility:hidden");
                form1.Controls.Add(label);
             
              
              
                 
            }
            CONN.Close();

        }
        static string fdf = "add";
       protected void Deleter(object sender, EventArgs e)
        {
            CheckBox thisDeleter = (CheckBox)sender;
            int id = Convert.ToInt32( thisDeleter.ID.Split('-')[1]);
            CONN.Close();
            CONN.Open();
            SqlCommand cm = new SqlCommand($"delete from cart where cart_id = {id}", CONN);
            cm.ExecuteNonQuery();
            CONN.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        static string f = "";
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            CONN.Open();


            foreach (Label quantity in form1.Controls.OfType<Label>())
            {
                if(quantity.Text != "")
                {
                    string[] ids = quantity.ID.Split('-');

                    int cartId = Convert.ToInt32(ids[0].ToString());
                    int qty = Convert.ToInt32(quantity.Text);

                    SqlCommand cm = new SqlCommand($"update cart set product_quantity = {Convert.ToInt32(qty)} where cart_id = {cartId}", CONN);
                    cm.ExecuteNonQuery();
                }

            }



            CONN.Close();
            Response.Redirect("cart.aspx");



        }
      
        protected void Proceed_Click(object sender, EventArgs e)
        {

            CONN.Open();


            foreach (Label quantity in form1.Controls.OfType<Label>())
            {
                if (quantity.Text != "")
                {
                    string[] ids = quantity.ID.Split('-');

                    int cartId = Convert.ToInt32(ids[0].ToString());
                    int qty = Convert.ToInt32(quantity.Text);

                    SqlCommand cm = new SqlCommand($"update cart set product_quantity = {Convert.ToInt32(qty)} where cart_id = {cartId}", CONN);
                    cm.ExecuteNonQuery();
                   
                }

            }


            Response.Redirect("Payment.aspx");
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

        protected void CartButton_Click1(object sender, EventArgs e)
        {

            if (Session["ID"] != null)
            {


                int id = Convert.ToInt32(Request.QueryString["product_id"]);
                Session["productId"] = id;

                Response.Redirect($"cart.aspx");
            }
        }
        






    }



}
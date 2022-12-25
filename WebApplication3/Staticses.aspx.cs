using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Staticses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection connection = new SqlConnection("data source = DESKTOP-B9B8CS7; database = Project Database ; integrated security=SSPI");
            //connection.Open();
            //String Query = "select AVG(prodct_price),count(*),min(prodct_price) from product;";
            //SqlCommand comand = new SqlCommand(Query, connection);
           
            //SqlDataReader read = comand.ExecuteReader();
            //while (read.Read())
            //{
            //    //Label3.Text = read[0].ToString() + " JOD";
            //    //Label4.Text = read[1].ToString();
            //    //Label1.Text = read[2].ToString() + " JOD";
            //}
            //connection.Close();
            //SqlConnection conn = new SqlConnection("data source = DESKTOP-B9B8CS7; database = Project Database ; integrated security=SSPI");
            //conn.Open();
            //String secondquery= "select MAX(order_date)  from orders;";
            //SqlCommand secondcomand = new SqlCommand(secondquery, conn);
            //SqlDataReader reader = secondcomand.ExecuteReader();
            //while (reader.Read())
            //{
            //    Label5.Text = reader[0].ToString(); 
            //}
            //conn.Close();
            SqlConnection comn = new SqlConnection("data source = DESKTOP-B9B8CS7; database = Project Database ; integrated security=SSPI");
            comn.Open();
            String thireddquery = "select count(*) from users;";
            SqlCommand thiredomand = new SqlCommand(thireddquery, comn);
            SqlDataReader sdr= thiredomand.ExecuteReader();
            while (sdr.Read())
            {
                Label2.Text = sdr[0].ToString();
            }
            comn.Close();

            SqlConnection connec = new SqlConnection("data source = DESKTOP-B9B8CS7; database = Project Database ; integrated security=SSPI");
            connec.Open();
            String fouredddquery = "select count(*) from order_product;";
            SqlCommand fouredcommand = new SqlCommand(fouredddquery, connec);
            SqlDataReader alsoreader = fouredcommand.ExecuteReader();
            while (alsoreader.Read())
            {
                Label6.Text = alsoreader[0].ToString();
            }
            connec.Close();

            SqlConnection communication = new SqlConnection("data source = DESKTOP-B9B8CS7; database = Project Database ; integrated security=SSPI");
            communication.Open();
            String fivedddquery = "select count(*) from category;";
            SqlCommand fivedcommand = new SqlCommand(fivedddquery, communication);
            SqlDataReader anotherreader = fivedcommand.ExecuteReader();
            while (anotherreader.Read())
            {
                Label7.Text = anotherreader[0].ToString();
            }
            int count = 0;
            SqlConnection salesconec = new SqlConnection("data source = DESKTOP-B9B8CS7; database = Project Database ; integrated security=SSPI");
            salesconec.Open();
            String salesquery= "select avg(prodct_price)*count(O.product_id) from order_product as O\r\njoin product AS p on O.product_id=p.product_id group by O.product_id;";
            SqlCommand salescommand = new SqlCommand(salesquery, salesconec);
            SqlDataReader salesreader = salescommand.ExecuteReader();
            while (salesreader.Read())
            {
                count += Convert.ToInt32(salesreader[0]);
            }
            Label8.Text = count.ToString() + " JOD";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
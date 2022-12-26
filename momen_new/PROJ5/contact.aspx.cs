using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJ5
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SendBtn_Click(object sender, EventArgs e)
        {

                SqlConnection connection = new SqlConnection("data source=DESKTOP-B9B8CS7;database=LIBRARYBOOKS;Integrated security=SSPI");
                connection.Open();
                string fname = fullname.Text; 
                string[] fullnam=fname.Split(' ');  
                string sql = "insert into contacus (fname,lname,sub,phone,detail) values(@value1, @value2, @value3, @value4, @value5)";

                SqlCommand command = new SqlCommand(sql, connection);
            string lname = fullnam[1] + " " + fullnam[2];
                    command.Parameters.AddWithValue("@value1", fullnam[0]);
                    command.Parameters.AddWithValue("@value2", lname);
                    command.Parameters.AddWithValue("@value3", subject.Text);
                    command.Parameters.AddWithValue("@value4", phone.Text);
                    command.Parameters.AddWithValue("@value5", msg.Text);
                    
            command.ExecuteNonQuery();
                
                connection.Close();

          string y= "<script>alert('thank you for contacting us.')</script>";
            Response.Write(y);  

        }



    
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJ5
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string mass =
                    "<section style=\"background-color: #eee;\">" +
                    "<div class=\"container py-5\">" +
                    "<div class=\"row\"> <div class=\"col-md-6 col-lg-5 col-xl-4 mb-4 mb-md-0\">" +
                    "<h5 class=\"font-weight-bold mb-3 text-center text-lg-start\">Member</h5>" +
                    "<div class=\"card\">\r\n<div class=\"card-body\"><ul class=\"list-unstyled mb-0\">";

                SqlConnection connection = new SqlConnection("data source=DESKTOP-B9B8CS7;database=LIBRARYBOOKS;Integrated security=SSPI");
                connection.Open();
                string query = "select * from contacus;";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader reader = command.ExecuteReader();
                
                while (reader.Read())
                {
                    mass += $"<li class=\"p-2 border-bottom\"><div class=\"d-flex flex-row\"><img src = \"https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-1.webp\" alt=\"avatar\" class=\"rounded-circle d-flex align-self-center me-3 shadow-1-strong\" width=\"60\">"
                              + $"<div class=\"pt-1\"><p class=\"fw-bold mb-0\">{reader[1]}+  {reader[2]}</p><p class=\"small text-muted\">{reader[3]}</p><p class=\"small text-muted\">{reader[5]}</p></div></div></a></li>";

                }
                mass += "</ul></div></div></div></div></section>";
                Response.Write(mass);
            }
        }
    }
}
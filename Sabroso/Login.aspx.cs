using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("New Account.aspx"); // Redirect to the desired page
        }
        protected void ForgetPasswordLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forget Password.aspx"); // Redirect to the forget password page
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";
            string ema = email.Text;
            string pass=password.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "select count(*) from Newacc Where email=@email AND pass=@pass";
                using (SqlCommand command= new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@email", ema);
                    command.Parameters.AddWithValue("@pass", pass);
                    int count=(int)command.ExecuteScalar();
                    if (count > 0)
                    {
                        Response.Redirect("Landingpage.aspx");

                    }
                    else
                    {
                        lblMessage.Text = "Invalid email or password!";
                    }
                }   

            }
        }

    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class Adminadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (imageup.HasFile)
            {
                try
                {
                    // Get the file name
                    string fileName = Path.GetFileName(imageup.FileName);
                    // Get the file extension
                    string fileExtension = Path.GetExtension(fileName);
                    // Create a byte array to store the file contents
                    byte[] fileBytes = imageup.FileBytes;
                    // Now you can save only the fileName to your database along with other product details
                    string productName = TextBox3.Text;
                    float productPrice = float.Parse(TextBox4.Text);
                    // Assuming you have a method to add the product to your database
                    string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        // Define your SQL query with parameters
                        string query = "INSERT INTO Products (pname, pimage, pprice, ImageData) VALUES (@pname, @pimage, @pprice, @ImageData)";

                        // Create a command object
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Add parameters to the command
                            command.Parameters.AddWithValue("@pname", productName);
                            command.Parameters.AddWithValue("@pimage", fileName);
                            command.Parameters.AddWithValue("@pprice", productPrice);
                            command.Parameters.AddWithValue("@ImageData", fileBytes);

                            // Open the connection
                            connection.Open();

                            // Execute the command
                            command.ExecuteNonQuery();
                        }
                    }
                    Label5.Text = "Product added successfully!";
                }
                catch (Exception ex)
                {
                    Label5.Text = "Please select an image to upload.";
                }
            }
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        protected void Choice_click(object sender, EventArgs e)
        {
            Response.Redirect("Choice.aspx");
        }

    }
}
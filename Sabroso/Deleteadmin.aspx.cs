using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;

namespace Sabroso
{
    public partial class Deleteadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }
        private void BindGridView()
        {
            try
            {
                // Define your connection string
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

                // Define your SQL query to fetch all products
                string query = "SELECT Id, pname, pimage, pprice, ImageData FROM Products";

                // Create a connection object
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Create a command object
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Open the connection
                        connection.Open();

                        // Create a DataAdapter and DataSet to fetch the data
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataSet dataSet = new DataSet();

                        // Fill the DataSet with data from the DataAdapter
                        adapter.Fill(dataSet);

                        // Bind the GridView with the DataSet
                        GridView1.DataSource = dataSet;
                        GridView1.DataBind();

                        // Iterate through each row in the GridView to set the image data
                        foreach (GridViewRow row in GridView1.Rows)
                        {
                            // Retrieve product image data and name from the DataSet
                            byte[] imageData = (byte[])dataSet.Tables[0].Rows[row.RowIndex]["ImageData"];
                            string imageName = dataSet.Tables[0].Rows[row.RowIndex]["pimage"].ToString();

                            // Convert byte array to base64 string
                            string base64String = Convert.ToBase64String(imageData);

                            // Find the Image control in the current row
                            Image img = (Image)row.FindControl("Image1");

                            // Set the image source using the base64 string
                            img.ImageUrl = $"data:image/{GetImageExtension(imageName)};base64,{base64String}";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                // You may display an error message or log the exception
            }
        }

        private string GetImageExtension(string fileName)
        {
            string extension = Path.GetExtension(fileName).ToLower();
            switch (extension)
            {
                case ".jpg":
                case ".jpeg":
                    return "jpeg";
                case ".png":
                    return "png";
                default:
                    return "jpeg"; // Default to jpeg if extension is not recognized
            }
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            // Get the button that raised the event
            Button button = (Button)sender;

            // Get the command argument, which should be the product ID
            string productId = button.CommandArgument.ToString();

            // Call a method to delete the product with the specified ID from the database
            DeleteProduct(productId);

            // Rebind the GridView to reflect the changes
            BindGridView();
        }

        private void DeleteProduct(string productId)
        {
            try
            {
                // Define your connection string
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

                // Define your SQL query to delete the product
                string query = "DELETE FROM Products WHERE Id = @ProductId";

                // Create a connection object
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Create a command object
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the command
                        command.Parameters.AddWithValue("@ProductId", productId);

                        // Open the connection
                        connection.Open();

                        // Execute the command
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                // You may display an error message or log the exception
            }
        }
        protected void Choice_click2(object sender, EventArgs e)
        {
            Response.Redirect("Choice.aspx");
        }


    }
}
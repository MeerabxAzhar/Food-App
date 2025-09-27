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
using System.Web.UI.WebControls.WebParts;
using static Sabroso.Adminupdate;

namespace Sabroso
{
    public partial class Adminupdate : System.Web.UI.Page
    {
        public class Product
        {
            
            public int Id { get; set; }
            public string Name { get; set; }
            public float Price { get; set; }
            public string ImageName { get; set; }
            public byte[] ImageData { get; set; }
        }
        public Product Getprodbyid(int id)
        {
            Product p = new Product();
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True");
            string query = "SELECT pname, pprice, pimage, ImageData FROM Products WHERE Id = @Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Id", id);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            while (reader.Read())
            {

                p.Id = id;
                p.Name = reader.GetString(0); // Use the ordinal index of the column
                p.Price = (float)reader.GetDouble(1); // Use the ordinal index of the column
                p.ImageData = (byte[])reader["ImageData"];
            }
            return p;
        }

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
            if (fileName != null)
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
            else
            {
                // Handle the case when fileName is null (e.g., return a default extension)
                return "jpeg"; // Default to jpeg if fileName is null
            }
        }




        protected void EditButton_Click(object sender, EventArgs e)
        {
            // Get the button that raised the event
            Button editButton = (Button)sender;

            // Get the GridViewRow that contains the clicked button
            GridViewRow row = (GridViewRow)editButton.NamingContainer;

            // Get the ID from the DataKeys collection of the GridView for the clicked row
            string productIdString = GridView1.DataKeys[row.RowIndex].Values["Id"].ToString();

            // Convert the product ID from string to int
            if (int.TryParse(productIdString, out int productId))
            {
                // Store the product ID in a session
                Session["ProductId"] = productId;

                // Retrieve the product ID from the session
                int storedProductId = (int)Session["ProductId"];

                // Retrieve the product using the stored product ID
                Product product = Getprodbyid(storedProductId);

                if (product != null)
                {
                    prodname.Text = product.Name;
                    prodprice.Text = product.Price.ToString();
                    Image2.ImageUrl = $"data:image/{GetImageExtension(product.ImageName)};base64,{Convert.ToBase64String(product.ImageData)}";
                }
            }
            else
            {
                // Handle the case where the conversion fails
                // Maybe show an error message or handle it in some other way
            }
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get the selected product ID

           
            
                int storedProductId = (int)Session["ProductId"];

                // Now you have the product ID, you can use it as needed
                // For example:
                Product product = Getprodbyid(storedProductId);
            


            // Get the product name and price from the textboxes
            string productName = prodname.Text;
            float productPrice = float.Parse(prodprice.Text);

            // Get the filename of the uploaded image
            string fileName = Path.GetFileName(FileUpload1.FileName);

            // Check if a new file is uploaded
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = Path.GetExtension(fileName);

                // Create a byte array to store the file contents
                byte[] imageData = FileUpload1.FileBytes;

                // Update the corresponding product record in the database with the new values



                UpdateProduct(storedProductId, productName, productPrice, fileName, imageData);
            }
            else
            {
                // No new file uploaded, keep the existing image data in the database
                byte[] existingImageData = Getprodbyid(storedProductId).ImageData;
               
                
                UpdateProduct(storedProductId, productName, productPrice, fileName, existingImageData);
            }

            // Refresh the GridView to reflect the updated data
            
            BindGridView();
        }




        private void UpdateProduct(int productId, string productName, float productPrice, string imageName, byte[] imageData)
        {
            try
            {
                // Define your connection string
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

                // Define your SQL query to update the product details
                string query = "UPDATE Products SET pname = @ProductName, pprice = @ProductPrice, pimage = @ProductImage, ImageData = @ImageData WHERE Id = @ProductId";

                // Create a connection object
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Create a command object
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the command
                        command.Parameters.AddWithValue("@ProductName", productName);
                        command.Parameters.AddWithValue("@ProductPrice", productPrice);
                        command.Parameters.AddWithValue("@ProductImage", imageName);
                        command.Parameters.AddWithValue("@ImageData", imageData);
                        command.Parameters.AddWithValue("@ProductId", productId);

                        // Open the connection
                        connection.Open();

                        // Execute the command
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if any rows were affected
                        if (rowsAffected > 0)
                        {
                            Label1.Text = "Products updated successfully";
                        }
                        else
                        {
                            Label1.Text = "No products were updated";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                Label1.Text = "An error occurred while updating products: " + ex.Message;
            }
        }
        protected void Choice_click1(object sender, EventArgs e)
        {
            Response.Redirect("Choice.aspx");
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            // Clear text of textboxes
            prodname.Text = "";
            prodprice.Text = "";

            // Clear image
            Image2.ImageUrl = "";

            // Clear session
            Session.Remove("ProductId");
        }
    }
}

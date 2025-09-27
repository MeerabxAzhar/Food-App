using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class Landingpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
               
                DisplayAllProducts();
           
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx");

        }


        private void DisplayAllProducts()
        {
            try
               
            {
                Class2 class2 = new Class2();
                // Define your connection string
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

                // Define your SQL query to fetch all products
                string query = "SELECT pname, pimage, pprice, ImageData FROM Products";

                // Create a connection object
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Create a command object
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Open the connection
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            // Create a container div to hold all products
                            Panel productsContainer = new Panel();
                            productsContainer.CssClass = "products-container";

                            while (reader.Read())
                            {
                                // Retrieve product details from the reader
                                string productName = reader["pname"].ToString();
                                string imageName = reader["pimage"].ToString();
                                float price = float.Parse(reader["pprice"].ToString());
                                byte[] imageData = (byte[])reader["ImageData"];
                                int amount = 1;
                                // Convert byte array to base64 string
                                string base64String = Convert.ToBase64String(imageData);

                                // Create a new <img> tag
                                HtmlImage img = new HtmlImage();
                                img.Src = $"data:image/{GetImageExtension(imageName)};base64,{base64String}";
                                img.Alt = productName;

                                // Create a container div for each product
                                Panel productContainer = new Panel();
                                productContainer.CssClass = "product-container";

                                // Add the product image to the product container
                                productContainer.Controls.Add(img);

                                // Create a div for product details
                                HtmlGenericControl detailsDiv = new HtmlGenericControl("div");
                                detailsDiv.Attributes["class"] = "product-details";

                                // Add product name to details div
                                Label productNameLabel = new Label();
                                productNameLabel.CssClass = "product-name";
                                productNameLabel.Text = productName;
                                detailsDiv.Controls.Add(productNameLabel);

                                // Add product price to details div
                                Label productPriceLabel = new Label();
                                productPriceLabel.CssClass = "product-price";
                                productPriceLabel.Text = "RS." + price.ToString("0.00");
                                detailsDiv.Controls.Add(productPriceLabel);

                                // Add add to cart button to details div
                                Button addButton = new Button();
                                addButton.CssClass = "add-to-cart-button";
                                addButton.Text = "Add to Cart";
                                addButton.Click += (sender, e) =>
                                {
                                    class2.AddtoCart(productName, price, amount);
                                };
                                detailsDiv.Controls.Add(addButton);

                                // Add details div to product container
                                productContainer.Controls.Add(detailsDiv);

                                // Add the product container to the products container
                                productsContainer.Controls.Add(productContainer);
                            }

                            // Add the products container to the imageGallery
                            imageGallery.Controls.Add(productsContainer);




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

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Choice.aspx");
        }
    }
}

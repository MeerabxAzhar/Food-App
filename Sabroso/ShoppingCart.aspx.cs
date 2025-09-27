using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class ShoppingCart : System.Web.UI.Page
    {


        protected void Button1_Click(object sender, EventArgs e)
        {
            float tt = float.Parse(Label5.Text);
            
            if (tt!=0) {
                Response.Redirect("Checkout.aspx");
            }
            else
            {
                Label6.Text = "You can't proceed to checkout without any products in your cart!";
            }
        }

        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

            BindCart();
        }
        private void BindCart()
        {
            Class2 class2 = new Class2();
            Cart.DataSource = class2.GetProd();
            Cart.DataBind();
            float grand = class2.CalculateGrandTotal();
            Label5.Text = grand.ToString();
        }
        public void Plus_Click(object sender, EventArgs e)
        {
            Button btnPlus = (Button)sender;
            int rowIndex = Convert.ToInt32(btnPlus.CommandArgument);

            // Get the Id of the product from the row
            int productId = Convert.ToInt32(Cart.DataKeys[rowIndex].Value);
            Class2 class2 = new Class2();

            // Update the quantity in the database
            class2.UpdateQuantity(productId, 1);

            // Re-bind the cart after updating quantity
            BindCart();
        }

        public void Minus_Click(object sender, EventArgs e)
        {
            Button btnMinus = (Button)sender;
            int rowIndex = Convert.ToInt32(btnMinus.CommandArgument);

            // Get the Id of the product from the row
            int productId = Convert.ToInt32(Cart.DataKeys[rowIndex].Value);
            Class2 class2 = new Class2();

            // Check if the quantity is already 1
            if (class2.GetQuantity(productId) == 1)
            {
                // If quantity is 1, delete the product from the cart
                class2.DeleteProduct(productId);
            }
            else
            {
                // If quantity is greater than 1, update the quantity in the database
                class2.UpdateQuantity(productId, -1);
            }

            // Re-bind the cart after updating quantity or deleting the product
            BindCart();
        }





        protected void Cart_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow name = Cart.SelectedRow;

        }

        
    }
}

    

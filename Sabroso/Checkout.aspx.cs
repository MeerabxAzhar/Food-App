using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Class2 class2 = new Class2();
            float Grand = class2.CalculateGrandTotal();
            Subtotal.Text = Grand.ToString("");

            float shippingAmount = float.Parse(ShippingPrice.Text);
            float finalTotal = Grand + shippingAmount;
            TotalPrice.Text = finalTotal.ToString("");

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TPhoneNum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void porder_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(email.Text) &&  string.IsNullOrEmpty(fir.Text) &&
      string.IsNullOrEmpty(ad.Text) && string.IsNullOrEmpty(coun.SelectedValue) &&
      string.IsNullOrEmpty(city.SelectedValue) && string.IsNullOrEmpty(TPhoneNum.Text) &&
      string.IsNullOrEmpty(deliverycode.SelectedValue))
            {

                Label1.Text = "Please fill in all the required fields.";
            }
            else { 
            Class2 class2 = new Class2();
            string ema = email.Text;

            string fn = fir.Text;
            string ads = ad.Text;
            string cou = coun.SelectedItem.Text;

            string cit = city.SelectedItem.Text;
            string phon = TPhoneNum.Text;
            string pay = deliverycode.SelectedItem.Text;
            float tota = float.Parse(TotalPrice.Text);

            class2.Checkoutt(ema, fn, ads, cou, cit, phon, pay, tota);
            class2.DeleteCartItems();
            Response.Redirect("Orderplacedsuccess.aspx");
        } }

    }
    }
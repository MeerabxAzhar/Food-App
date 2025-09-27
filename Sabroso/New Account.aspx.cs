using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class New_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Class2 class2 = new Class2();
            string ema = email.Text;
            string passwo = pass.Text;
            string fn = first.Text;
            string ln = last.Text;
            string cou = coun.SelectedItem.Text;
            string ads = adds.Text;
            string cit = city.Text;
          
            class2.Newaccount(ema, passwo, fn, ln, ads, cou,  cit);
          //  if()
            Response.Redirect("Login.aspx");
        }
    }
}
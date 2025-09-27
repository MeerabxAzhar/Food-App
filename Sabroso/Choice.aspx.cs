using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class Choice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminadd.aspx");
        }

        protected void UpdateProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminupdate.aspx");
        }

        protected void DeleteProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deleteadmin.aspx");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Landingpage.aspx");
        }
    }
}
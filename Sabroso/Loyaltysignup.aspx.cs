using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.IO.Compression;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public partial class Loyaltysignup : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Class2 class2= new Class2();
        string ema = email.Text;
        string passwo = password.Text;
        string fn = fir.Text;
        string ln = las.Text;
        string cou = coun.SelectedItem.Text;
        string stat = state.Text;
        string cit = city.Text;
        string phon = phone.Text;
        int zi = int.Parse(zip.Text);
            string cni=cnic.Text;
            class2.Loyaltysignupcreate(ema, passwo, fn, ln, cou, stat, cit, phon, zi, cni);
            Response.Redirect("Loyaltyconfirm.aspx");
        }
    }
}
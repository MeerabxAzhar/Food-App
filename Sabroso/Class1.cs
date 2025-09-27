using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI.WebControls.WebParts;

namespace Sabroso
{
    public class Class1
    {
        public void Createacc(string em, string pass, string fn, string ln, string ad, string coun, string state, string cit, int phon, int zip)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-8BL3MIG;Initial Catalog=Levitating;Integrated Security=True;Pooling=False;Encrypt=True;Trust Server Certificate=True");
            string query = "insert into Login values('" + em + "', '" + pass + "','" + fn + "', '" + ln + "','" + ad+ "','" + coun + "', '" + state + "','" + cit + "','" + phon + "','" + zip + "')";
            con.Open();
            SqlCommand cmd=new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
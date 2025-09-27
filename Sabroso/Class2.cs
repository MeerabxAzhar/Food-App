using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Sabroso
{
    public class Class2
    {
        public void Loyaltysignupcreate(string em, string pass, string fn, string ln, string count, string state, string cit,  string pho, int zip, string cnic ) {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True");
            string query = "insert into Login values('" + em + "', '" + pass + "','" + fn + "','" + ln + "', '" + count + "','" + state + "','" + cit + "','" + pho + "','" + zip + "','" + cnic + "')";
        con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Checkoutt(string em, string fuln, string add, string sc, string scit, string phon, string payop, float tot)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True");
            string query = "insert into Checkout values('" + em + "', '" + fuln + "','" + add + "','" + sc + "', '" + scit + "','" + phon + "','" + payop + "', '"+tot+"')";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Newaccount(string em, string pass, string fn, string ln, string ad, string coun, string cit)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True");
            string query = "insert into Newacc values('" + em + "', '" + pass + "','" + fn + "','" + ln + "', '" + ad + "','" + coun + "','" + cit + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
       
        public void Addprod(string pname,string imag, float pri)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True");
            string query = "insert into Products values('" + pname + "', '" + imag + "','" + pri + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public DataSet GetProd()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True");
            string query = "select * from Cart";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds=new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        public void DeleteCartItems()
        {
            // SQL query to delete all rows from the Cart table
            string query = "DELETE FROM Cart";

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True"))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                command.ExecuteNonQuery();
            }

        }
        public void AddtoCart(string productName, float productPrice, int am)
        {
            try
            {
                // Define your connection string
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

                // Define your SQL query to check if the product already exists in the cart
                string checkQuery = "SELECT COUNT(*) FROM Cart WHERE prodn = @prodn";

                // Define your SQL query to insert product into cart
                string insertQuery = "INSERT INTO Cart (prodn, prodp, proda) VALUES (@prodn, @prodp, @proda)";

                // Create a connection object
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Create a command object to check if the product already exists
                    using (SqlCommand checkCommand = new SqlCommand(checkQuery, connection))
                    {
                        // Add parameter to the command
                        checkCommand.Parameters.AddWithValue("@prodn", productName);

                        // Open the connection
                        connection.Open();

                        int count = (int)checkCommand.ExecuteScalar();

                      
                        if (count > 0)
                        {
                        }
                        else
                        {
                            using (SqlCommand insertCommand = new SqlCommand(insertQuery, connection))
                            {
                                // Add parameters to the command
                                insertCommand.Parameters.AddWithValue("@prodn", productName);
                                insertCommand.Parameters.AddWithValue("@prodp", productPrice);
                                insertCommand.Parameters.AddWithValue("@proda", am);

                                insertCommand.ExecuteNonQuery();

                            }
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
        public void DeleteProduct(int productId)
        {
            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True"))
            {
                string query = "DELETE FROM Cart WHERE Id = @Id";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Id", productId);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        public int GetQuantity(int productId)
        {
            int quantity = 0;

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True"))
            {
                string query = "SELECT proda FROM Cart WHERE Id = @Id";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Id", productId);

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            quantity = Convert.ToInt32(reader["proda"]);
                        }
                    }
                }
            }

            return quantity;
        }

        public float CalculateGrandTotal()
        {
            float grandTotal = 0;

            // SQL query to retrieve product price and quantity from the Cart table
            string query = "SELECT prodp, proda FROM Cart";

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True"))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                // Iterate through the results and calculate total price for each product
                while (reader.Read())
                {
                    float productPrice = float.Parse(reader["prodp"].ToString());
                    int productQuantity = int.Parse(reader["proda"].ToString());
                    float totalPrice = productPrice * productQuantity;
                    grandTotal += totalPrice;
                }

                reader.Close();
            }

            
            return grandTotal;

        }


        public void UpdateQuantity(int productId, int change)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\PMLS\\source\\repos\\Sabroso\\Sabroso\\App_Data\\Levitatingdb.mdf;Integrated Security=True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "UPDATE Cart SET proda = proda + @change WHERE Id = @productId AND (proda + @change) >= 1";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@change", change);
                        command.Parameters.AddWithValue("@productId", productId);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                        // Log the number of rows affected (for debugging)
                        Console.WriteLine("Rows affected: " + rowsAffected);
                    }
                }
            }
            catch (Exception ex)
            {
                // Log any exceptions that occur
                Console.WriteLine("Exception: " + ex.Message);
            }
        }


    }
}
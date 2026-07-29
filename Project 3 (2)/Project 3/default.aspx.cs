using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_3
{
    public partial class _default : System.Web.UI.Page
    {
        String conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\StoreDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogIN_Click(object sender, EventArgs e)
        {
            lblMessageConfirmation0.Text = "";

            HttpCookie _userCookie = new HttpCookie("UserInfo");

            _userCookie["Username"] = txtLoginUName.Text;

            Response.Cookies.Add(_userCookie);
            _userCookie.Expires = DateTime.Now.AddDays(30);

            string passwordDB = "";
            string role;
            string hashPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtLoginPassword.Text, "SHA256");

            SqlConnection conn = new SqlConnection(conStr);
            
            conn.Open();

            string sql = "SELECT * FROM Users WHERE Username = @name";

            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@name", txtLoginUName.Text.Trim());
            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read())//here
            {
                passwordDB = reader.GetValue(2).ToString();
            }
           
            reader.Close();
            lblMessageConfirmation0.Text = "Login Password: " + hashPassword;
           lblMessageConfirmation.Text = "Password Database: " + passwordDB;

            if (hashPassword.CompareTo(passwordDB) == 0)
            {
                string sql1 = "SELECT Role FROM Users WHERE Username = @username";

                SqlCommand cmd1 = new SqlCommand(sql1, conn);
               cmd1.Parameters.AddWithValue("@username", txtLoginUName.Text.Trim());
                SqlDataReader reader1 = cmd1.ExecuteReader();
                if(reader1.Read())
                {
                    role = reader1.GetValue(0).ToString();

                    //lblMessageConfirmation.Text = role;
                    if (role == "Buyer")
                    {
                        Response.Redirect("Storefront.aspx");
                    }
                    else
                    {
                        Response.Redirect("SellerDashboard.aspx");
                    }
                }

                conn.Close();

            }
            else
            {
                lblMessageConfirmation0.Text = "Login Password: " + hashPassword;//"Invalid username or password. Please try again.";
                lblMessageConfirmation.Text = "Password Database: " + passwordDB;
            }
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string role;

            if (rdoBuyer.Checked || rdoSeller.Checked)
            {
                lblRole0.Visible = false;

                if(rdoBuyer.Checked)
                {
                    role = "Buyer";
                }
                else
                {
                    role = "Seller";
                }

                
                using (SqlConnection conn = new SqlConnection(conStr))
                {
                    conn.Open();

                    string hashPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtRegPassword.Text, "SHA256");

                    string sql = "INSERT INTO Users (Username, Password, Role) VALUES (@username, @password, @role)";
                    using (SqlCommand comm = new SqlCommand(sql, conn))
                    {
                        comm.Parameters.AddWithValue("@username", txtRegUName.Text);
                        comm.Parameters.AddWithValue("@password", hashPassword);
                        comm.Parameters.AddWithValue("@role", role);
                        comm.ExecuteNonQuery();
                    }
                }

               lblMessageConfirmation.Text = "Registration successful! Please log in.";

            }
            else
            {
                lblRole0.Visible = true;
            }
        }
    }
}
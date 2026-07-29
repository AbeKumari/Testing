using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_3
{
    public partial class SellerDashboard : System.Web.UI.Page
    {
        String conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\StoreDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie _retreivedUserCookie = Request.Cookies["UserInfo"];

            if(_retreivedUserCookie != null)
            {
                lblWelcome.Text = "Welcome, " + _retreivedUserCookie["Username"];
            }
           
            if(!Page.IsPostBack)
            {
                using(SqlConnection conn = new SqlConnection(conStr))
                {
                    conn.Open();

                    String sql = "SELECT * FROM Products";
                    SqlCommand comm = new SqlCommand(sql, conn);
                    SqlDataAdapter adap = new SqlDataAdapter();
                    DataSet ds = new DataSet();

                    adap.SelectCommand = comm;
                    adap.Fill(ds, "Products");

                    gvDisplayProducts.DataSource = ds;
                    gvDisplayProducts.DataBind();

                    SqlDataReader reader = comm.ExecuteReader();
                    while(reader.Read())
                    {
                        ddlCategory.Items.Add(reader.GetValue(2).ToString());
                        ddlProductID.Items.Add(reader.GetValue(0).ToString());
                    }
                }

            }

        }

        protected void ddlProductID_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(conStr))
            {
                conn.Open();

                String sql = "SELECT * FROM Products WHERE ProductID = @ID";
                SqlCommand comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@ID", ddlProductID.SelectedItem.Text);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                   
                    txtProductName.Text = reader.GetValue(1).ToString();
                    txtDetails.Text = reader.GetValue(3).ToString();
                    txtUnitPrice.Text = reader.GetValue(4).ToString();
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(conStr))
            {
                conn.Open();

                string sql = "INSERT INTO Products (ProductName, Category, Description, UnitPrice) VALUES (@name, @description, @category, @price)";
                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    comm.Parameters.AddWithValue("@name", txtProductName.Text);
                    comm.Parameters.AddWithValue("@description", txtDetails.Text);
                    comm.Parameters.AddWithValue("@category", ddlCategory.SelectedItem.Text);
                    comm.Parameters.AddWithValue("@price", txtUnitPrice.Text);
                    comm.ExecuteNonQuery();
                }

                String sql2 = "SELECT * FROM Products";
                SqlCommand comm2 = new SqlCommand(sql2, conn);
                SqlDataAdapter adap = new SqlDataAdapter();
                DataSet ds = new DataSet();

                adap.SelectCommand = comm2;
                adap.Fill(ds, "Products");

                gvDisplayProducts.DataSource = ds;
                gvDisplayProducts.DataBind();

                SqlDataReader reader = comm2.ExecuteReader();
                while (reader.Read())
                {
                    ddlCategory.Items.Add(reader.GetValue(2).ToString());
                    ddlProductID.Items.Add(reader.GetValue(0).ToString());
                }

                ddlCategory.SelectedIndex = 0;
                ddlProductID.SelectedIndex = 0;
                txtProductName.Text = "";
                txtUnitPrice.Text = "";
                txtDetails.Text = "";

                conn.Close();
            }

        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(conStr))
            {
                conn.Open();

                string sql = "DELETE FROM Products WHERE ProductID = @ID";

                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    comm.Parameters.AddWithValue("@ID", ddlProductID.SelectedItem.Text);
                    comm.ExecuteNonQuery();
                }

                String sql2 = "SELECT * FROM Products";
                SqlCommand comm2 = new SqlCommand(sql2, conn);
                SqlDataAdapter adap = new SqlDataAdapter();
                DataSet ds = new DataSet();

                adap.SelectCommand = comm2;
                adap.Fill(ds, "Products");

                gvDisplayProducts.DataSource = ds;
                gvDisplayProducts.DataBind();

                SqlDataReader reader = comm2.ExecuteReader();
                while (reader.Read())
                {
                    ddlCategory.Items.Add(reader.GetValue(2).ToString());
                    ddlProductID.Items.Add(reader.GetValue(0).ToString());
                }

                ddlCategory.SelectedIndex = 0;
                ddlProductID.SelectedIndex = 0;
                txtProductName.Text = "";
                txtUnitPrice.Text = "";
                txtDetails.Text = "";

                conn.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(conStr))
            {
                conn.Open();

                string sql = "UPDATE Products SET ProductName = @productName, Category = @category, Description = @description, UnitPrice = @price WHERE ProductID = @productID";
                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    comm.Parameters.AddWithValue("@productName", txtProductName.Text);
                    comm.Parameters.AddWithValue("@description", txtDetails.Text);
                    comm.Parameters.AddWithValue("@category", ddlCategory.SelectedItem.Text);
                    comm.Parameters.AddWithValue("@price", txtUnitPrice.Text);
                    comm.Parameters.AddWithValue("@productID", ddlProductID.SelectedItem.Text);
                    comm.ExecuteNonQuery();
                }

                String sql2 = "SELECT * FROM Products";
                SqlCommand comm2 = new SqlCommand(sql2, conn);
                SqlDataAdapter adap = new SqlDataAdapter();
                DataSet ds = new DataSet();

                adap.SelectCommand = comm2;
                adap.Fill(ds, "Products");

                gvDisplayProducts.DataSource = ds;
                gvDisplayProducts.DataBind();

                ddlCategory.SelectedIndex = 0;
                ddlProductID.SelectedIndex = 0;
                txtProductName.Text = "";
                txtUnitPrice.Text = "";
                txtDetails.Text = "";

                conn.Close();

            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}
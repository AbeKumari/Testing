using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_3
{
    public partial class Storefront : System.Web.UI.Page
    {
        String conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\StoreDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                using (SqlConnection conn = new SqlConnection(conStr))
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
                    while (reader.Read())
                    {
                        ddlCategory.Items.Add(reader.GetValue(2).ToString());
                    }
                }

            }
        }

        

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(conStr))
            {
                conn.Open();

                String sql = "SELECT * FROM Products WHERE ProductName LIKE @name";
                SqlCommand comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@name", "%" + txtSearch.Text.Trim() + "%");

                SqlDataAdapter adap = new SqlDataAdapter();
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds, "Products");

                gvDisplayProducts.DataSource = ds;
                gvDisplayProducts.DataBind();
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(conStr))
            {
                conn.Open();

                String sql = "SELECT * FROM Products WHERE Category = @category";
                SqlCommand comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@category", ddlCategory.SelectedItem.Text);

                SqlDataAdapter adap = new SqlDataAdapter();
                DataSet ds = new DataSet();

                adap.SelectCommand = comm;
                adap.Fill(ds, "Products");

                gvDisplayProducts.DataSource = ds;
                gvDisplayProducts.DataBind();
            }
        }
    }
}
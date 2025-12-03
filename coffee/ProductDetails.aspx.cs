using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coffee
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["coffee"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = null;
            SqlDataAdapter adapter = null;

            try
            {
                conn.Open();
                string query = "SELECT ProductID,Name,Description,Price,Availability, LaunchDate, CoffeeType, ImageUrl FROM Products";
                cmd = new SqlCommand(query, conn);
                adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Error loading products: " + ex.Message + "');</script>");
            }
            finally
            {
                if (adapter != null)
                    adapter.Dispose();
                if (cmd != null)
                    cmd.Dispose();
                if(conn != null)
                {
                    conn.Close();
                    conn.Dispose();
                }
            }
               
        }
    }
}
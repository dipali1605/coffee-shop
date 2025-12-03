using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
namespace coffee {
    public partial class ADDPRODUCTS : System.Web.UI.Page {
       protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["coffee"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = null;
            try
            {
                conn.Open();
                string query = @"INSERT INTO Products (ProductID, Name, Description, Price, Availability, LaunchDate, CoffeeType, ImageUrl) 
                               VALUES (@ProductID, @Name, @Description, @Price, @Availability, @LaunchDate, @CoffeeType, @ImageUrl)";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@ProductID", int.Parse(txtProductID.Text));
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDesc.Text);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
                cmd.Parameters.AddWithValue("@Availability", rbAvailability.SelectedValue);
                cmd.Parameters.AddWithValue("@LaunchDate", Convert.ToDateTime(txtDate.Text));
                cmd.Parameters.AddWithValue("@CoffeeType", ddlType.SelectedValue);
                cmd.Parameters.AddWithValue("@ImageUrl", txtImageUrl.Text);
                cmd.ExecuteNonQuery();
                ClearForm();
                Response.Write("<script>alert('Coffee added successfully!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                if (cmd != null)
                    cmd.Dispose();
                if (conn != null)
                {
                    conn.Close();
                    conn.Dispose();
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e) {
            string connectionString = ConfigurationManager.ConnectionStrings["coffee"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = null;
            try
            {
                conn.Open();
                string query = @"UPDATE Products SET Name = @Name, Description = @Description, Price = @Price, Availability = @Availability, LaunchDate = @LaunchDate, CoffeeType = @CoffeeType,ImageUrl = @ImageUrl  WHERE ProductID = @ProductID";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@ProductID", Convert.ToInt32(txtProductID.Text));
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDesc.Text);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
                cmd.Parameters.AddWithValue("@Availability", rbAvailability.SelectedValue);
                cmd.Parameters.AddWithValue("@LaunchDate", Convert.ToDateTime(txtDate.Text));
                cmd.Parameters.AddWithValue("@CoffeeType", ddlType.SelectedValue);
                cmd.Parameters.AddWithValue("@ImageUrl", txtImageUrl.Text);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    ClearForm();
                    Response.Write("<script>alert('Coffee updated successfully!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Coffee not found or no changes made!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                if (cmd != null)
                    cmd.Dispose();
                if (conn != null)
                {
                    conn.Close();
                    conn.Dispose();
                }

            }
        }
        protected void Button3_Click(object sender, EventArgs e) {
            string connectionString = ConfigurationManager.ConnectionStrings["coffee"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = null;
            try
            {
                conn.Open();
                string query = "DELETE FROM Products WHERE ProductID = @ProductID";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@ProductID", Convert.ToInt32(txtProductID.Text));

                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    ClearForm();
                    Response.Write("<script>alert('Coffee deleted successfully!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Coffee not found!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                if (cmd != null)
                    cmd.Dispose();
                if (conn != null)
                {
                    conn.Close();
                    conn.Dispose();
                }
            }
        }
        private void ClearForm()
        {
            txtProductID.Text = "";
            txtName.Text = "";
            txtDesc.Text = "";
            txtPrice.Text = "";
        }
        protected void btnPreviewImage_Click(object sender, EventArgs e)
        {
            imgPreview.ImageUrl = txtImageUrl.Text;
            imgPreview.Visible = true;
        }
        protected void rbAvailability_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAvailability.Text = "Availability: " + rbAvailability.SelectedValue;
        }

    }
}


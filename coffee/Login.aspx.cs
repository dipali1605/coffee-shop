using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coffee
{
    public partial class Login : System.Web.UI.Page
    {

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie rememberMeCookie = Request.Cookies["RememberMe"];
                if (rememberMeCookie != null)
                {
                    TextBox1.Text = rememberMeCookie.Value;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["coffee"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionstring);
            SqlCommand cmd = null;
            SqlDataReader reader = null;

            try
            {
                conn.Open();

                string query = @"select Email, Password from register1 where Email = @Email and Password = @Password";

                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    Session["Email"] = reader["Email"];

                    if (CheckBox1.Checked)
                    {
                        HttpCookie rememberMeCookie = new HttpCookie("RememberMe");
                        rememberMeCookie.Value = TextBox1.Text;
                        rememberMeCookie.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(rememberMeCookie);
                    }

                    string script = "alert('Login successful and Cookie created!'); window.location.href = 'HOMEPAGE.aspx';";
                    Response.Write("<script>" + script + "</script>");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password! Please check your credentials.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                if (reader != null)
                {
                    reader.Close();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
                if (conn != null)
                {
                    conn.Close();
                    conn.Dispose();
                }
            }
        }

    }
}

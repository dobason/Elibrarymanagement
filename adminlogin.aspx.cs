using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web;

namespace Elibrarymanagement
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // login button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    string query = "SELECT * FROM admin_login_tbl WHERE username = @username AND password = @password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            HttpContext.Current.Response.Write("<script>alert('Login successful: " + dr["username"].ToString() + "');</script>");
                            Session["username"] = dr.GetValue(0).ToString();
                            Session["fullname"] = dr.GetValue(2).ToString();
                            Session["role"] = "admin";
                            //Session["status"] = dr.GetValue(10).ToString();
                        }
                        HttpContext.Current.Response.Redirect("homepage.aspx");
                    }
                    else
                    {
                        HttpContext.Current.Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}

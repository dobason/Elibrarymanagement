using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;


namespace Elibrarymanagement
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id = '" + TextBox1.Text.Trim() + "' AND password = '"+TextBox2.Text.Trim()+"';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        HttpContext.Current.Response.Write("<script>alert('" +dr.GetValue(8).ToString()+ "');</script>");
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
                    }
                    HttpContext.Current.Response.Redirect("homepage.aspx");
                }
                else
                {
                    HttpContext.Current.Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {

            }

            // Response.Write("<script>alert('Button click');</script>");
        }




        // user defined functions
    }
}
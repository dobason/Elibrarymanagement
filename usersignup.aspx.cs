using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;



namespace Elibrarymanagement
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkMemberExists())
            {
                HttpContext.Current.Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        

        }





        // user defined method

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='"+TextBox8.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                
                if (dt.Rows.Count >= 1)
                {
                    con.Close();
                    return true;
                }
                else
                {
                    con.Close();
                    return false;
                }
               


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

           
        }


        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl (full_name, dob, contact_no, email, state, city, pincode, full_address, member_id, password, account_status) values(@full_name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address, @member_id, @password, @account_status)", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                HttpContext.Current.Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");

            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrarymanagement
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        //active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("active");
        }

        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("pending");
        }

        //deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("deactive");
        }

        //delet button
        protected void Button4_Click(object sender, EventArgs e)
        {
            delectMemberById();
        }
        // Add button
        protected void ButtonAddMember_Click(object sender, EventArgs e) 
        {
            addMember();
        }


        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id ='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();
                        TextBox10.Text = dr.GetValue(5).ToString();
                        Password.Text = dr.GetValue(6).ToString();
                        TextBox6.Text = dr.GetValue(7).ToString();

                    }
                   
                }
                else
                {
                    HttpContext.Current.Response.Write("<script>alert('Invalid credentials');</script>");
                }


            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }

        }


        void delectMemberById()
        {
            if(TextBox1.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('Member ID cannot be blank');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "' ", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    HttpContext.Current.Response.Write("<script>alert('Member Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        void addMember()
        {   
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name,contact_no,email,member_id,password,account_status) values(@full_name,@contact_no,@email,@member_id,@password,@account_status)", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", Password.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "active");

                cmd.ExecuteNonQuery(); // excute cau truy van
                con.Close();
                Response.Write("<script>alert('Member added Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void updateMemberStatusByID(string status)
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('Member ID cannot be blank');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE member_id ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");

                }
                catch (Exception ex)
                {
                    HttpContext.Current.Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = ""; 
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox6.Text = "";
            Password.Text = "";
        }

    }
}

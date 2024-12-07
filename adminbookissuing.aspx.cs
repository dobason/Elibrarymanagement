using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrarymanagement
{
    public partial class adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }




        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into book_issue_tbl(member_id, member_name, book_id, book_name, issue_date, due_date) values (@member_id, @member_name, @book_id, @book_name, @issue_date, @due_date)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date  ", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("update book_master_tbl set current_stock = current_stock - 1 where book_id = '" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Book Issued Success');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        bool CheckIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_master_tbl where book_id='" + TextBox1.Text.Trim() + "' AND current_stock >0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool CheckIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select full_name from member_master_tbl where member_id='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        bool CheckIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from book_issue_tbl where member_id='" + TextBox2.Text.Trim() + "' and book_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        void GetName()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select book_name from book_master_tbl where book_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong book ID');</script>");
                }

                cmd = new SqlCommand("select full_name from member_master_tbl where member_id='" + TextBox2.Text.Trim() + "';", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong user ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GetName();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfBookExist() && CheckIfMemberExist())
            {
                if (CheckIfIssueEntryExist())
                {
                    Response.Write("<script>alert('This member already has this book');</script>");
                }
                else
                {
                    issueBook();
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or Member ID');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfBookExist() && CheckIfMemberExist())
            {
                if (CheckIfIssueEntryExist())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('This entry doesnot exist');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or Member ID');</script>");
            }
        }


        void returnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("delete from book_issue_tbl where book_id='" + TextBox1.Text.Trim() + "' and member_id='" + TextBox2.Text.Trim() + "' ", con);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {

                    cmd = new SqlCommand("update book_master_tbl set current_stock=current_stock+1 where book_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book return Success');</script>");
                    GridView1.DataBind();
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('ERROR');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch(Exception ex)     
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
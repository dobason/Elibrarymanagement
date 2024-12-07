using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrarymanagement
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author with this ID already Exist.');</script>");
            }
            else
            {
                addNewAuthor();
            }
        }

        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                updateAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author does not Exist.');</script>");
            }
        }

        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                deleteAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author does not Exist.');</script>");
            }
        }

        //GO
        protected void Button1_Click(object sender, EventArgs e)
        {
            getAuthorByID();
        }

        //usere defined function
        void getAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='"
                    + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
               
            }
        }


        void deleteAuthor()
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

                    SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "' ", con);

                    cmd.Parameters.AddWithValue("@author_name", TextBox1.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    HttpContext.Current.Response.Write("<script>alert('Author Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }



        void updateAuthor()
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

                    SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name=@author_name WHERE author_id='" + TextBox1.Text.Trim() + "' ", con);

                    cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Author Update  Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }



        void addNewAuthor()
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

                    SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl(author_id, author_name) values(@author_id, @author_name)", con);

                    cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Author added Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='"
                    + TextBox1.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
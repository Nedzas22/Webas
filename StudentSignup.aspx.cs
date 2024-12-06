using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webas
{
    public partial class StudentSignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropDown();
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO student(vp,gimimodata,tel,pastas,prisijungimas,slaptazodis,grupe) values(@vp,@gimimodata,@tel,@pastas,@prisijungimas,@slaptazodis,@grupe)", con);
                cmd.Parameters.AddWithValue("@vp", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@gimimodata", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@tel", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@pastas", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@prisijungimas", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@slaptazodis", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@grupe", DropDownlist.SelectedItem.Value.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Studentas pridetas'); </script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        protected void button2_Click(object sender, EventArgs e)
        {
           
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from student where prisijungimas='" + TextBox5.Text.Trim() + "'", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('asmuo istrintas'); </script>");

                TextBox3.Text = string.Empty;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }



        void dropDown()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT grupes_id from grupes", con);
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                DropDownlist.DataSource = dt;
                DropDownlist.DataValueField = "grupes_id";
                DropDownlist.DataTextField = "grupes_id";
                DropDownlist.DataBind();

                reader.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownlist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    }

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;

namespace Webas
{
    public partial class pazymiai : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            paskaita();
            string query = @"
   SELECT st.*
    FROM student st
    INNER JOIN paskaitoss ps ON st.grupe = ps.grupe_id
    INNER JOIN destytojas ds ON ds.dalykas = ds.dalykas
    WHERE ds.dprisijungimas = @username";

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {

            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from student where prisijungimas='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                da.Fill(dataTable);
                if (dataTable.Rows.Count >= 1)
                {
                    TextBox4.Text = dataTable.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Nepavyko rasti'); </script>");
                }



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
                SqlCommand cmd = new SqlCommand("INSERT INTO pazimyss(studentas,Paskaita,pazimys) values(@studentas,@Paskaita,@pazimys)", con);
                cmd.Parameters.AddWithValue("@studentas", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@pazimys", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Paskaita", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                GridView2.DataBind();
                Response.Write("<script>alert('Įvertinimas įrašytas'); </script>");
              
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        protected void button3_Click(object sender, EventArgs e) {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE pazimyss SET pazimys=@pazimys WHERE studentas='" + TextBox4.Text.Trim() + "'", con);
           
                cmd.Parameters.AddWithValue("@pazimys", TextBox3.Text.Trim());
              

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Įvertinimas Atnaujintas'); </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        protected void button4_Click(object sender, EventArgs e) {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from pazimyss where studentas='" + TextBox4.Text.Trim() + "'", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('įvertinimas pašalintas'); </script>");
                TextBox1.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox3.Text = string.Empty;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        void paskaita()
        {
            string query = @"
 select * from destytojas where dprisijungimas= @username";

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", Session["username"].ToString());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                da.Fill(dataTable);
                if (dataTable.Rows.Count >= 1)
                {
                    TextBox2.Text = dataTable.Rows[0][6].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Nepavyko rasti'); </script>");
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
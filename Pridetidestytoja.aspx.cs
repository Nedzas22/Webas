using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Webas
{
    public partial class Pridetidestytoja : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            dropDown();
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
                SqlCommand cmd = new SqlCommand("INSERT INTO destytojas(vp,gimimas,tel,pastas,dprisijungimas,slaptazodis,dalykas) values(@vp,@gimimas,@tel,@pastas,@dprisijungimas,@slaptazodis,@dalykas)", con);
                cmd.Parameters.AddWithValue("@vp", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@gimimas", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@tel", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@pastas", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@dprisijungimas", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@slaptazodis", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@dalykas", DropDownlist.SelectedItem.Value.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Destytojas pridetas'); </script>");
                cmd.Parameters.Clear();
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
                SqlCommand cmd = new SqlCommand("DELETE from destytojas where dprisijungimas='" + TextBox5.Text.Trim() + "'", con);

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
                SqlCommand cmd = new SqlCommand("SELECT subjectname from subject", con);
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                DropDownlist.DataSource = dt;
                DropDownlist.DataValueField = "subjectname";
                DropDownlist.DataTextField = "subjectname";
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
    }
}
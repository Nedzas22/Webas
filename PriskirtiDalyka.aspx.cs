using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webas
{
    public partial class PriskirtiDalyka : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropDown();
                dropDown1();
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
                SqlCommand cmd = new SqlCommand("INSERT INTO paskaitoss(groups_id,grupe_id,subject_id) values(@groups_id,@grupe_id,@subject_id)", con);
                cmd.Parameters.AddWithValue("@subject_id", DropDownlist.SelectedItem.Value.Trim());
                cmd.Parameters.AddWithValue("@grupe_id", DropDownlist1.SelectedItem.Value.Trim());
                cmd.Parameters.AddWithValue("@groups_id", TextBox1.Text.Trim());

                string key = (string)Session["username"];
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                con.Close();
                Response.Write("<script>alert('Paskaita sukurta'); </script>");
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");

               
            }
        }
  
        protected void button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from paskaitoss where groups_id='" + TextBox1.Text.Trim() + "'", con);



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('paskaita istrinta'); </script>");
              
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
                DropDownlist1.DataSource = dt;
                DropDownlist1.DataValueField = "grupes_id";
                DropDownlist1.DataTextField = "grupes_id";
                DropDownlist1.DataBind();

                reader.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
        void dropDown1()
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
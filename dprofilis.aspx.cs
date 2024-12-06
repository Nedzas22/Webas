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
    public partial class dprofilis : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            duomenys();
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
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        void duomenys()
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
                    TextBox1.Text = dataTable.Rows[0][1].ToString();
                    TextBox3.Text = dataTable.Rows[0][2].ToString();
                    TextBox2.Text = dataTable.Rows[0][3].ToString();
                    TextBox4.Text = dataTable.Rows[0][4].ToString();
                    TextBox5.Text = dataTable.Rows[0][0].ToString();
                    TextBox6.Text = dataTable.Rows[0][5].ToString();
                    TextBox7.Text = dataTable.Rows[0][6].ToString();
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
    }
}
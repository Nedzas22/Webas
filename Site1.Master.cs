using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webas
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] ==null)
                {
                    LinkButton1.Visible = true; //login
                    LinkButton2.Visible = false; //logout
                    LinkButton3.Visible = false; //profile
                    LinkButton4.Visible = false; //dprofile
                    LinkButton5.Visible = false; //grades
                    LinkButton6.Visible = true; //admin login
                    
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;
                   
                }
                else if (Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false; //login
                    LinkButton2.Visible = true; //logout
                    LinkButton3.Visible = true; //profile
                    LinkButton4.Visible = false; //dprofile
                    LinkButton5.Visible = false; //grades
                    LinkButton6.Visible = false; //admin login
                    
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;
                  
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //login
                    LinkButton2.Visible = true; //logout
                    LinkButton3.Visible = false; //profile
                    LinkButton4.Visible = false; //dprofile
                    LinkButton5.Visible = false; //grades
                    LinkButton6.Visible = false; //admin login
                  
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = true;
              
                }
                else if (Session["role"].Equals("destytojas"))
                {
                    LinkButton1.Visible = false; //login
                    LinkButton2.Visible = true; //logout
                    LinkButton3.Visible = false; //profile
                    LinkButton4.Visible = true; //dprofile
                    LinkButton5.Visible = true; //grades
                    LinkButton6.Visible = false; //admin login
                
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;
               
                }
            }
            catch(Exception ex) { }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("PriskirtiStudenta.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentSignup.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sgrupe.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sdestoma.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pridetidestytoja.aspx");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("PriskirtiDalyka.aspx");
        }
        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("PriskirtiDestytoja.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("profilis.aspx");
        }
  
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Response.Redirect("pagrindinis.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("dprofilis.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pazymiai.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Integrated Security=True");
            conn.Open();
            string checkuser = "select count (*) from User_data where email='" + Email.Text.ToLower() + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPass = "select pass from User_data where email = '" + Email.Text.ToLower() + "'";
                SqlCommand com = new SqlCommand(checkPass, conn);
                string password = com.ExecuteScalar().ToString().Replace(" ", "");
                if (password == Password.Text)
                {
                    Session["email"] = Email.Text.ToLower();
                    Response.Write("Password is Correct");
                    Response.Redirect("~/Main.aspx");
                }
                else
                {
                    Label1.Text = "Password is incorrect";
                    Label1.Visible = true;
                }
            }
            else
            {
                Response.Write("Email is not Correct");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("~/ForgotPass.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }

   

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/ForgotPass.aspx");
        }
    }
}
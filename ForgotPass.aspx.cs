using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;




namespace Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {

            string email, pw, quest;
            email = Email.Text;
            pw = Password.Text;
            quest = Question.Text.ToLower();
            con.Open();
            string checkuser = "select count (*) from User_data where email='" + Email.Text.ToLower() + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            
            if (temp == 1)
            {
                string q = "update User_data set pass = '" + pw + "' where email = '" + email + "' AND question = '" + quest + "'";
                cmd = new SqlCommand(q, con);
                con.Open();
                int x = cmd.ExecuteNonQuery();
                con.Close();
                if (x == 1)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Label1.Text = "The city name is Incorrect";
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "The Email entered is not registered";
                Label1.Visible = true;
                
            }

                //Response.Write(email + pw + quest);
                //string q = "update [User_data] set [pass] = '" + pw + "' where email='" + email + "' AND question='"+ quest +"'";
            
        }
    }
}
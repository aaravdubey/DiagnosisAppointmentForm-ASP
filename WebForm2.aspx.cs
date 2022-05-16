using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=.\\sqlexpress;Integrated Security=True");
            conn.Open();
            string checkuser = "select count (*) from User_data where email='" + Email.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 0)
            {
                SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Integrated Security=True");
                string sql = "insert into User_data(user_name, email, pass, question) values('" + Username.Text + "','" + Email.Text.ToLower() + "','" + Password.Text + "','" + Question.Text.ToLower() + "')";
                cmd = new SqlCommand(sql, con);
                cmd.CommandType = System.Data.CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Label1.Text = "This Email is already registered!";
                Label1.Visible = true;
            }
        }

        protected void Send_Click(object sender, EventArgs e)
        {

        }
    }
}
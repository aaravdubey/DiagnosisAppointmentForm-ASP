using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AspProject
{
    public partial class Main : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
               Response.Redirect("~/Login.aspx");
            }


            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Integrated Security=True");
            
            string checkuser = "select user_id from User_data where email='" + Session["email"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            con.Open();
            int uid = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            string q = "Select test_name, test_time, test_date from Test_data where user_id = " + uid ;
            cmd = new SqlCommand(q, con);
            //cmd.ExecuteReader();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

     
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string checkuser = "select user_id from User_data where email='" + Session["email"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            con.Open();
            int uid = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            string sql = "insert into Test_data(test_name, test_time, test_date, user_id) values('" + RadioButtonList1.SelectedValue.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "', '" + TextBox1.Text + "',"  + uid+ ")";
            cmd = new SqlCommand(sql, con);
            //cmd.CommandType = System.Data.CommandType.Text;
            
            cmd.ExecuteNonQuery();
            Label4.Text = "booked";
            System.Windows.Forms.MessageBox.Show("Appointment booked successfully");
            con.Close();

            
            //SqlCommand cmd = new SqlCommand("Insert into Test_data values('"+ test+ "','"+ time+ "','"+ date+ "',"+ 1+ ")", con);

            con.Open();
            string q = "Select test_name, test_time, test_date from Test_data where user_id = " + uid;
            cmd = new SqlCommand(q, con);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}
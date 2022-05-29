using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace booklistRL
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select * from signup where email=@email and password=@password", con);
                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                //Response.Cookies["email"].Value = TextBox1.Text;
                int i = cmd.ExecuteNonQuery();
                con.Close();

            if (TextBox1.Text == "admin@admin.com"){
                if(TextBox2.Text == "admin")
                {
                    Response.Redirect("adminPage.aspx");
                    //Response.Write("admin panel");
                }
            }

                if (dt.Rows.Count > 0)
                {
                    
                    //Response.Write("welcome " + Request.Cookies["email"].Value);
                    Response.Redirect("homePage.aspx"); 
                }
                else
                {
                    label1.Text="Your username and password is incorrect";

                }


            
        }
    }
}
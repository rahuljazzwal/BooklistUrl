using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace booklistRL
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Response.Write("Registration successful");
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();

            string query = "insert into signup values('" + TextBox1.Text + "' , '" + TextBox2.Text + "','" + TextBox3.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);

            Response.Cookies["name"].Value = TextBox1.Text;

            int x = cmd.ExecuteNonQuery();

            if (x > 0)
                label1.Text = "Registration Successfull !!! ";
            else
                label1.Text ="Registration Not Success !!! ";

            con.Close();
        }
    }
}
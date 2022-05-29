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
    public partial class homePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label1.Text = "WELCOME!!  " + Request.Cookies["name"].Value;

            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();
            string query = "Select * from addBook";
            SqlCommand cmd = new SqlCommand(query, con);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();
            string query = "Select * from addBookAdmin";
            SqlCommand cmd = new SqlCommand(query, con);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();
            string query = "Select * from addBookAdmin where book_name=@book";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@book", Textbox1.Text);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    } 
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace booklistRL
{
    public partial class adminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();
            //string a = DropDownList.SelectedValue;
            //Response.Write(a);
            String book = DropDownList.SelectedValue;
            string query = "insert into addBookAdmin values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + book + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
                label1.Text = "Book Added";
            else
                Response.Write("Data has not been inserted !!! ");

            con.Close();
        }

    }
}
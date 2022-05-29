using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace booklistRL
{
    public partial class addBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();
            string a = DropDownList.SelectedValue;
            //Response.Write(a);
            string query = "insert into addBook values('" + TextBox1.Text + "','"+TextBox2.Text+ "','" + TextBox3.Text + "','" + a + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
                Response.Write("Thanks For Your Review !!! ");
            else
                Response.Write("Data has not been inserted !!! ");

            con.Close();

        }

        
    }
}
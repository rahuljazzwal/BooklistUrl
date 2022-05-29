using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace booklistRL
{
    public partial class showBook1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\yepam\source\repos\booklistRL\booklistRL\App_Data\booklist.mdf;Integrated Security=True");
            con.Open();
            string query = "Select * from addBookAdmin";
            SqlCommand cmd = new SqlCommand(query, con);
            grid1.DataSource = cmd.ExecuteReader();
            grid1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label L = (Label)Master.FindControl("Label1");
        if (L != null)
        {
            L.Text = "Welcome, " + this.Session["user"].ToString();
        }
        cn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88"); 
        SqlConnection.ClearAllPools();
        cn.Open();

    }
    protected void Submit1_Click(object sender, EventArgs e)
    {
        string a = txtName.Text;
        if (a != "")
        {
            SqlCommand insertCommand1 = new SqlCommand("Insert into USER_POSTS(Username, Quick_Entries, Post_Time) values (@username, @quick_entry, @post_time)", cn);
            insertCommand1.Parameters.AddWithValue("@username", this.Session["user"].ToString());
            insertCommand1.Parameters.AddWithValue("@quick_entry", a);
            insertCommand1.Parameters.AddWithValue("@post_time", DateTime.Now);
            insertCommand1.ExecuteNonQuery();
            txtName.Text = "";

        }
        else
        {
            Response.Write("<script> alert('No data in diary entered.') </script>");
        }
        cn.Close();
    }

}
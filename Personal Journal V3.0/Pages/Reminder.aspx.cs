using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        Label L = (Label)Master.FindControl("Label1");
        if (L != null)
        {
            L.Text = "Welcome, " + this.Session["user"];
        }
        cn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88"); 
        SqlConnection.ClearAllPools();
        cn.Open();

        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        TextBox2.Text = Calendar1.SelectedDate.ToShortTimeString();
        Calendar1.Visible = false;
    }
    protected void Submit1_Click(object sender, EventArgs e)
    {
        {
            string a = txtName.Text;
            if (a != "")
            {
                //insert into database reminders entered by an authenticated user on the webpage
                SqlCommand insertCommand1 = new SqlCommand("Insert into REMINDER(Username, Reminder_Content, Reminder_Date) values (@username, @quick_entry, @post_time)", cn);
                insertCommand1.Parameters.AddWithValue("@username", this.Session["user"]);
                insertCommand1.Parameters.AddWithValue("@quick_entry", a);
                insertCommand1.Parameters.AddWithValue("@post_time", TextBox1.Text + " " + TextBox2.Text);
                insertCommand1.ExecuteNonQuery();
                txtName.Text = "";
                TextBox1.Text = "";
                TextBox2.Text = "";

            }
            else
            {
                Response.Write("<script> alert('No Text') </script>");
            }

            cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        cmd = new SqlCommand("select quick_entries, post_time from user_posts where username='miren' and month(post_time)=" + DropDownList1.SelectedValue + " and year(post_time)=" + DropDownList2.SelectedValue, cn);
        SqlDataAdapter sda = new SqlDataAdapter("select quick_entries, post_time from user_posts where username='miren' and month(post_time)=" + DropDownList1.SelectedValue + " and year(post_time)=" + DropDownList2.SelectedValue, cn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        // GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
    
}
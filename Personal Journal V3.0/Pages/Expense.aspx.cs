using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class NewUser : System.Web.UI.Page
{
        SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label L = (Label)Master.FindControl("Label1");
        if (L != null)
        {
            L.Text = "Welcome, " + this.Session["user"].ToString();
        }
        conn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88");
        GridView1.Visible = false;
        txtOwedAmount.ReadOnly = true;
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        conn.Open();
        //insert into database, the users expenses
        SqlCommand insert = new SqlCommand("Insert into Expense values('" + Calendar1.SelectedDate + "','" + txtAmount.Text + "','" + ddlStatus.SelectedValue + "','" + txtName.Text + "','" + txtComments.Text + "','" + this.Session["user"].ToString() + "')", conn);
        int insertrecord = insert.ExecuteNonQuery();
        if (insertrecord >= 1)
        {
            lblTest.Text = "Bingo";
        }
        else
        {
            lblTest.Text = "Oops!!";
        }
        GridView1.Visible = true;
        double TotalAmount = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            double Amount = Convert.ToDouble(GridView1.Rows[i].Cells[2].Text);
            string Status = GridView1.Rows[i].Cells[3].Text;

            if (Status == "Owe")
            {
                TotalAmount = TotalAmount - Amount;
            }
            else
            {
                TotalAmount = TotalAmount + Amount;
            }

            txtOwedAmount.Text = Convert.ToString(TotalAmount);

        }
        conn.Close();
        txtName.Text = "";
        txtAmount.Text = "";
        txtComments.Text = "";

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

        Calendar1.Visible = false;
    }
}

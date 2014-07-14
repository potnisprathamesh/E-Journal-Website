using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    String s = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //connect to database server using connection string
        cn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88"); 
        SqlConnection.ClearAllPools();
        cn.Open();    
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        TextBox nup = (TextBox)Master.FindControl("NewUserPassword");
        TextBox nup2 = (TextBox)Master.FindControl("NewUserPassword2");
        
        if ((nup.Text).Equals(nup2.Text))
        {
    //update the user account table with the new user after user has been authenticated
            SqlCommand updatecommand = new SqlCommand();
            updatecommand.CommandText = "Update Account_Tables set Account_Tables.Password= '" + nup.Text + "' where Account_Tables.Username='" + this.Session["forgot"] + "'";
            updatecommand.Connection = cn;
            updatecommand.ExecuteNonQuery();
            Server.Transfer("LoginPage.aspx");
        }
        else {
            Response.Write("<script> alert('Passwords do not match'); </script>");
        }
    }
}
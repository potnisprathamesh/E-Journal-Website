using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();  
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88"); 
        SqlConnection.ClearAllPools();
        cn.Open();            
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        //authenticate user by searching username from database
        SqlCommand usersearch = new SqlCommand();
        usersearch.CommandText = "Select Account_Tables.Username from Account_Tables where Account_Tables.Email = '" + UserEmail.Text + "' and Account_Tables.username = '" + Username.Text + "' and Account_Tables.Secquestion = '" + UserSecQuestion.Text + "' and Account_Tables.Secanswer = '" + UserSecAnswer.Text + "'";
        usersearch.Connection = cn;
        object pswd = usersearch.ExecuteScalar();
        UserEmail.Text = pswd.ToString();
        if (!(UserEmail.Text.Equals(null) & Username.Text.Equals(null)))
        {
            this.Session["forgot"] = pswd.ToString();
             Response.Redirect("ChangePassword.aspx?user=" + pswd.ToString(), true);
        }
        else
        {
            Response.Write("<script> alert('Incorrect username/email.'); </script>");
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}
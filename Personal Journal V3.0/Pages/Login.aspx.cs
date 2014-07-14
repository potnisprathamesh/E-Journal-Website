using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class LoginPage : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();  
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88"); 
        SqlConnection.ClearAllPools();
        cn.Open();
    }

    protected void LoginForm_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //authenticate user and redirect user to landing page
        SqlCommand passwordsearch = new SqlCommand();
        passwordsearch.CommandText = "Select ACCOUNT_TABLES.Password from ACCOUNT_TABLES where ACCOUNT_TABLES.Username = '" + LoginForm.Password + "' and ACCOUNT_TABLES.Password = '" + LoginForm.UserName + "'";
        passwordsearch.Connection = cn;
        object pswd = passwordsearch.ExecuteScalar();

        if (pswd != null)
        {
            this.Session["user"] = pswd.ToString();
            Response.Redirect("Home.aspx", true);
        }
     
     }
    
}

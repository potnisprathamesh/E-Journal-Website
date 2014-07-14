
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["user"] == null)
            LoginStatus1.Visible = false;
        else
            LoginStatus1.LogoutText = "Log Out";



    }
   
    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        this.Session["user"] = null;
        LoginStatus1.LogoutPageUrl = "Pages/Login.aspx";
    }
}

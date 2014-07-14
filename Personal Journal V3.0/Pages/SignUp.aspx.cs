using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Sign_Up : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(); 
    SqlCommand cmd = new SqlCommand();  
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=PRATHAM\SQLEXPRESS;Initial Catalog=EDIARY;User ID=sa;Password=Pratham@88"); 
        SqlConnection.ClearAllPools();
        cn.Open();
    }
    //function to insert a new user credentials into the database
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SqlCommand usernamesearch = new SqlCommand();
        usernamesearch.CommandText = "Select Account_Tables.Username from Account_Tables where Account_Tables.Username = '" + NewUserName.Text + "'";
        //selectContactFirstMeetAt.CommandType = SqlDataSourceCommandType.Text;
        usernamesearch.Connection = cn;
        object uname= usernamesearch.ExecuteScalar();
        if (uname == null)
        {
            if ((NewUserPassword.Text).Equals(NewUserPassword2.Text))
            {
                SqlCommand insertCommand1 = new SqlCommand("Insert into Account_Tables(Username, Password, Firstname, Lastname, Email, Secquestion, Secanswer) values (@username, @password, @firstname, @lastname, @email, @secquestion, @secanswer)", cn);
                insertCommand1.Parameters.AddWithValue("@username", NewUserName.Text);
                insertCommand1.Parameters.AddWithValue("@password", NewUserPassword.Text);
                insertCommand1.Parameters.AddWithValue("@firstname", NewUserFirstName.Text);
                insertCommand1.Parameters.AddWithValue("@lastname", NewUserLastName.Text);
                insertCommand1.Parameters.AddWithValue("@email", NewUserEmail.Text);
                insertCommand1.Parameters.AddWithValue("@secquestion", NewUserSecQuestion.Text);
                insertCommand1.Parameters.AddWithValue("@secanswer", NewUserSecAnswer.Text);
                insertCommand1.ExecuteNonQuery();
                Response.Redirect("LoginPage.aspx", true);
            }
            else
            {
                Response.Write("<script> alert('Passwords do not match.') </script>");
            }
        }
        else {
            Response.Write("<script> alert('Username already exists') </script>");

        }
        cn.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
using System.Data;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        btnSend.Visible = false;
        FormTable.Visible = true;

        try
        {
            string connStr = ConfigurationManager.ConnectionStrings["EDiaryConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            //insert user feedback into database
            SqlCommand insert = new SqlCommand("Insert into CONTACT_US values('" + txtName.Text + "','" + txtEMail.Text + "','" + txtNumber.Text + "','" + txtComment.Text + "')", conn);
            int insertrecord = insert.ExecuteNonQuery();
        }
        catch
        {
            Response.Write("<script>alert('Unable to  send the Feedback. Try again....!!')</script>");
        }

        try
        {
            if (Page.IsValid)
            {
                string filename = Server.MapPath("Feedback.txt");
                string mailbody = System.IO.File.ReadAllText(filename);
                mailbody = mailbody.Replace("##Name##", txtName.Text);
                mailbody = mailbody.Replace("##EMail##", txtEMail.Text);
                mailbody = mailbody.Replace("##Phone##", txtNumber.Text);
                mailbody = mailbody.Replace("##Comments##", txtComment.Text);
                /*MailBody is further used to send the text of the E-Mails */
                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Feedback from Web Site";
                myMessage.Body = mailbody;
                myMessage.From = new MailAddress("mitsu.deshpande@microsoft.in", "Sender Name");
                myMessage.To.Add(new MailAddress("miren24@gmail.com", "Administrator"));
                SmtpClient mySmtpClient1 = new SmtpClient();
                mySmtpClient1.Send(myMessage);
                FormTable.Visible = false;
                Label1.Text = "Your feedback has been sent successfully";
                Label1.Visible = true;

            }
           
        }
        catch
        {
            Label1.Text = "Unable to sent the feedback. Check your smtp server";
            Label1.Visible = true;
        }
        txtComment.Text = "";
        txtEMail.Text = "";
        txtName.Text = "";
        txtNumber.Text = "";
    }
}
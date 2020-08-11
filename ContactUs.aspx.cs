using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("mahamhassan17@gmail.com.com");
                mailMessage.To.Add("mahamhassan17@gmail.com");
                mailMessage.Subject = "Contact";

                mailMessage.Body = "<b>Sender Name : </b>" + txtname.Text + "<br/>"
                    + "<b>Sender Email : </b>" + txtemail.Text + "<br/>"
                    + "<b>Comments : </b>" + Request.Form["txtmsg"];
                mailMessage.IsBodyHtml = true;


                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new
                    System.Net.NetworkCredential("mahamhassan17@gmail.com", "allah143");
                smtpClient.Send(mailMessage);

                Label1.ForeColor = System.Drawing.Color.Blue;
                Label1.Text = "Thank you for contacting us";

               
            }
        
        //catch (Exception ex)
        //{
        //    // Log the exception information to 
        //    // database table or event viewer
        //    Label1.ForeColor = System.Drawing.Color.Red;
        //    Label1.Text = "There is an unkwon problem. Please try later";
        //}
    }
}
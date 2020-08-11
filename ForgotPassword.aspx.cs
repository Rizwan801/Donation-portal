using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string password;
    private static void mailsend(string from, string to, string subject, string body, bool isHtml)
    {
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress(from);
        mail.To.Add(new MailAddress(to));
        mail.Subject = subject;
        mail.Body = body;
        mail.IsBodyHtml = isHtml;
        mail.Priority = MailPriority.Normal;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

        smtp.EnableSsl = true;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new NetworkCredential("mahamhassan17@gmail.com", "allah143");//"Write mail Address","Write Password"
        smtp.Send(mail);

    }


   
    protected void btPassRec_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Registered_Users where UserName='" + TextBox1.Text + "' ", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            password = sdr["UserPassword"].ToString();
            string _from = "mahamhassan17@gmail.com";
            string _to = TextBox2.Text;
            string _subject = "Password Recovery";
            string _body = "Your Password is: "+ password;


            mailsend(_from, _to, _subject, _body, true);
            lblPassRec.Text = "Password Sent To Provided Email";
        }
        else { lblPassRec.Text = "OOps This email id DOES NOT exist in our database !"; }
        con.Close();
    }
}
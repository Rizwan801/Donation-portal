using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class LoginSignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)

    {
        


        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                txtname.Text = Request.Cookies["UNAME"].Value;
                txtpassword.Attributes["value"] = Request.Cookies["PWD"].Value;
                remember.Checked = true;
            }
        }


    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        con.Open();
       
        SqlCommand select = new SqlCommand("Select * from Registered_Users Where UserName='" + txtname.Text + "' AND UserPassword='" + txtpassword.Text + "'", con);
        SqlDataReader sdrr = select.ExecuteReader();
        if (sdrr.Read())
        {
            
            if (remember.Checked)
            {
                Response.Cookies["UNAME"].Value = txtname.Text;
                Response.Cookies["PWD"].Value = txtpassword.Text;

                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
            }
              string utype= sdrr["UserType"].ToString();

              if (utype == "A")
              {

                  Session["Admin"] = sdrr["UserType"].ToString();
                  Response.Redirect("~/Admin/AdminHome.aspx");  
              }
            else
                  if (utype == "U")
                  {
                      Session["UserID"] = sdrr["UserID"].ToString();
                      Response.Redirect("Home.aspx");  
                  }
                 
                
        }
        else
        {
            lblError.Text = "Invalid Username or Password !";

        }
        con.Close();
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            con.Open();

            SqlCommand reg = new SqlCommand("Insert into Registered_Users(UserName,UserEmail,UserPassword,Date,UserType) Values('" + txtusername.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + DateTime.Now + "','U')", con);
            int i = reg.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Successfully Registered')</script>");

                //txtusername.Text = "";
                //txtemail.Text = "";
                //txtpass.Text = "";
                //txtCpass.Text = "";
                Response.Redirect("LoginSignUp.aspx");
            }


            con.Close();
        }
    }
   
}
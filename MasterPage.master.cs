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
        String activepage = Request.RawUrl;
        if (activepage.Contains("Home.aspx"))
        {
            home.Attributes.Add("class", "current-menu-item");
        }
        else if (activepage.Contains("AboutUs.aspx"))
        {
            about.Attributes.Add("class", "current-menu-item");
        }
        else if (activepage.Contains("SponserChild.aspx"))
        {
            sponser.Attributes.Add("class", "current-menu-item");
        }
        else if (activepage.Contains("AddChild.aspx"))
        {
            addchild.Attributes.Add("class", "current-menu-item");
        }
        else if (activepage.Contains("ContactUs.aspx"))
        {
            contact.Attributes.Add("class", "current-menu-item");
        }  
        if (Session["UserID"] == null)
        {

            Button3.Visible = false;
            profile.Visible = false;

        }
        else
        {
            Button3.Visible = true;
            profile.Visible = true;
            Button2.Visible= false;
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Donate.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginSignUp.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        if (Session["UserID"] == null)
        {

            Response.Redirect("Home.aspx");
        }
    }
    protected void profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserPanel.aspx");
    }
}

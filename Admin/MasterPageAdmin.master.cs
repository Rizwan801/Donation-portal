using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Admin_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlAnchor HA = new HtmlAnchor();
        HA.ServerClick += new EventHandler(signout);
    }
    protected void signout(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {

            Response.Redirect("../Home.aspx");
        }
    }
    protected void changepassword(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Home.aspx");
    }
}

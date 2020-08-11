using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewChild : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    //    con.Open();

    //    SqlCommand cmd = new SqlCommand("Insert Into ChildSponsored([ChildID],[DonorID],Date) Values('" + Request.QueryString["ChildID"] + "','" + Session["UserID"] + "','" + DateTime.Now + "')", con);

    //int i=    cmd.ExecuteNonQuery();
    //if (i == 1)
    //{
    //    Response.Write("<script>alert('Sponsored');</script>");
    //}
    //else
    //{
    //    Response.Write("<script>alert('Not Sponsored');</script>");
    //}
    //    con.Close();
    }
}
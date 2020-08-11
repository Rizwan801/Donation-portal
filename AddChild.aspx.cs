using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddChild : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
    private string txtdesc;
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

   
    protected void btn_addchild_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Session["UserID"] != null)
            {
                if (FileUpload1.HasFile)
                {

                    FileUpload1.SaveAs(Server.MapPath("~/childpics/") + FileUpload1.FileName);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert Into Child([ChildName],[Address],[Country],[ContactNo],[State],[City],[Picture],[Verified],[Date],[UserID]) Values('" + txtchildname.Text + "','" + txtaddress.Text + "','" + ddlcountry.Text+ "','" + txtcntct.Text + "','" + txtstate.Text + "','" + txtcity.Text + "','" + FileUpload1.FileName + "','NO','" + DateTime.Now + "','" + Session["UserID"].ToString() + "')", con);

                   int i= cmd.ExecuteNonQuery();
                    if(i==1)
                    {
                        Response.Write("<script>alert('Infromation Added. Thank You!');</script>");
                        txtchildname.Text = "";
                        txtaddress.Text = "";
                        ddlcountry.Text = "";
                        txtcntct.Text = "";
                        txtstate.Text = "";
                        txtcity.Text = "";

                    }
                    //Label1.Text = "Add Succe.";
                    //Label1.ForeColor = Color.White;
                    con.Close();


                }
            }
            else
            {
                Response.Write("<script>alert('Please Login');</script>");
            }
        

     
        }
         
    }
}
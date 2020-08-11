using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanel : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserID"]!=null)
        {
        con.Open();
        SqlCommand select = new SqlCommand("Select *  From Registered_Users Where UserID='" + Session["UserID"].ToString() + "'", con);
        SqlDataReader sdrr = select.ExecuteReader();
        if (sdrr.Read())
        {
            txtusername.Text = sdrr["UserName"].ToString();
            txtemail.Text = sdrr["UserEmail"].ToString();
            txtpass.Text = sdrr["UserPassword"].ToString();
            Session["UserID"] = sdrr["UserID"].ToString();
        }

        con.Close();


 }
         
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        if (Session["UserID"] == null)
        {
            Response.Redirect("Home.aspx");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)

    {
         con.Open();
        SqlCommand select = new SqlCommand("Select *  From Registered_Users Where UserPassword='"  +txtpass.Text+ "'", con);
        SqlDataReader sdrr = select.ExecuteReader();
        if (sdrr.Read())
        {
            SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
            con1.Open(); 
            string str = "Update Registered_Users Set UserPassword ='"+txtpass.Text+"' Where UserID='" + Session["UserID"].ToString()+"'" ;
           

           SqlCommand cmd1 = new SqlCommand(str, con1);

          cmd1.ExecuteNonQuery();
          lbl_msg.Text = "Password changed Successfully";
         

          con1.Close();
          con.Close();
        }

        else

        {

            lbl_msg.Text = "Please enter correct Current password";

        }

       
      
    }
}      

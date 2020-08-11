using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Admin_AdminHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string total_child = "SELECT COUNT(ChildID) FROM Child";
        string total_donations = "SELECT SUM(Donation_Amount) FROM Donations";
        string total_donors = "SELECT COUNT(DonorID) FROM Donor";
        SqlCommand cmd1 = new SqlCommand(total_child, con);
        SqlCommand cmd2 = new SqlCommand(total_donations, con);
        SqlCommand cmd3 = new SqlCommand(total_donors, con);

        //read from db
        Int32 rows_count_child = Convert.ToInt32(cmd1.ExecuteScalar());
        Int32 rows_count_donations= Convert.ToInt32(cmd2.ExecuteScalar());
        Int32 rows_count_donor = Convert.ToInt32(cmd3.ExecuteScalar());
        cmd2.Dispose();
        con.Close();
        //Display data on the page
        tchild.Text = rows_count_child.ToString();
        tdonations.Text = rows_count_donations.ToString();
        tdonors.Text = rows_count_donor.ToString();

       
        





       
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        if (Request.QueryString["verify"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Child Set Verified='Yes' Where ChildID='" + Request.QueryString["verify"] + "'", con);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Child Verified');</script>");
            }
            con.Close();
            Response.Redirect("AdminHome.aspx");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
   
}
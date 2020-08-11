using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Donate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SCDSCon"].ConnectionString);
  
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;

    }
    protected void btn_money_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void btn_other_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
    }
  
protected void btn_donate_Click(object sender, EventArgs e)
{
    if (IsPostBack) {
        con.Open();
        if (Session["UserID"] != null)
        {
            if (txtamount.Text != "")
            {
                SqlCommand cmd = new SqlCommand("Insert Into Donor([FirstName],[LastName],[Country],[Address],[City],[ZipCode],[Contact_No],[Email],[Date],[UserID]) Values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + ddlcountry.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtzipcode.Text + "','" + txtnum.Text + "','" + txtmail.Text + "','" + DateTime.Now + "','" + Session["UserID"].ToString() + "')", con);
                int i = cmd.ExecuteNonQuery();
                string did = "Select max(DonorID) from Donor";
                SqlCommand cmd1 = new SqlCommand(did, con);
                Int32 donor_id_current = Convert.ToInt32(cmd1.ExecuteScalar());
                SqlCommand cmddonation = new SqlCommand("Insert Into Donations([Donation_Amount],[Donation_Date],[UserID],[DMethod],[DonorID]) Values('" + txtamount.Text + "','" + DateTime.Now + "','" + Session["UserID"].ToString() + "','CreditCard','" + donor_id_current .ToString()+ "')", con);
                int d = cmddonation.ExecuteNonQuery();
                if (i == 1 || d == 1)
                {
                    Response.Write("<script>alert('Thank you for Your Contribution.');</script>");
                    txtfirstname.Text = "";
                    txtlastname.Text = "";
                    ddlcountry.Text = "";
                    txtaddress.Text = "";
                    txtaddress.Text = "";
                    txtcity.Text = "";
                    txtzipcode.Text = "";
                    txtnum.Text = "";
                    txtmail.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter Required Fields.');</script>");
            }

        }

        else
        {
            if (txtamount.Text != "")
            {
                SqlCommand cmd = new SqlCommand("Insert Into Donor([FirstName],[LastName],[Country],[Address],[City],[ZipCode],[Contact_No],[Email],[Date]) Values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + ddlcountry.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtzipcode.Text + "','" + txtnum.Text + "','" + txtmail.Text + "','" + DateTime.Now + "')", con);
                int i = cmd.ExecuteNonQuery();
                string did = "Select max(DonorID) from Donor";
                SqlCommand cmd1 = new SqlCommand(did, con);
                Int32 donor_id_current = Convert.ToInt32(cmd1.ExecuteScalar());
                SqlCommand cmddonation = new SqlCommand("Insert Into Donations([Donation_Amount],[Donation_Date],[DMethod],[DonorID]) Values('" + txtamount.Text + "','" + DateTime.Now + "','CreditCard','"+donor_id_current .ToString()+"')", con);
                int d = cmddonation.ExecuteNonQuery();
                if (i == 1 || d == 1)
                {
                    Response.Write("<script>alert('Thank you for Your Contribution.');</script>");
                    txtamount.Text = "";
                    txtcardno.Text = "";
                    txtexpire.Text = "";
                    txtfirstname.Text = "";
                    txtlastname.Text = "";
                    ddlcountry.Text = "";
                    txtaddress.Text = "";
                    txtaddress.Text = "";
                    txtcity.Text = "";
                    txtzipcode.Text = "";
                    txtnum.Text = "";
                    txtmail.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter Required Fields.');</script>");
            }
        }

        con.Close();
    }
   
}
protected void donate_Click(object sender, EventArgs e)
{
  

    con.Open();
    if (Session["UserID"] != null)
    {
        if (txtamounteasy.Text != null )
        {
            SqlCommand cmd = new SqlCommand("Insert Into Donor([FirstName],[LastName],[Contact_No],[Email],[Date],[UserID]) Values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtnum.Text + "','" + txtmail.Text + "','" + DateTime.Now + "','" + Session["UserID"].ToString() + "')", con);
            int i = cmd.ExecuteNonQuery();
            string did = "Select max(DonorID) from Donor";
            SqlCommand cmd1 = new SqlCommand(did, con);
            Int32 donor_id_current = Convert.ToInt32(cmd1.ExecuteScalar());
            SqlCommand cmddonation = new SqlCommand("Insert Into Donations([Donation_Amount],[Donation_Date],[DMethod],[DonorID]) Values('" + txtamounteasy.Text + "','" + DateTime.Now + "','EasyPaisa','" + donor_id_current.ToString() + "')", con);
            int d = cmddonation.ExecuteNonQuery();
            if (i == 1 || d == 1)
            {
                Response.Write("<script>alert('Thank you for Your Contribution.');</script>");
                txtfirstname.Text = "";
                txtlastname.Text = "";
                ddlcountry.Text = "";
                txtaddress.Text = "";
                txtaddress.Text = "";
                txtcity.Text = "";
                txtzipcode.Text = "";
                txtnum.Text = "";
                txtmail.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter Required Fields.');</script>");
        }

    }

    else
    {
        if (txtamounteasy.Text != "")
        {
            SqlCommand cmd = new SqlCommand("Insert Into Donor([FirstName],[LastName],[Contact_No],[Email],[Date]) Values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtnum.Text + "','" + txtmail.Text + "','" + DateTime.Now + "')", con);
            int i = cmd.ExecuteNonQuery();
            string did = "Select max(DonorID) from Donor";
            SqlCommand cmd1 = new SqlCommand(did, con);
            Int32 donor_id_current = Convert.ToInt32(cmd1.ExecuteScalar());
            SqlCommand cmddonation = new SqlCommand("Insert Into Donations([Donation_Amount],[Donation_Date],[DMethod],[DonorID]) Values('" + txtamounteasy.Text + "','" + DateTime.Now + "','EasyPaisa','" + donor_id_current.ToString() + "')", con);
            int d = cmddonation.ExecuteNonQuery();
            if (i == 1 || d == 1)
            {
                Response.Write("<script>alert('Thank you for Your Contribution.');</script>");
                txtfirstname.Text = "";
                txtlastname.Text = "";
                ddlcountry.Text = "";
                txtaddress.Text = "";
                txtaddress.Text = "";
                txtcity.Text = "";
                txtzipcode.Text = "";
                txtnum.Text = "";
                txtmail.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter Required Fields.');</script>");
        }
    }

    con.Close();

}
protected void other_Click(object sender, EventArgs e)
{

}
}





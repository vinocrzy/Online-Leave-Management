using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class EmployeeLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        SqlCommand com = new SqlCommand("select * from empinfo where userid='" + txtempid.Text + "' and password='" + txtpass.Text + "' and designation='" + ddldesig.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Session["userid"] = txtempid.Text;
            Session["designation"] = ddldesig.Text;
           

            int i = (ddldesig.Text).CompareTo("HOD");

            if (i == 0)
            {
                Response.Redirect("AdminHome.aspx");
            }
            else if ((ddldesig.Text).CompareTo("Principal") == 0)
            {
                Response.Redirect("departmenthome.aspx");
            }
            else
            {
                Response.Redirect("EmployeeHome.aspx");

            }
            
        }

        else
        {
            Page.RegisterStartupScript("aa", "<script>alert('Invalid LoginId/Password')</script>");
        }
        dr.Close();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.Aspx");
    }
}

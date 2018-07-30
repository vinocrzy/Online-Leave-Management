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

public partial class AdminLogin : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        SqlCommand com = new SqlCommand("select * from admininfo where loginid='" + txtadmin.Text + "' and password='" + txtpass.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            Page.RegisterStartupScript("aa", "<script>alert('Invalid LoginId/Password')</script>");
        }
        dr.Close();
        con.Close();
        
    }
}

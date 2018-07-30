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

public partial class Departmentlogin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        SqlCommand com = new SqlCommand("select * from deptinfo where deptid='" +txtdeptid.Text + "' and password='" + txtpass.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Session["Dept_Id"] = txtdeptid.Text;
            Response.Redirect("departmenthome.aspx");
        }
        else
        {
            Page.RegisterStartupScript("aa", "<script>alert('Invalid LoginId/Password')</script>");
        }
        dr.Close();
        con.Close();
    }
}

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

public partial class deptregis : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com=new SqlCommand("insert into deptinfo  values('"+txtdeptname.Text+"')",con);
        com.ExecuteNonQuery();
        con.Close();

        Page.RegisterStartupScript("aa", "<script>alert('Registration completed Successfully')</script>");
       
        txtdeptname.Text = "";
        
    }
}

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

public partial class empreport : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
    }
    protected void btndisplay_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        con.Open();
        com = new SqlCommand("select userid,periodfrom,periodto,purpose,status from empleave where userid='" + Session["userid"].ToString() + "' and periodto BETWEEN '" + CalFrom + "' and '" + CalTo + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
}

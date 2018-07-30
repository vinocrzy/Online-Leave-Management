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

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        DetailsView1.Visible = false ;
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        if (!IsPostBack)
        {
            string query = "SELECT userid FROM empinfo";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = dt.Columns["userid"].ColumnName.ToString();
            DropDownList1.DataBind();
            DropDownList1.Items.Add("-Select-");
            DropDownList1.SelectedIndex = DropDownList1.Items.Count - 1;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com = new SqlCommand("delete from empinfo where userid='" + DropDownList1.Text + "'", con);
        com.ExecuteNonQuery();
        con.Close();
        con.Open();
        com = new SqlCommand("delete from empleave where userid='" + DropDownList1.Text + "'", con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("departmenthome.aspx");
        Page.RegisterStartupScript("aa", "<script>alert('Deleted Successfully')</script>");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        DetailsView1.Visible = true;

        con.Open();

        com = new SqlCommand("select userid,username,deptname,designation from empinfo where userid='" + DropDownList1.Text + "'", con);
        SqlDataAdapter da1 = new SqlDataAdapter(com);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        DetailsView1.DataSource = dt1;
        DetailsView1.DataBind();
        con.Close();
    }
}
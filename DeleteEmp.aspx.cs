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

public partial class DeleteEmp : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
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
        Response.Redirect("AdminHome.aspx");
        Page.RegisterStartupScript("aa", "<script>alert('Deleted Successfully')</script>");

       

        
    }
}

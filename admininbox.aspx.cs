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
using System.Net.Mail;

public partial class admininbox : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    String deptname;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com = new SqlCommand("select deptname from empinfo where userid='" + Session["userid"].ToString() + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            deptname = dr.GetString(0);
        }
        dr.Close();
        con.Close();
        com = new SqlCommand("select * from empleave where ToName ='HOD' and deptname='"+deptname + "' and status = 'Inprocess'",con);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
       
    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com = new SqlCommand("update empleave set status = 'Sanctioned' where LeaveID ='" + GridView1.SelectedRow.Cells[1].Text + "'", con);
       // TextBox1.Text = GridView1.SelectedRow.Cells[10].Text;  
        com.ExecuteNonQuery();
        con.Close();
        btnapply.Visible = false;
        reject.Visible = false;
        Response.Redirect("AdminHome.aspx");
       
    }
    protected void reject_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com = new SqlCommand("update empleave set status = 'Rejected' where LeaveID ='" + GridView1.SelectedRow.Cells[1].Text + "'", con);
        com.ExecuteNonQuery();
        con.Close();
        btnapply.Visible = false;
        reject.Visible = false;
        Response.Redirect("AdminHome.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnapply.Visible = true;
        reject.Visible = true;
    }
}

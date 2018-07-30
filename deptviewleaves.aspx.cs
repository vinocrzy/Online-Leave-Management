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

public partial class deptviewleaves : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    string deptname, Designation, name;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com = new SqlCommand("select username,deptname,designation from empinfo where userid='" + Session["userid"].ToString() + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            name = dr.GetString(0);
            deptname = dr.GetString(1);
            Designation = dr.GetString(2);
        }
        dr.Close();

        com = new SqlCommand("Select LeaveId,userid,periodfrom,periodto,purpose,status from empleave where deptname='" + deptname + "' and Designation='" + Designation + "' and Toname='" + name + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LbtnApprove_Click(object sender, EventArgs e)
    {
        LinkButton lbtn1 = sender as LinkButton;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            LinkButton lbtn2 = (LinkButton)GridView1.Rows[i].FindControl("LbtnApprove");
            if (lbtn1 == lbtn2)
            {
                Session["LID"] = GridView1.Rows[i].Cells[1].Text;
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "ClientScript", "{debugger;window.open('deptviewpopup.aspx',null,'height=400,width=400,status=no,menubar=no,scrollbars=yes,resizable=no,fullscreen=no').OnMove(400,400)}", true);

            }
        }
    }
}

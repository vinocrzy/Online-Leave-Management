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
    String desig;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        com = new SqlCommand("select deptname from empinfo where userid='" + Session["userid"].ToString() + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr.GetString(0);
        }
        dr.Close();
        con.Close();

        con.Open();
        com = new SqlCommand("select designation from empinfo where userid='" + Session["userid"].ToString() + "'", con);
        SqlDataReader dr1 = com.ExecuteReader();
        if (dr1.Read())
        {
            Label2.Text = dr1.GetString(0);
        }
        dr1.Close();
        con.Close();

        txtempid.Text = Session["userid"].ToString();
        desig = Session["designation"].ToString();
        if (desig.Equals("HOD"))
        {
            ddldesig.Text = "Principal";
            SqlDataAdapter da = new SqlDataAdapter("select username from empinfo where designation='Principal'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlEmpName.DataSource = dt;
            ddlEmpName.DataTextField = dt.Columns["username"].ColumnName.ToString();
            ddlEmpName.DataBind();
            ddlEmpName.Items.Add("-select-");
            ddlEmpName.SelectedIndex = ddlEmpName.Items.Count - 1;
        }
        else
        {
            ddldesig.Text = "HOD";
            SqlDataAdapter da = new SqlDataAdapter("select username from empinfo where deptname='" + Label1.Text + "' and  designation='" + ddldesig.Text + "' and userid!='" + Session["userid"].ToString() + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlEmpName.DataSource = dt;
            ddlEmpName.DataTextField = dt.Columns["username"].ColumnName.ToString();
            ddlEmpName.DataBind();
            ddlEmpName.Items.Add("-select-");
            ddlEmpName.SelectedIndex = ddlEmpName.Items.Count - 1;
        }

        

    }
    protected void btnapply_Click(object sender, EventArgs e)
    {
        con.Open();



        com = new SqlCommand("insert into empleave values('" + txtempid.Text + "','" + Label1.Text + "','" + Label2.Text + "','" + ddldesig.Text + "','" + txtFrom.Text + "','" + txtTo.Text + "','" + txtpurpose.Text + "','Inprocess','" + txtTo0.Text + "')", con);
        com.ExecuteNonQuery();
        con.Close();

       

        ddldesig.SelectedIndex = 0;
        ddlEmpName.SelectedIndex = ddlEmpName.Items.Count - 1;
        txtFrom.Text = "";
        txtpurpose.Text = "";
        txtTo.Text = "";
        Response.Redirect("hodleve.aspx");
        Page.RegisterStartupScript("aa", "<script>alert('Send Request Successfully')</script>");

    }
    protected void ddldesig_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddldesig.Text.CompareTo("Principal") == 0)
        {
            SqlDataAdapter da = new SqlDataAdapter("select username from empinfo where designation='Principal'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlEmpName.DataSource = dt;
            ddlEmpName.DataTextField = dt.Columns["username"].ColumnName.ToString();
            ddlEmpName.DataBind();
            ddlEmpName.Items.Add("-select-");
            ddlEmpName.SelectedIndex = ddlEmpName.Items.Count - 1;
        }
        else
        {

            SqlDataAdapter da = new SqlDataAdapter("select username from empinfo where deptname='" + Label1.Text + "' and  designation='" + ddldesig.Text + "' and userid!='" + Session["userid"].ToString() + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlEmpName.DataSource = dt;
            ddlEmpName.DataTextField = dt.Columns["username"].ColumnName.ToString();
            ddlEmpName.DataBind();
            ddlEmpName.Items.Add("-select-");
            ddlEmpName.SelectedIndex = ddlEmpName.Items.Count - 1;
        }
        

    }
    }

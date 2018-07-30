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

public partial class UpdateEmp : System.Web.UI.Page
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
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = dt.Columns["userid"].ColumnName.ToString();
            DropDownList3.DataBind();
            DropDownList3.Items.Add("-Select-");
            DropDownList3.SelectedIndex = DropDownList3.Items.Count - 1;

           
               
                SqlCommand comm = new SqlCommand("select deptname from deptinfo", con);
                SqlDataAdapter da1 = new SqlDataAdapter(comm);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                ddldeptname.DataSource = dt1;
                ddldeptname.DataTextField = dt1.Columns["deptname"].ColumnName.ToString();
                ddldeptname.DataBind();
                ddldeptname.Items.Add("-Select-");
                ddldeptname.SelectedIndex = ddldeptname.Items.Count - 1;
               
           

        }
        con.Close();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        com = new SqlCommand("select * from empinfo where userid='" + DropDownList3.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            txtempname.Text = dr.GetString(2);
            ddldeptname.SelectedItem.Text = dr.GetString(3);
            ddldesig.SelectedItem.Text = dr.GetString(4);
            txtdob.Text = dr.GetString(5);
            ddlcategory.SelectedItem.Text = dr.GetString(6);
            ddlgender.SelectedItem.Text = dr.GetString(7);
            txtadmission.Text = dr.GetString(8);
            txtqual.Text = dr.GetString(9);

        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new SqlCommand("update empinfo set username='" + txtempname.Text + "', deptname='" + ddldeptname.Text + "',designation='" + ddldesig.Text + "',dob='" + txtdob.Text + "',category='" + ddlcategory.Text + "',gender='" + ddlgender.Text + "',dateofadmission='" + txtadmission.Text + "',qualification='" + txtqual.Text + "' where userid='" + DropDownList3.Text + "'", con);
        com.ExecuteNonQuery();
        con.Close();
       Page.RegisterStartupScript("aa", "<script>alert('Details Updated Successfullys')</script>");

       txtempname.Text = "";
       ddldesig.SelectedIndex = 0;
       ddldeptname.SelectedIndex = ddldeptname.Items.Count - 1;
       txtdob.Text = "";
       ddlcategory.SelectedIndex = 0;
       ddlgender.SelectedIndex = 0;
       txtadmission.Text = "";
       txtqual.Text = "";
       Response.Redirect("AdminHome.aspx");
    }
}

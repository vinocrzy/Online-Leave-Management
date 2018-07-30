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


public partial class Employee_Regis : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label11.Visible = false; 
         con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
         if (IsPostBack == false)
         {
             con.Open();
             SqlCommand comm = new SqlCommand("select deptname from deptinfo", con);
             SqlDataAdapter da = new SqlDataAdapter(comm);
             DataTable dt = new DataTable();
             da.Fill(dt);
             ddldeptname.DataSource = dt;
             ddldeptname.DataTextField = dt.Columns["deptname"].ColumnName.ToString();
             ddldeptname.DataBind();
             ddldeptname.Items.Add("-Select-");
             ddldeptname.SelectedIndex = ddldeptname.Items.Count - 1;
             con.Close();
         }
         
    }


     
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            com = new SqlCommand("insert into empinfo values('" + txtempid.Text + "','" + txtpassword.Text + "','" + txtempname.Text + "','" + ddldeptname.Text + "','" + ddldesig.Text + "','" + txtdob.Text + "','" + ddlcategory.Text + "','" + ddlgender.Text + "','" + txtadmission.Text + "','" + txtqual.Text + "')", con);
            com.ExecuteNonQuery();
            con.Close();

            Page.RegisterStartupScript("aa", "<script>alert('Registration completed Successfully')</script>");

            txtempid.Text = "";
            txtpassword.Text = "";
            txtempname.Text = "";
            ddldesig.SelectedIndex = 0;
            ddldeptname.SelectedIndex = ddldeptname.Items.Count - 1;
            ddlgender.SelectedIndex = 0;
            txtqual.Text = "";
            txtdob.Text = "";
            ddlcategory.SelectedIndex = 0;
            txtadmission.Text = "";
            Response.Redirect("departmenthome.aspx");

        }
        catch (SqlException sqlEx)
        {
            if (sqlEx.Message.StartsWith("Violation of PRIMARY KEY constraint"))
            {

                Label11.Visible = true;
            }
            else
                throw;
        }

    }
}

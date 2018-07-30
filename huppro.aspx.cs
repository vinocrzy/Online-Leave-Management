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
    string dept, index;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Text = Session["userid"].ToString();
        con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        if (!IsPostBack)
        {
            SqlCommand comm = new SqlCommand("select deptname from deptinfo", con);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddldeptname.DataSource = dt;
            ddldeptname.DataTextField = dt.Columns["deptname"].ColumnName.ToString();
            ddldeptname.DataBind();
            ddldeptname.Items.Add("-Select-");
            ddldeptname.SelectedIndex = ddldeptname.Items.Count - 1;

            com = new SqlCommand("select * from empinfo where userid='" + Label10.Text + "'", con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                txtempname.Text = dr.GetString(2);
                ddldeptname.Text = dr.GetString(3);
                ddldesig.Text = dr.GetString(4);
                txtdob.Text = dr.GetString(5);
                ddlcategory.Text = dr.GetString(6);
                ddlgender.Text = dr.GetString(7);
                txtadmission.Text = dr.GetString(8);
                txtqual.Text = dr.GetString(9);

            }
            dr.Close();


            //  for(int i=0;i<ddldeptname.Items.Count;i++)
            //{
            //    if(ddldeptname.Items[i].ToString()==dept)
            //    {                
            //       //index = ddldeptname.Items[i].Text;

            //    }
            //}
            ////ddldeptname.SelectedItem.Text = index;

        }



        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new SqlCommand("update empinfo set username='" + txtempname.Text + "', password='" + txtqual0.Text + "', deptname='" + ddldeptname.Text + "',designation='" + ddldesig.Text + "', dob='" + txtdob.Text + "',category='" + ddlcategory.Text + "',gender='" + ddlgender.Text + "',dateofadmission='" + txtadmission.Text + "',qualification='" + txtqual.Text + "' where userid='" + Label10.Text + "'", con);
        com.ExecuteNonQuery();
        con.Close();
        Page.RegisterStartupScript("aa", "<script>alert('Details Updated Successfully')</script>");

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
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

public partial class deptviewpopup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    string deptname;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        con.Open();
       
        if (IsPostBack == false)
        {
            com = new SqlCommand("select userid,periodfrom,periodto,purpose,status from empleave where LeaveId='" + Session["LID"].ToString() + "'", con);
            SqlDataReader dr1 = com.ExecuteReader();
            if (dr1.Read())
            {
                TextBox1.Text = dr1.GetString(0);
                TextBox3.Text = dr1.GetString(1);
                TextBox4.Text = dr1.GetString(2);
                TextBox2.Text = dr1.GetString(3);
                DropDownList1.Text = dr1.GetString(4);
            }
            dr1.Close();

        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        com = new SqlCommand("update empleave set Status='" + DropDownList1.SelectedItem.Text + "' where LeaveId='"+Session["LID"].ToString()+ "'", con);
        com.ExecuteNonQuery();
        con.Close();

        Page.RegisterStartupScript("aa", "<script>alert('Details Updated Successfullys')</script>");
    }
}
    

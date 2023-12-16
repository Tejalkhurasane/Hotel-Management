using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into feedback values('" + f1.Text + "','" + f2.Text + "','" + f3.Text + "','" + f4.Text + "','" + f5.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            f7.Visible = true;
            f7.Text = "your data save successfully";
            f1.Text = "";
            f2.Text="";
            f3.Text = "";
            f4.Text="";
            f5.Text="";
           
        }
        catch (Exception e1)
        {
            f7.Visible = true;
            f7.Text = "error=" + e1.Message;
        }

    }
}
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
        HiddenField1.Value = Session["id"].ToString();
        g1.Text = HiddenField1.Value;
    }





    protected void f11_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where id='" + g1.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                g1.Text = reader[0].ToString();
                f2.Text = reader[1].ToString();
                f3.Text = reader[2].ToString();
                f4.Text = reader[3].ToString();
                f5.Text = reader[4].ToString();
                f6.Text = reader[5].ToString();
                f7.Text = reader[6].ToString();
                f8.Text = reader[7].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            f12.Visible = true;
            f12.Text = ("Processor Usage" + ex.Message);
        }
      
       
    }
    protected void f9_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update register set  id='" + g1.Text + "', name='" + f2.Text + "', email='" + f3.Text + "',address='" + f4.Text + "',phoneno='" + f5.Text + "',username='"+f6.Text+"',password='"+f7.Text+"',gender='"+f9.Text+"' where id='" + (g1.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            f12.Visible = true;
            f12.Text = "your data updated successfully";

            g1.Text="";
            f2.Text = "";
            f3.Text="";
            f4.Text = "";
            f5.Text = "";
            f6.Text = "";
            f7.Text = "";
            f8.Text = "";

        }
        catch (Exception e1)
        {
            f12.Visible = true;
            f12.Text = "error=" + e1.Message;


        }
    }
}
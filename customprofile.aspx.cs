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
        b10.Text = HiddenField1.Value;

    }
    protected void b19_Click(object sender, EventArgs e)
    {
         try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update register set  id='" + b10.Text + "', name='" + b12.Text + "', email='" + b13.Text + "',address='" + b14.Text + "',phoneno='" + b15.Text + "',username='"+b16.Text+"',password='"+b17.Text+"',gender='"+b19.Text+"' where id='" + (b10.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            b21.Visible = true;
            b21.Text = "your data updated successfully";

            b10.Text="";
            b12.Text = "";
            b13.Text="";
            b14.Text = "";
            b15.Text = "";
            b16.Text = "";
            b17.Text = "";
            b18.Text = "";

        }
        catch (Exception e1)
        {
            b21.Visible = true;
            b21.Text = "error=" + e1.Message;


        }
    }

    protected void b11_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where id='" + b10.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                b10.Text = reader[0].ToString();
                b12.Text = reader[1].ToString();
                b13.Text = reader[2].ToString();
                b14.Text = reader[3].ToString();
                b15.Text = reader[4].ToString();
                b16.Text = reader[5].ToString();
                b17.Text = reader[6].ToString();
                b18.Text = reader[7].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            b21.Visible = true;
            b21.Text = ("Processor Usage" + ex.Message);
        }
      
    }
}
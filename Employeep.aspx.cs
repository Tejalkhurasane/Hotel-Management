using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = Session["staffid"].ToString();
       emp1.Text = HiddenField1.Value;
    }
    protected void emp7_Click(object sender, EventArgs e)
    {
         try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from staff where staffid='" + emp1.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                emp1.Text = reader[0].ToString();
                 emp2.Text = reader[1].ToString();
                emp3.Text = reader[2].ToString();
                emp4 .Text = reader[3].ToString();
               emp5 .Text = reader[4].ToString();
               emp6.Text = reader[5].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            emp10.Visible = true;
            emp10.Text = ("Processor Usage" + ex.Message);
        }
    }

    protected void emp8_Click(object sender, EventArgs e)
    {
         con.Open();
            SqlCommand cmd = new SqlCommand("update staff set staffid='"+emp1.Text+"',staffdept='" + emp2.SelectedItem.Text+ "', staffpost='" + emp3.SelectedItem.Text + "', staffname='" + emp4.Text + "', address='" + emp5.Text + "', phoneno='" + emp6.Text + "' where staffid='" + emp1.Text   + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            emp10.Visible = true;
            emp10.Text = "your data updated successfully";
            emp1.Text="";
            emp2.ClearSelection();
            emp3.ClearSelection();
            emp4.Text = "";
            emp5.Text = "";
            emp6.Text = "";
           
        }


    
}
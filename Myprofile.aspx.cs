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
    protected void p9_Click(object sender, EventArgs e)
    {
 try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from hotel where hotelid='" + p10.SelectedItem.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                p10.Text = reader[0].ToString();
                p3.Text = reader[1].ToString();
                p4.Text = reader[2].ToString();
                p1.Text= reader[3].ToString();
                p6.Text = reader[4].ToString();
                
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {

        }
    }




    protected void p7_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update hotel set hotelid='" + p10.Text + "', hotelname='" + p3.Text + "', ownername='" + p4.Text + "', city='" + p1.Text + "' , phoneno='" + p6.Text + "' where hotelid='" + (p10.SelectedItem.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            m19.Visible = true;
            m19.Text = "your data updated successfully";
            p10.ClearSelection();
            p3.Text = "";
            p4.Text = "";
            p1.ClearSelection();
            p6.Text = "";
        }
        catch (Exception e1)
        {
            m19.Visible = true;
            m19.Text = "error=" + e1.Message;


        }
    }
}
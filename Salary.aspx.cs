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




    protected void addsalary_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void updatesalary_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void deletesalary_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void staffadd_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into AddSalary values('" + s1.SelectedItem.Text + "','" + s2.Text + "','" + s3.Text + "','" + s4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            l5.Visible = true;
            l5.Text = "your data save successfully";
            s1.ClearSelection();
            s2.Text = "";
            s3.Text = "";
            s4.Text = "";
        }
        catch (Exception e1)
        {
            l5.Visible = true;
            l5.Text = "error=" + e1.Message;
        }
    }




    protected void search_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AddSalary where staffid='" + s5.SelectedItem.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                s5.Text = reader[0].ToString();
                s6.Text = reader[1].ToString();
                s7.Text = reader[2].ToString();
                s8.Text = reader[3].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            l6.Visible = true;
            l6.Text = ("Processor Usage" + ex.Message);
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update AddSalary set staffid='" + s5.SelectedItem.Text + "', staffname='" + s6.Text + "', Date='" + s7.Text + "', Salary='" + s8.Text + "' where staffid='" + (s5.SelectedItem.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            l6.Visible = true;
            l6.Text = "your data updated successfully";
            s5.ClearSelection();
            s6.Text = "";
            s7.Text = "";
            s8.Text = "";
        }
        catch (Exception e1)
        {
            l6.Visible = true;
            l6.Text = "error=" + e1.Message;


        }
    }


    protected void s10_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from AddSalary where staffid='" + s9.SelectedItem.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            m1.Visible = true;
            m1.Text = "data deleted successfully";
            s9.ClearSelection();
            s6.Text = "";
            s7.Text = "";
            s8.Text = "";
        }
        catch (Exception e1)
        {
            m1.Visible = true;
            m1.Text = "error=" + e1.Message;
        }
    }


    protected void s18_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from staff where staffid='" + s1.SelectedItem.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                s1.Text = reader[0].ToString();
                s2.Text = reader[3].ToString();
                
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            s19.Visible = true;
            s19.Text = ("Processor Usage" + ex.Message);
        }

    }
}
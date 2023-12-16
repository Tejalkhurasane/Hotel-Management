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


    protected void art_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void arf_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void aid_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void apd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void acd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    


 protected void s1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into dishtype values('" + r1.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language=javascript>alert('dishtype Added Successfully.')</script>");
        r1.Text = "";
       
    }


    protected void s2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Facilities values('" + r2.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language=javascript>alert('roomfacilities Added Successfully.')</script>");
        r2.Text = "";
       

    }

    protected void s4_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into roomtype values('" + i1.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            m2.Visible = true;
            m2.Text = "your data save successfully";
            i1.Text = "";
        }
        catch (Exception e1)
        {
            m2.Visible = true;
            m2.Text = "error=" + e1.Message;
        }
    }
    protected void s5_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dept values('" + p1.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            m3.Visible = true;
            m3.Text = "your data save successfully";
            p1.Text = "";
        }
        catch (Exception e1)
        {
            m3.Visible = true;
            m3.Text = "error=" + e1.Message;
        }
    }
    protected void s6_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into post values('" + c1.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            m4.Visible = true;
            m4.Text = "your data save successfully";
            c1.Text = "";
        }
        catch (Exception e1)
        {
            m4.Visible = true;
            m4.Text = "error=" + e1.Message;
        }
    }

    protected void addcity_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
    protected void addl_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 6;
    }
    protected void c3_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into detail values('" + y6.SelectedItem.Text + "','"+y8.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            m5.Visible = true;
            m5.Text = "your data save successfully";
            y6.ClearSelection();
            y8.Text = "";
        }
        catch (Exception e1)
        {
            m5.Visible = true;
            m5.Text = "error=" + e1.Message;
        }
    }


    protected void locations_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tservice values('" + c5.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            m6.Visible = true;
            m6.Text = "your data save successfully";
            c5.Text = "";
        }
        catch (Exception e1)
        {
            m6.Visible = true;
            m6.Text = "error=" + e1.Message;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addtabletype_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 7;
    }
    protected void addtt_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ttype values('" + addttype.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            tttt.Visible = true;
            tttt.Text = "your data save successfully";
            addttype.Text = "";
        }
        catch (Exception e1)
        {
            tttt.Visible = true;
            tttt.Text = "error=" + e1.Message;
        }
    }
}
﻿using System;
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
        autogenerated();
        if (t9.PostedFile != null && t9.PostedFile.ContentLength > 0)
            UpLoadAndDisplay();
        if (t11.PostedFile != null && t11.PostedFile.ContentLength > 0)
            UpLoadAndDisplay1();
    }
    private void UpLoadAndDisplay()
    {
        string imgName = t9.FileName;
        string imgPath = "profile/" + imgName;
        int imgSize = t9.PostedFile.ContentLength;
        if (t9.PostedFile != null && t9.PostedFile.FileName != "")
        {

            t9.SaveAs(Server.MapPath(imgPath));
            t8.ImageUrl = "~/" + imgPath;
        }
    }
    private void UpLoadAndDisplay1()
    {
        string imgName = t11.FileName;
        string imgPath = "profile/" + imgName;
        int imgSize = t11.PostedFile.ContentLength;
        if (t11.PostedFile != null && t11.PostedFile.FileName != "")
        {

            t11.SaveAs(Server.MapPath(imgPath));
            t10.ImageUrl = "~/" + imgPath;
        }





    }
    void autogenerated()
    {
        int count = 0;
        string str;
        SqlCommand com;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        str = "Select count(tableid) from table1";
        com = new SqlCommand(str, con);
        con.Open();
        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        t1.Text = "T00" + count.ToString();

        con.Close();
    }
       
    


    protected void addtable_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void updatetable_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void deletetable_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void add_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into table1 values('" + t1.Text + "','" + t2.SelectedItem.Text + "','" + t3.SelectedItem.Text + "','" + t21.SelectedItem.Text + "','" + t22.SelectedItem.Text + "','" + t23.SelectedItem.Text + "','" + t8.ImageUrl + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            t12.Visible = true;
            t12.Text = "your data save successfully";
            t1.Text = "";
            t2.ClearSelection();
            t3.ClearSelection();
            t21.ClearSelection();
            t22.ClearSelection();
            t23.ClearSelection();
             t8.ImageUrl = "";
        }
        catch (Exception e1)
        {
            t12.Visible = true;
            t12.Text = "error=" + e1.Message;
        }
    }
    protected void search_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from table1 where tableid='" + t4.SelectedItem.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                t4.Text = reader[0].ToString();
                t5.Text = reader[1].ToString();
                t6.Text = reader[2].ToString();
                t25.Text = reader[3].ToString();
                t26.Text = reader[4].ToString();
                t27.Text = reader[5].ToString();
                t10.ImageUrl = reader[6].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            t13.Visible = true;
            t13.Text = ("Processor Usage" + ex.Message);
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update table1 set  tableid='" + t4.SelectedItem.Text + "',noofmemb='" + t5.SelectedItem.Text + "', type='" + t25.SelectedItem.Text + "',services='" + t6.SelectedItem.Text + "',service1='"+t26.SelectedItem.Text+"',service2='"+t27.SelectedItem.Text+"',img='" + t10.ImageUrl + "' where tableid='" + (t4.SelectedItem.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            t13.Visible = true;
            t13.Text = "your data updated successfully";

            t4.ClearSelection();
            t5.ClearSelection();
            t6.ClearSelection();
            t25.ClearSelection();
            t26.ClearSelection();
            t27.ClearSelection();
            t10.ImageUrl = "";

        }
        catch (Exception e1)
        {
            t13.Visible = true;
            t13.Text = "error=" + e1.Message;


        }
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from table1 where tableid='" + t7.SelectedItem.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            t14.Visible = true;
            t14.Text = "data deleted successfully";
            t7.ClearSelection();
            t4.ClearSelection();
            t5.ClearSelection();
            t6.ClearSelection();
            t25.ClearSelection();
            t26.ClearSelection();
            t27.ClearSelection();
           
            t10.ImageUrl = "";
        }
        catch (Exception e1)
        {
            t14.Visible = true;
            t14.Text = "error=" + e1.Message;
        }
    }
}
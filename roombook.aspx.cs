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
        HiddenField1.Value = Request.QueryString["id"];
        HiddenField2.Value = Session["id"].ToString();
 try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from acroom where roomid='" + HiddenField1.Value + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                l35.Text = reader[0].ToString();
                l36.Text = reader[1].ToString();
                l37.Text = reader[2].ToString();
                l38.Text = reader[3].ToString();
                l39.Text = reader[4].ToString();
                l40.Text = reader[5].ToString();
                 l41.Text = reader[6].ToString();
                 l42.Text = reader[7].ToString();
                 l43.Text = reader[8].ToString();
                image2.ImageUrl = reader[9].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            label3.Visible = true;
            label3.Text = ("Processor Usage" + ex.Message);
        }
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where id='" + HiddenField2.Value + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                l44.Text = reader[0].ToString();
                l45.Text = reader[1].ToString();
                l46.Text = reader[2].ToString();
                l47.Text = reader[3].ToString();
                l48.Text = reader[4].ToString();
                l49.Text = reader[5].ToString();
                l50.Text = reader[6].ToString();
                l51.Text = reader[7].ToString();
                
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            label4.Visible = true;
            label4.Text = ("Processor Usage" + ex.Message);
        }
    }
    void autogenerated()
    {
        int count = 0;
        string str;
        SqlCommand com;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        str = "Select count(transactionid) from roombook";
        com = new SqlCommand(str, con);
        con.Open();
        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        t31.Text = "T00" + count.ToString();

        con.Close();
    }

    protected void b2_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into roombook  values('" + t31.Text + "','" + l35.Text + "','" + l44.Text + "','"+b7.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            b4.Visible = true;
            Response.Write("<script language=javascript>alert('Data Added Successfully.')</script>");
            t31.Text = "";
            l35.Text = "";
            l44.Text = "";
            b7.Text = "";

        }
        catch (Exception e1)
        {
            b4.Visible = true;
            b4.Text = "error=" + e1.Message;
        }
    }
}
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
            SqlCommand cmd = new SqlCommand("select * from table1 where tableid='" + HiddenField1.Value + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                l21.Text = reader[0].ToString();
                l22.Text = reader[1].ToString();
                l23.Text = reader[2].ToString();
                l24.Text = reader[3].ToString();
                l25.Text = reader[4].ToString();
                l26.Text = reader[5].ToString();
                Image1.ImageUrl = reader[6].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            Label1.Visible = true;
            Label1.Text = ("Processor Usage" + ex.Message);
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
                l27.Text = reader[0].ToString();
                l28.Text = reader[1].ToString();
                l29.Text = reader[2].ToString();
                l30.Text = reader[3].ToString();
                l31.Text = reader[4].ToString();
                l32.Text = reader[5].ToString();
                l33.Text = reader[6].ToString();
                l34.Text = reader[7].ToString();
                
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            Label2.Visible = true;
            Label2.Text = ("Processor Usage" + ex.Message);
        }
    }
    void autogenerated()
    {
        int count = 0;
        string str;
        SqlCommand com;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        str = "Select count(transactionid) from booktable";
        com = new SqlCommand(str, con);
        con.Open();
        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        t30.Text = "T00" + count.ToString();

        con.Close();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into booktable  values('" + t30.Text + "','" + l21.Text+ "','" + l27.Text + "','"+b6.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            b3.Visible = true;
            Response.Write("<script language=javascript>alert('Data Added Successfully.')</script>");
            t30.Text = "";
            l21.Text="";
            l27.Text = "";
            b6.Text = "";
           
        }
        catch (Exception e1)
        {
            b3.Visible = true;
            b3.Text = "error=" + e1.Message;
        }
    }
}
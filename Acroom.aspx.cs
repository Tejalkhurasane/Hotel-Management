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
        if (j1.PostedFile != null && j1.PostedFile.ContentLength > 0)
            UpLoadAndDisplay();
        if (j3.PostedFile != null && j3.PostedFile.ContentLength > 0)
            UpLoadAndDisplay1();
    }
    private void UpLoadAndDisplay()
    {
        string imgName = j1.FileName;
        string imgPath = "profile/" + imgName;
        int imgSize = j1.PostedFile.ContentLength;
        if (j1.PostedFile != null && j1.PostedFile.FileName != "")
        {

            j1.SaveAs(Server.MapPath(imgPath));
            img1.ImageUrl = "~/" + imgPath;
        }
    }
               private void UpLoadAndDisplay1()
    {
        string imgName = j3.FileName;
        string imgPath = "profile/" + imgName;
        int imgSize =j3.PostedFile.ContentLength;
        if (j3.PostedFile != null && j3.PostedFile.FileName != "")
        {

            j3.SaveAs(Server.MapPath(imgPath));
            img2.ImageUrl = "~/" + imgPath;
        }





        }
    void autogenerated()
    {
        int count = 0;
        string str;
        SqlCommand com;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        str = "Select count(roomid) from acroom";
        com = new SqlCommand(str, con);
        con.Open();
        count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        z1.Text = "R00" + count.ToString();

        con.Close();
    }
       
    



    protected void addac_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void updateroom_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void deleteac_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }


    protected void roomadd_Click(object sender, EventArgs e)
    {
try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into acroom values('" + z1.Text + "','" + r22.SelectedItem.Text + "','" + r2.Text + "','" + r3.SelectedItem.Text + "','" + r33.SelectedItem.Text + "','" + r34.SelectedItem.Text + "','" + r35.SelectedItem.Text + "','" + r4.SelectedItem.Text + "','" + r5.Text + "','" + img1.ImageUrl + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            m8.Visible = true;
            m8.Text = "your data save successfully";
            z1.Text = "";
            r22.ClearSelection();
            r2.Text = "";
            r3.ClearSelection();
            r33.ClearSelection();
            r34.ClearSelection();
            r35.ClearSelection();
            r4.ClearSelection();
            r5.Text = "";
            img1.ImageUrl = "";
        }
        catch (Exception e1)
        {
            m8.Visible = true;
            m8.Text = "error=" + e1.Message;
        }

    }
    

    protected void rsearch_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from acroom where roomid='" + z2.SelectedItem.Text + "  ' ", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                z2.Text = reader[0].ToString();
                r23.Text=reader[1].ToString();
                r7.Text = reader[2].ToString();
                r8.Text = reader[3].ToString();
                r36.Text = reader[4].ToString();
                r37.Text = reader[5].ToString();
                r38.Text = reader[6].ToString();
                r9.Text = reader[7].ToString();
                r10.Text = reader[8].ToString();
                img2.ImageUrl = reader[9].ToString();
                reader.Close();
                con.Close();
            }
        }
        catch (NullReferenceException ex)
        {
            m9.Visible = true;
            m9.Text = ("Processor Usage" + ex.Message);
        }
    }
    protected void rupdate_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update acroom set  roomid='" + z2.Text + "',roomtype='" + r23.SelectedItem.Text + "', roomsize='" + r7.Text + "', facilities='" + r8.SelectedItem.Text + "',facility1='" + r36.SelectedItem.Text + "',facility2='" + r37.SelectedItem.Text + "',facility3='" + r38.SelectedItem.Text + "',noofbeds='"+r9.SelectedItem.Text+"',roomrent='" + r10.Text + "',img='" + img2.ImageUrl + "' where roomid='" + (z2.SelectedItem.Text).ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            m9.Visible = true;
            m9.Text = "your data updated successfully";
            
            z2.ClearSelection();
            r23.ClearSelection();
            r7.Text = "";
            r8.ClearSelection();
            r36.ClearSelection();
            r37.ClearSelection();
            r38.ClearSelection();
            r9.ClearSelection();
            r10.Text = "";
            img2.ImageUrl = "";

        }
        catch (Exception e1)
        {
            m9.Visible = true;
            m9.Text = "error=" + e1.Message;


        }
    }
    protected void roomdelete_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from acroom where roomid='" +selectrid.SelectedItem .Text+ "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
           
            m10.Visible = true;
            m10.Text = "data deleted successfully";
            selectrid.ClearSelection();
            z2.ClearSelection();
            r23.ClearSelection();
            r7.Text = "";
            r8.ClearSelection();
            r36.ClearSelection();
            r37.ClearSelection();
            r38.ClearSelection();
            r9.ClearSelection();
            r10.Text="";
            img2.ImageUrl= "";
        }
        catch (Exception e1)
        {
            m10.Visible = true;
            m10.Text = "error=" + e1.Message;
        }
    }











    
}
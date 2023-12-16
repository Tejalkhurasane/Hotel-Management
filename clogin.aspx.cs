using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = Request.QueryString["id"];
        HiddenField2.Value = Request.QueryString["rid"];
    }


    protected void customlogin_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from register where id='" + customid.Text + "' and password ='" + custompass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["id"] = customid.Text;
                Response.Redirect("tablebook.aspx?id=" + HiddenField1.Value);

            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }

        }
        else  if (Request.QueryString["rid"] != null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from register where id='" + customid.Text + "' and password ='" + custompass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["id"] = customid.Text;
                Response.Redirect("roombook.aspx?id=" + HiddenField2.Value);
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }

        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from register where id='" + customid.Text + "' and password ='" + custompass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["id"] = customid.Text;

                Response.Redirect("customprofile.aspx");

            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
        }
        
        
        
      
       
    }

    
    
}
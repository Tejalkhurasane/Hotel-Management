using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void j3_Click(object sender, EventArgs e)
    {
         if ((j1.Text == "r1") && (j2.Text == "r1"))
        {
            Response.Redirect("Acroom.aspx");

        }
        else
        {
            Response.Write("<script>alert('Please enter valid Username and Password')</script>");
        }


    }
    
}
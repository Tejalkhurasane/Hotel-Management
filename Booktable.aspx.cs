﻿using System;
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void book_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("clogin.aspx?id=" + e.CommandArgument);
    }
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("clogin.aspx?id=" + e.CommandArgument);
    }
}
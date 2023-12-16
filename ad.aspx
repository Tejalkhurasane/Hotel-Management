<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ad.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            width: 57%;
            height: 64px;
        }
        .auto-style15 {
            height: 80px;
        }
        .text {
            border: 2px solid black;
            border-radius: 20px;
        }
    .auto-style18 {
        width: 122px;
        height: 81px;
        font-size: x-large;
    }
    .auto-style19 {
        height: 81px;
        width: 206px;
    }
    .auto-style20 {
        width: 122px;
        height: 80px;
        font-size: x-large;
    }
    .auto-style21 {
        height: 80px;
        width: 206px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
   
        <form id="form1" runat="server">
   
        <strong><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login<br />
            <br />
            </span>
           <center> <table class="auto-style9" cellpading="2px" cellspacing="2px" height="200px" width="450px" border="2px">
                <tr>
                    <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp; Admin Id</td>
                    <td class="auto-style21">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Adminid" runat="server" BorderColor="Black" Height="35px" Width="166px" CssClass="text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                    <td class="auto-style19">
   
        <strong>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="password" runat="server" BorderColor="Black" Height="35px" Width="166px" CssClass="text"></asp:TextBox>
        </strong>
   
    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Button ID="Button1" runat="server" BorderColor="Black" Height="41px" Text="Login" Width="104px" Font-Size="X-Large" BackColor="#3399FF" ForeColor="Black" />
        </strong>
   
    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Button ID="Button2" runat="server" BorderColor="Black" Height="41px" Text="Cancel" Width="104px" Font-Size="X-Large" BackColor="#3399FF" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table></center>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            For create New Account Click on  <a href="Signin.aspx">Signin</a>
            
            
        </strong>
   
    
        </form>
   
    
</asp:Content>


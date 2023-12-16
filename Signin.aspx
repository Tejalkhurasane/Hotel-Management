<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            width: 47%;
            height: 501px;
        }
        .auto-style11 {
            width: 132px;
            height: 50px;
            font-size: large;
            font-weight: bold;
        }
        .auto-style12 {
            height: 50px;
            width: 322px;
        }
        .auto-style14 {
            height: 51px;
            width: 322px;
        }
        .auto-style15 {
            width: 132px;
            height: 71px;
            font-size: large;
            font-weight: bold;
        }
        .auto-style16 {
            height: 71px;
            width: 322px;
        }
        .auto-style17 {
            width: 132px;
            height: 51px;
            font-size: large;
            font-weight: bold;
        }
        .auto-style18 {
            height: 82px;
        }
        .text {
            border: 2px solid black;
            border-radius: 20px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    

    
  

    

    
        <form id="form1" runat="server">

    

    
  

    

    
        <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Admin</strong> <strong>Signin Here</strong><br />
        <br />
        </span>
    <center>   <table class="auto-style9" border="2px" height="500px" width="400px">
            <tr>
                <td class="auto-style11" align="center" height="50px" width="140px">First Name:</td>
                <td class="auto-style12"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="firstname" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" align="center" height="50px" width="140px">Last Name:</td>
                <td class="auto-style12" height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="lastname" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" align="center" height="50px" width="140px">New username:</td>
                <td class="auto-style12"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="newusername" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" align="center" height="50px" width="140px">Password:</td>
                <td class="auto-style12"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="password" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" align="center" height="50px" width="140px">Confirm Password:</td>
                <td class="auto-style12"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="confirmpassword" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" align="center" height="50px" width="140px">Age:</td>
                <td class="auto-style12"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="age" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" align="center" height="50px" width="140px">E-mail:</td>
                <td class="auto-style14"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="email" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" align="center" height="50px" width="140px">Mobile No:</td>
                <td class="auto-style14"  height="50px" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="mobileno" runat="server" Height="35px" Width="172px" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" align="center" height="50px" width="140px">Gender:</td>
                <td class="auto-style16"  height="50px" width="260px" align="center">
                  
                     <asp:RadioButtonList ID="gender" runat="server" Height="58px" Width="158px" OnSelectedIndexChanged="gender_SelectedIndexChanged">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2"  height="80px" width="400px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="46px" Text="Submit" Width="108px" Font-Size="X-Large" BackColor="#FF66FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="43px" Text="Cancel" Width="121px" Font-Size="X-Large" BackColor="#FF66FF" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table></center> 
&nbsp;

    

    
  

    

        </form>

    

    
  

    

</asp:Content>


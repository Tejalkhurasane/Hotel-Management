<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="customprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            width: 47%;
            height: 501px;
        }
        .auto-style14 {
            height: 67px;
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
            height: 67px;
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
         .auto-style23 {
             width: 132px;
             height: 69px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style24 {
             height: 69px;
             width: 322px;
         }
         .auto-style25 {
             width: 132px;
             height: 78px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style26 {
             height: 78px;
             width: 322px;
         }
         .auto-style27 {
             width: 132px;
             height: 77px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style28 {
             height: 77px;
             width: 322px;
         }
         .auto-style29 {
             width: 132px;
             height: 70px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style30 {
             height: 70px;
             width: 322px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1" runat="server">
    <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>My Profile</strong><br />
        <br />
        </span>
    <center>   <table class="auto-style9" border="2px" height="500px" width="400px">
            <tr>
                <td class="auto-style23" align="center" width="140px">Customer Id:</td>
                <td class="auto-style24" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b10" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                &nbsp;<asp:Button ID="b11" runat="server" Font-Bold="True" Font-Size="Large" Height="45px"  Text="Search" Width="113px" OnClick="b11_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25" align="center" width="140px">Customer Name:</td>
                <td class="auto-style26" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b12" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23" align="center" width="140px">Email:</td>
                <td class="auto-style24" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b13" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27" align="center" width="140px">Address:</td>
                <td class="auto-style28" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b14" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" align="center" width="140px">Phone No.:</td>
                <td class="auto-style30" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b15" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" align="center" width="140px">User Name:</td>
                <td class="auto-style26" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b16" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" align="center" width="140px">Password:</td>
                <td class="auto-style14" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="b17" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style15" align="center" height="50px" width="140px">Gender:</td>
                <td class="auto-style16"  height="50px" width="260px" align="center">
                  
                     <asp:RadioButtonList ID="b18" runat="server" Height="58px" Width="158px" Font-Size="X-Large" >
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2"  height="80px" width="400px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="b19" runat="server" Height="46px" Text="Update" Width="108px" Font-Size="X-Large" BackColor="#FF66FF" OnClick="b19_Click"   />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="b20" runat="server" Height="43px" Text="Cancel" Width="121px" Font-Size="X-Large" BackColor="#FF66FF"  />
                    &nbsp;<br />
                    <asp:Label ID="b21" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </td>
            </tr>
        </table></center> 
&nbsp;

    

     </form>

  

</asp:Content>


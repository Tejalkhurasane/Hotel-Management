<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style11 {
            font-size: xx-large;
        }
        .auto-style12 {
            width: 59%;
            height: 128px;
        }
        .auto-style15 {
            height: 75px;
        }
        .auto-style21 {
            height: 75px;
            width: 251px;
            font-size: x-large;
        }
        .auto-style25 {
            height: 82px;
            width: 251px;
            font-size: x-large;
        }
        .auto-style26 {
            height: 82px;
        }
        .auto-style27 {
            height: 90px;
            width: 251px;
            font-size: x-large;
        }
        .auto-style28 {
            height: 90px;
        }
        .auto-style29 {
            height: 87px;
            width: 251px;
            font-size: x-large;
        }
        .auto-style30 {
            height: 87px;
        }
        .auto-style31 {
            height: 81px;
        }
        .auto-style32 {
            height: 91px;
            width: 251px;
            font-size: x-large;
        }
        .auto-style33 {
            height: 91px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="auto-style11">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback </strong>
    </p>
    

    <br />
   <center> <table class="auto-style12" height="800px" width="800px" border="2px">
        <tr>
            <td class="auto-style21"><strong>&nbsp;&nbsp;&nbsp; Name:</strong></td>
            <td class="auto-style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="f1" runat="server" Height="38px" Width="192px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>&nbsp;&nbsp;&nbsp; Address:</strong></td>
            <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="f2" runat="server" Height="38px" Width="192px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"><strong>&nbsp;&nbsp;&nbsp; Phone No.:</strong></td>
            <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="f3" runat="server" Height="38px" Width="192px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>&nbsp;&nbsp;&nbsp; Email:</strong></td>
            <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="f4" runat="server" Height="38px" Width="192px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style32"><strong>&nbsp;&nbsp;&nbsp; Feedback:</strong></td>
            <td class="auto-style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="f5" runat="server" Height="64px" Width="192px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="59px" Text="Submit" Width="144px" BackColor="#66CCFF" Font-Bold="True" Font-Size="X-Large" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="59px" Text="Cancel" Width="144px" BackColor="#66CCFF" Font-Bold="True" Font-Size="X-Large" />
                <br />
                <asp:Label ID="f7" runat="server" Font-Size="X-Large" Text="Label" Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
       </center>
    

</asp:Content>


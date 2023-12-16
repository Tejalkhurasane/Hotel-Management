<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Myprofile.aspx.cs" Inherits="_Default" %>

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
             height: 75px;
             font-size: large;
             font-weight: bold;
         }
        .auto-style12 {
            height: 75px;
            width: 322px;
        }
        .auto-style18 {
            height: 82px;
        }
        .text {
            border: 2px solid black;
            border-radius: 20px;
        }
         .auto-style19 {
             width: 132px;
             height: 45px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style20 {
             height: 45px;
             width: 322px;
         }
         .auto-style21 {
             width: 132px;
             height: 67px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style22 {
             height: 67px;
             width: 322px;
         }
         .auto-style23 {
             width: 132px;
             height: 68px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style24 {
             height: 68px;
             width: 322px;
         }
         .auto-style25 {
             width: 132px;
             height: 69px;
             font-size: large;
             font-weight: bold;
         }
         .auto-style26 {
             height: 69px;
             width: 322px;
         }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
        <form id="form1" runat="server">
 
        <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; My Profile<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><center>   <table class="auto-style9" border="2px" height="500px" width="400px">
            <tr>
                <td class="auto-style19" align="center" width="140px">Hotel id:           <td class="auto-style20" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="p10" runat="server" CssClass="text" Height="42px" Width="129px" DataSourceID="hotelid4" DataTextField="hotelid" DataValueField="hotelid" Font-Size="X-Large">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="hotelid4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hotelid] FROM [hotel]"></asp:SqlDataSource>
                    &nbsp;
                    <asp:Button ID="p9" runat="server" Height="37px" Text="search" Width="106px" Font-Size="Large" OnClick="p9_Click" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style21" align="center" width="140px">Hotel Name:</td>
                <td class="auto-style22" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="p3" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23" align="center" width="140px">Hotel owner Name:</td>
                <td class="auto-style24" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="p4" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" align="center" width="140px">Hotel City:</td>
                <td class="auto-style26" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="p1" runat="server" CssClass="text" Height="40px" Width="127px" DataSourceID="city4" DataTextField="city" DataValueField="city" Font-Size="X-Large">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="city4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [city] FROM [city]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" align="center" width="140px">Hotel Phon:</td>
                <td class="auto-style12" width="260px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="p6" runat="server" Height="35px" Width="172px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
           
                       
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2" width="400px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="p7" runat="server" Height="46px" Text="Update" Width="108px" Font-Size="X-Large" BackColor="#FF66FF" OnClick="p7_Click" />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="p8" runat="server" Height="43px" Text="Cancel" Width="121px" Font-Size="X-Large" BackColor="#FF66FF" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <br />
                    <asp:Label ID="m19" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table></center> 
&nbsp;

    

        </form>

    

</asp:Content>


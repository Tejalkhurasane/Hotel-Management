<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="B1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style8 {
            color: fuchsia;
        }
        .auto-style9 {
            color: black;
        }
        .auto-style11 {
            font-size: xx-large;
        }
        .text {
            border: 2px solid black;
            border-radius: 20px;
    }
        .auto-style12 {
            height: 93px;
        }
        .auto-style14 {
            height: 36px;
        }
        .auto-style16 {
            height: 55px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server" align="center">
        <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<span class="auto-style8"><strong>Booking Your Room</strong></span><br />
                                <br />
                                </span>
             <table class="auto-style8"  height="400px" width="500px" border="2px" align="center"  >
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong> Check In:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong> Check Out:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong style="font-size: x-large">Room Type:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong>Adults:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="salary" runat="server" Height="43px"  Width="173px" CssClass="text" OnTextChanged="salary_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                  <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong>Childrens:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="TextBox1" runat="server" Height="43px"  Width="173px" CssClass="text"></asp:TextBox>
                                        </td>
                                    </tr>
                                                     
                                                    
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="book" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Book" Width="121px" CssClass="text" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="bcancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" CssClass="text" />
                                        </td>
                                         <tr>
                                        <td class="auto-style16" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddSalary]"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>

    </form>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style13 {
            width: 108px;
        }
        .auto-style14 {
            width: 108px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="141px" ImageUrl='<%# Eval("img") %>' Width="215px" />
                        <br />
                        <table class="auto-style11" style="background-color: #FFCC66">
                            <tr>
                                <td class="auto-style14">Dish Id</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("dishid") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Dish Type</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("dishtype") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Detail</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text='<%# Eval("detail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Rate</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#663300" Text='<%# Eval("rate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [menu]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


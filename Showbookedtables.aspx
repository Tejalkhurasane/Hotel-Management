<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Showbookedtables.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <table class="auto-style8">
            <tr>
                <td>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="tableid" HeaderText="tableid" SortExpression="tableid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="customerid" HeaderText="customerid" SortExpression="customerid" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                            <asp:BoundField DataField="noofmemb" HeaderText="noofmemb" SortExpression="noofmemb" />
                            <asp:BoundField DataField="services" HeaderText="services" SortExpression="services" />
                            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                            <asp:BoundField DataField="service1" HeaderText="service1" SortExpression="service1" />
                            <asp:BoundField DataField="service2" HeaderText="service2" SortExpression="service2" />
                            <asp:TemplateField HeaderText="img" SortExpression="img">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="132px" ImageUrl='<%# Eval("img") %>' Width="181px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT booktable.tableid, register.name, booktable.customerid, booktable.date, table1.tableid AS Expr1, table1.noofmemb, table1.services, table1.type, table1.service1, table1.service2, table1.img FROM booktable INNER JOIN table1 ON booktable.tableid = table1.tableid INNER JOIN register ON booktable.customerid = register.id WHERE (booktable.customerid = @customerid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HiddenField1" Name="customerid" PropertyName="Value" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bookroom.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
              <center>  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="roomid" HeaderText="roomid" SortExpression="roomid" />
                        <asp:BoundField DataField="roomtype" HeaderText="roomtype" SortExpression="roomtype" />
                        <asp:BoundField DataField="roomsize" HeaderText="roomsize" SortExpression="roomsize" />
                        <asp:BoundField DataField="facilities" HeaderText="facilities" SortExpression="facilities" />
                        <asp:BoundField DataField="facility1" HeaderText="facility1" SortExpression="facility1" />
                        <asp:BoundField DataField="facility2" HeaderText="facility2" SortExpression="facility2" />
                        <asp:BoundField DataField="facility3" HeaderText="facility3" SortExpression="facility3" />
                        <asp:BoundField DataField="noofbeds" HeaderText="noofbeds" SortExpression="noofbeds" />
                        <asp:BoundField DataField="roomrent" HeaderText="roomrent" SortExpression="roomrent" />
                        <asp:TemplateField HeaderText="img" SortExpression="img">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl='<%# Eval("img") %>' Width="163px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("roomid") %>' OnCommand="Button1_Command" Text="Book Room" />
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
                  </center>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [acroom]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


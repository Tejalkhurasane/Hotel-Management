<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Showbookedrooms.aspx.cs" Inherits="_Default" %>

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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="roomid" HeaderText="roomid" SortExpression="roomid" />
                            <asp:BoundField DataField="roomtype" HeaderText="roomtype" SortExpression="roomtype" />
                            <asp:BoundField DataField="roomsize" HeaderText="roomsize" SortExpression="roomsize" />
                            <asp:BoundField DataField="facilities" HeaderText="facilities" SortExpression="facilities" />
                            
                            <asp:BoundField DataField="facility1" HeaderText="facility1" SortExpression="facility1" />
                            
                            <asp:BoundField DataField="noofbeds" HeaderText="noofbeds" SortExpression="noofbeds" />
                            <asp:BoundField DataField="roomrent" HeaderText="roomrent" SortExpression="roomrent" />
                            <asp:TemplateField HeaderText="img" SortExpression="img">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="144px" ImageUrl='<%# Eval("img") %>' Width="184px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="transactionid" HeaderText="transactionid" SortExpression="transactionid" />
                            <asp:BoundField DataField="customerid" HeaderText="customerid" SortExpression="customerid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT roombook.roomid, acroom.roomtype, acroom.roomsize, acroom.facilities, acroom.facility2, acroom.facility1, acroom.facility3, acroom.noofbeds, acroom.roomrent, acroom.img, roombook.transactionid, roombook.customerid, register.name FROM acroom INNER JOIN roombook ON acroom.roomid = roombook.roomid INNER JOIN register ON roombook.customerid = register.id WHERE (roombook.customerid = @customerid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HiddenField1" Name="customerid" PropertyName="Value" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>


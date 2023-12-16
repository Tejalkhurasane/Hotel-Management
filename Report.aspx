<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
       <p style="height: 542px; width: 1167px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="report1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Room Report" Width="177px" PostBackUrl="~/roomreport.aspx" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="report2" runat="server" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Staff Report" Width="177px" PostBackUrl="~/StaffReport.aspx" />
&nbsp;&nbsp;
            <asp:Button ID="report3" runat="server" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Salary Report" Width="177px" PostBackUrl="~/salaryReport.aspx" />
&nbsp;
            <asp:Button ID="report4" runat="server" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Menu Report" Width="177px" PostBackUrl="~/menuReport.aspx" />
&nbsp;&nbsp;
            <asp:Button ID="report5" runat="server" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Table Report" Width="177px" PostBackUrl="~/tableReport.aspx" />
            <br />
        </p>
          
    </form>
</asp:Content>


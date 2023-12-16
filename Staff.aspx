<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master"  UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 83%;
            height: 333px;
        }
        .auto-style9 {
            height: 301px;
        }
        .auto-style10 {
            height: 301px;
            width: 169px;
        }
        .auto-style11 {
            font-size: xx-large;
            font-weight: 700;
            color: #FF66FF;
        }
        .auto-style12 {
            height: 71px;
        }
        .auto-style14 {
            height: 70px;
        }
        .auto-style18 {
            height: 70px;
        }
        .auto-style19 {
            height: 70px;
            font-size: large;
        }
        .auto-style20 {
            height: 71px;
            width: 182px;
            font-size: x-large;
        }
        .auto-style21 {
            height: 70px;
            font-size: x-large;
        }
         .text {
            border: 2px solid black;
            border-radius: 20px;
        }
        .auto-style22 {
            height: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      
            <table class="auto-style8" height="500px" width="800px" >
                <tr>
                    <td class="auto-style10" align="center">
                        
                        <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="55px" PostBackUrl="~/Home.aspx" Width="165px"  /> <br />
                        <br />
                        <asp:Button ID="addstaff" runat="server" Height="55px" OnClick="Button1_Click2" Text="Add Staff" Width="162px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" />
                        <br />
                        <br />
                        <asp:Button ID="updatestaff" runat="server" Height="55px" OnClick="Button2_Click2" Text="Update Staff" Width="162px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" />
                        <br />
                        <br />
                        <asp:Button ID="deletestaff" runat="server" Height="55px" OnClick="Button3_Click2" Text="Delete Staff" Width="162px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style9">
                        <asp:MultiView ID="MultiView1" runat="server"  ActiveViewIndex="0">
                            <asp:View ID="View1" runat="server">

                                <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Staff Information<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Staff Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="staffid" runat="server" Height="43px"  Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Staff Department:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="staffdept" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="174px" DataSourceID="staffdept1" DataTextField="dept" DataValueField="dept" ValidationGroup="view1">
                                                <asp:ListItem>select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staffdept1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dept] FROM [dept]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="staffdept" ErrorMessage="Enter the Staff Department" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19" align="center" height="70px" width="150px"><strong style="font-size: x-large">Staff Post:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="staffpost" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="178px" DataSourceID="staffpost1" DataTextField="post" DataValueField="post" ValidationGroup="view1">
                                                <asp:ListItem>select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staffpost1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [post] FROM [post]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="staffpost" ErrorMessage="Enter the Staff Post" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Staff Name:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="staffname" runat="server" Height="43px"  Width="173px" CssClass="text" Font-Size="X-Large" ValidationGroup="view1"></asp:TextBox>
                                            &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="staffname" ErrorMessage="Enter the Name" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Address:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="staffaddress" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large" ValidationGroup="view1"></asp:TextBox>
                                            &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="staffaddress" ErrorMessage="Enter the Address" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Phone No.:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="staffphone" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large" ValidationGroup="view1" ></asp:TextBox>
                                            &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="staffphone" ErrorMessage="Enter the Phone Number" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="staffadd" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Add" Width="121px" CssClass="text" OnClick="staffadd_Click" ValidationGroup="view1"   />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="staffcancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" CssClass="text" />
                                            <br />
                                            <asp:Label ID="l2" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>

                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update Staff Information<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Staff Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="sid" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="174px" CssClass="text" DataSourceID="staffid1" DataTextField="staffid" DataValueField="staffid">
                                                <asp:ListItem>select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staffid1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [staffid] FROM [staff]"></asp:SqlDataSource>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Staff Department:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="sdept" runat="server" CssClass="text" DataSourceID="staffdept2" DataTextField="dept" DataValueField="dept" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="174px">
                                                <asp:ListItem>select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staffdept2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dept] FROM [dept]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19" align="center" height="70px" width="150px"><strong style="font-size: x-large">Staff Post:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="spost" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="173px" DataSourceID="staffpost2" DataTextField="post" DataValueField="post">
                                                <asp:ListItem>select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staffpost2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [post] FROM [post]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Staff Name:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="sname" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Address:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="saddress" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Phone No.:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="sphone" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="ssearch" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Search" Width="121px" CssClass="text" OnClick="ssearch_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="supdate" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Update" Width="121px" CssClass="text" OnClick="supdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="scancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" CssClass="text" />
                                            <br />
                                            <asp:Label ID="l1" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete Staff Information<br />
                                <br />
                                </span>
                                 <table class="auto-style27" border="2px" cellpadding="2px" cellspacing="2px" align="center">
                                    <tr>
                                        <td class="auto-style31" align="center"><strong>Select id</strong></td>
                                        <td class="auto-style29" align="center">
                                            <asp:DropDownList ID="selectid" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="176px" CssClass="text" DataSourceID="staffid2" DataTextField="staffid" DataValueField="staffid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staffid2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [staffid] FROM [staff]"></asp:SqlDataSource>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="delete" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Delete" Width="122px" OnClick="delete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="dcancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Cancel" Width="122px" />
                                            &nbsp;<br />
                                            <asp:Label ID="l3" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
&nbsp;</form>

</asp:Content>


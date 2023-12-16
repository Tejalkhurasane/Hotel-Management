<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Salary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            color: fuchsia;
        }
        .auto-style9 {
            color: black;
        }
        .auto-style10 {
            font-size: x-large;
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
        .auto-style13 {
            height: 65px;
        }
        .auto-style14 {
            height: 36px;
        }
        .auto-style15 {
            height: 51px;
        }
        .auto-style16 {
            height: 55px;
        }
        .auto-style17 {
            height: 53px;
        }
        .auto-style18 {
            color: black;
            height: 70px;
        }
        .auto-style19 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      
            <table class="auto-style8" height="500px" width="800px" >
                <tr>
                    <td class="auto-style10" align="center">
                       
                        <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="55px" PostBackUrl="~/Home.aspx" Width="165px" />
                        <br />
                        <br />
                        <asp:Button ID="addsalary" runat="server" Height="55px"  Text="Add Salary" Width="162px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="addsalary_Click"  />
                        <br />
                        <br />
                        <asp:Button ID="updatesalary" runat="server" Height="55px" Text="Update Salary" Width="162px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="updatesalary_Click"  />
                        <br />
                        <br />
                        <asp:Button ID="deletesalary" runat="server" Height="55px" Text="Delete Salary" Width="162px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="deletesalary_Click" />
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

                                <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8"><strong>Add Salary Information</strong></span><br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong>Staff Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            &nbsp;<asp:DropDownList ID="s1" runat="server" CssClass="text" Font-Size="X-Large" Height="49px" Width="171px" DataSourceID="staff2" DataTextField="staffid" DataValueField="staffid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staff2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [staffid] FROM [staff]"></asp:SqlDataSource>
                                            &nbsp;
                                            <br />
                                            <br />
                                            <asp:Button ID="s18" runat="server" Font-Bold="True" Font-Size="X-Large" Height="44px"  Text="search" Width="110px" OnClick="s18_Click" />
                                            <br />
                                            <asp:Label ID="s19" runat="server" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong> Staff Name:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="s2" runat="server" Height="43px" Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><b>Date</b><strong style="font-size: x-large">:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <br />
                                            <asp:TextBox ID="s3" runat="server" CssClass="text" Height="43px" Width="173px" Font-Size="X-Large" TextMode="Date"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><b>Salary</b><strong>:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="s4" runat="server" Height="43px"  Width="173px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                        </td>
                                    </tr>
                                                     
                                                    
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="staffadd" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Save" Width="121px" CssClass="text" OnClick="staffadd_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="staffcancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" CssClass="text" />
                                            <br />
                                            <asp:Label ID="l5" runat="server" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                         <tr>
                                        <td class="auto-style16" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddSalary]"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>

                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8"><strong>Update Salary Information</strong></span><br />
                                 <br />
                                </span>
            <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><strong> Staff Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="s5" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="146px" CssClass="text" DataSourceID="staff5" DataTextField="staffid" DataValueField="staffid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staff5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [staffid] FROM [staff]"></asp:SqlDataSource>
                                            &nbsp;<br /> </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" align="center" width="150px"><strong> Staff Name:</strong></td>
                                        <td class="auto-style19" align="center" width="250px">
                                            <asp:TextBox ID="s6" runat="server" Height="43px" Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><b>Date</b><strong style="font-size: x-large">:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <br />
                                            <asp:TextBox ID="s7" runat="server" CssClass="text" Height="43px" Width="173px" Font-Size="X-Large" TextMode="Date"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9" align="center" height="70px" width="150px"><b>Salary</b><strong>:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="s8" runat="server" Height="43px"  Width="173px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                        </td>
                                    </tr>
                                                     
                                                    
                                    <tr>
                                        <td class="auto-style13" colspan="2" align="center">
                                            &nbsp;&nbsp;
                                            <asp:Button ID="search" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="Large" Height="55px" Text="Search" Width="121px" OnClick="search_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="update" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="Large" Height="54px" Text="Update" Width="121px" OnClick="Button5_Click" />
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button6" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="Large" Height="54px" Text="Cancel" Width="121px" />
                                            <br />
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [staffid] FROM [AddSalary]"></asp:SqlDataSource>
                                            <asp:Label ID="l6" runat="server" Text="Label" Visible="False" style="color: #000000"></asp:Label>
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                         <tr>
                                        <td class="auto-style15" colspan="2" align="center">
                                           

                                            

                                            &nbsp;</td>
                                    </tr>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style8"><strong>Delete Salary Information</strong></span><br />
                                <br />
                                </span>
                                 <table class="auto-style27" border="2px" cellpadding="2px" cellspacing="2px" align="center">
                                    <tr>
                                        <td class="auto-style31" align="center"><strong>Select id</strong></td>
                                        <td class="auto-style29" align="center">
                                            <asp:DropDownList ID="s9" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="146px" CssClass="text" DataSourceID="staff6" DataTextField="staffid" DataValueField="staffid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="staff6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [staffid] FROM [staff]"></asp:SqlDataSource>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style30" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="s10" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Delete" Width="122px" OnClick="s10_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="s11" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Cancel" Width="122px" />
                                            <br />
                                            <asp:Label ID="m1" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                            &nbsp;</td>
                                         <tr>
                                        <td class="auto-style17" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddSalary]"></asp:SqlDataSource>
                                           

                                            

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


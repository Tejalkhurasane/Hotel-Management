<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" UnobtrusiveValidationMode ="none" AutoEventWireup="true" CodeFile="Table.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 85%;
            height: 256px;
        }
        .auto-style10 {
            height: 500px;
            width: 701px;
        }
        .auto-style11 {
            height: 500px;
            width: 127px;
        }
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style14 {
            height: 72px;
        }
        .text {
            border: 2px solid black;
            border-radius: 20px;
    }
        .auto-style18 {
            color: #FF33CC;
        }
        .auto-style19 {
            height: 79px;
            width: 154px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style20 {
            height: 79px;
            width: 395px;
        }
        .auto-style23 {
            color: #FF00FF;
        }
        .auto-style27 {
            width: 70%;
            height: 153px;
        }
        .auto-style30 {
            height: 71px;
        }
        .auto-style31 {
            height: 79px;
            width: 103px;
            font-size: x-large;
        }
        .auto-style32 {
            color: #FF66FF;
        }
        .auto-style34 {
            height: 75px;
            width: 154px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style35 {
            height: 75px;
            width: 395px;
        }
        .auto-style38 {
            height: 83px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style39 {
            height: 83px;
            width: 395px;
        }
        .auto-style40 {
            height: 87px;
            width: 154px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style41 {
            height: 87px;
            width: 395px;
        }
        .auto-style42 {
            height: 91px;
            width: 154px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style43 {
            height: 91px;
            width: 395px;
        }
        .auto-style44 {
            height: 83px;
        }
        .auto-style45 {
            height: 84px;
            width: 154px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style46 {
            height: 84px;
            width: 395px;
        }
        .auto-style47 {
            height: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    

    
        <form id="form1" runat="server" enctype="multipart/form-data">
           <center> <table class="auto-style9" height="500px" width="700px"  cellpadin="2px" cellspacing="2px">
                <tr>
                    <td class="auto-style11" align="center">
                        
                         <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#CC99FF" Font-Bold="True" Font-Size="X-Large" Height="55px" PostBackUrl="~/Home.aspx" Width="165px"  /> <br />
                        <br />
                        <asp:Button ID="addtable" runat="server" Font-Bold="True" Font-Size="X-Large" Height="55px" Text="Add Table" Width="158px" OnClick="addtable_Click" BackColor="#CC99FF" />
                        <br />
                        <br />
                        <asp:Button ID="updatetable" runat="server" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Update Table" Width="161px" BackColor="#CC99FF" OnClick="updatetable_Click" />
                        <br />
                        <br />
                        <asp:Button ID="deletetable" runat="server" Font-Bold="True" Font-Size="X-Large" Height="55px" Text="Delete Table" Width="162px" BackColor="#CC99FF" OnClick="deletetable_Click" />
                    </td>
                    <td class="auto-style10">
                        <asp:MultiView ID="MultiView1" runat="server"  ActiveViewIndex="0">

                              <asp:View ID="View1" runat="server">
                                  <span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style18">Add Tabel Information</span><br /> </strong></span>


                                  &nbsp;<center><table class="auto-style9" cellpading="2px" cellspacing="2px" border="2px" align="center">
                                      <tr>
                                          <td class="auto-style38" align="center" width="160px" colspan="2">
                                              <asp:ImageButton ID="t8" runat="server" Height="179px" Width="197px" />
                                              &nbsp;<asp:FileUpload ID="t9" runat="server" Height="47px" Width="257px" />
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style38" align="center" width="160px">Table id:</td>
                                          <td class="auto-style39" align="center">
                                              <asp:TextBox ID="t1" runat="server" Height="39px" Width="198px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style40" align="center" align="center" width="160px">No.of members:</td>
                                          <td class="auto-style41" align="center">
                                              <asp:DropDownList ID="t2" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" ValidationGroup="view1">
                                                  <asp:ListItem>1</asp:ListItem>
                                                  <asp:ListItem>2</asp:ListItem>
                                                  <asp:ListItem>3</asp:ListItem>
                                                  <asp:ListItem>4</asp:ListItem>
                                                  <asp:ListItem>5</asp:ListItem>
 
                                              </asp:DropDownList>
                                              &nbsp;
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t2" ErrorMessage="Enter the Number of members" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                          </td>
                                      </tr>
                                       <tr>
                                          <td class="auto-style45" align="center" align="center" width="160px">Table Type:</td>
                                          <td class="auto-style46" align="center" </td>
                                              <asp:DropDownList ID="t3" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="ttype1" DataTextField="service" DataValueField="service" ValidationGroup="view1">
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="ttype1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [service] FROM [ttype]"></asp:SqlDataSource>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="t3" ErrorMessage="Enter the Table Type" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                              </tr>
                                      
                                      <tr>
                                          <td class="auto-style42" align="center" align="center" width="160px">&nbsp;Services:</td>
                                          <td class="auto-style43" align="center" </td>
                                              <asp:DropDownList ID="t21" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="tservice1" DataTextField="services" DataValueField="services" ValidationGroup="view1">
                                                  
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="tservice1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [services] FROM [tservice]"></asp:SqlDataSource>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="t21" ErrorMessage="Enter the Services" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                              </tr>
                                        </tr>
                                      
                                      <tr>
                                          <td class="auto-style42" align="center" align="center" width="160px">&nbsp;Service1:</td>
                                          <td class="auto-style43" align="center" </td>
                                              <asp:DropDownList ID="t22" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="tservice2" DataTextField="services" DataValueField="services" ValidationGroup="view1">
                                                  
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="tservice2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [services] FROM [tservice]"></asp:SqlDataSource>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="t22" ErrorMessage="Enter the Service1" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                              </tr>
                 </tr>
                                      
                                      <tr>
                                          <td class="auto-style42" align="center" align="center" width="160px">&nbsp;Service2:</td>
                                          <td class="auto-style43" align="center" </td>
                                              <asp:DropDownList ID="t23" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="tservice3" DataTextField="services" DataValueField="services" ValidationGroup="view1">
                                                  
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="tservice3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [services] FROM [tservice]"></asp:SqlDataSource>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="t23" ErrorMessage="Enter the Service2" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                              </tr>
                                      <tr>

                                          <td class="auto-style44" colspan="2">
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <asp:Button ID="add" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Add" Width="122px" OnClick="add_Click" />
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <asp:Button ID="cancel" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Cancel" Width="116px" />
                                              <br />
                                              <asp:Label ID="t12" runat="server" Text="Label" Visible="False"></asp:Label>
                                              <br />
                                              <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Large" ShowMessageBox="True" ShowSummary="False" />
                                              <br />
                                              <br />
                                          </td>
                                      </tr>
                                  </table></center>
                              </asp:View>
                            <asp:View ID="View2" runat="server">
                                <span class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style18">Update Tabel Information</span><br /> </strong></span>


                                  &nbsp;<center><table class="auto-style9" cellpading="2px" cellspacing="2px" border="2px" align="center">
                                      <tr>
                                          <td class="auto-style38" align="center" width="160px" colspan="2">
                                              <asp:ImageButton ID="t10" runat="server" Height="179px" Width="197px" />
                                              &nbsp;<asp:FileUpload ID="t11" runat="server" Height="47px" Width="257px" />
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style19" align="center" width="160px">Table id:</td>
                                          <td class="auto-style20" align="center">
                                              <asp:DropDownList ID="t4" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="146px" CssClass="text" DataSourceID="tableid4" DataTextField="tableid" DataValueField="tableid">
                                            </asp:DropDownList>
                                              <asp:SqlDataSource ID="tableid4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tableid] FROM [table1]"></asp:SqlDataSource>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td class="auto-style34" align="center" align="center" width="160px">No.of members:</td>
                                          <td class="auto-style35" align="center">
                                              <asp:DropDownList ID="t5" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="146px">
                                                  <asp:ListItem>1</asp:ListItem>
                                                  <asp:ListItem>2</asp:ListItem>
                                                  <asp:ListItem>3</asp:ListItem>
                                                  <asp:ListItem>4</asp:ListItem>
                                                  <asp:ListItem>5</asp:ListItem>
                                                 
                                              </asp:DropDownList>
                                          </td>
                                      </tr>
                                     
                                      <tr>
                                          <td class="auto-style45" align="center" align="center" width="160px">Table Type:</td>
                                          <td class="auto-style46" align="center" </td>
                                              <asp:DropDownList ID="t6" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="ttype2" DataTextField="service" DataValueField="service">
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="ttype2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [service] FROM [ttype]"></asp:SqlDataSource>
                                              </tr>
                                        </tr>
                                      
                                      <tr>
                                          <td class="auto-style42" align="center" align="center" width="160px">&nbsp;Services:</td>
                                          <td class="auto-style43" align="center" </td>
                                              <asp:DropDownList ID="t25" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="tservice4" DataTextField="services" DataValueField="services">
                                                  
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="tservice4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [services] FROM [tservice]"></asp:SqlDataSource>
                                              </tr>
                                        </tr>
                                      
                                      <tr>
                                          <td class="auto-style42" align="center" align="center" width="160px">&nbsp;Service1:</td>
                                          <td class="auto-style43" align="center" </td>
                                              <asp:DropDownList ID="t26" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="tservice5" DataTextField="services" DataValueField="services">
                                                  
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="tservice5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [services] FROM [tservice]"></asp:SqlDataSource>
                                              </tr>
                                      <tr>
                                          <td class="auto-style42" align="center" align="center" width="160px">&nbsp;Service2:</td>
                                          <td class="auto-style43" align="center" </td>
                                              <asp:DropDownList ID="t27" runat="server" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="199px" DataSourceID="tservice6" DataTextField="services" DataValueField="services">
                                                  
                                                  
                                              </asp:DropDownList>
                                              <asp:SqlDataSource ID="tservice6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [services] FROM [tservice]"></asp:SqlDataSource>
                                              </tr>
                                      <tr>

                                          <td class="auto-style14" colspan="2">
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <asp:Button ID="search" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Search" Width="122px" OnClick="search_Click" />
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <asp:Button ID="update" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="update" Width="116px" OnClick="update_Click" />
                                              &nbsp;&nbsp;
                                              <asp:Button ID="tcancel" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="55px" Text="Cancel" Width="122px" />
                                              <br />
                                              <asp:Label ID="t13" runat="server" Text="Label" Visible="False"></asp:Label>
                                              <br />
                                          </td>
                                          
                                      </tr>
                                  </table></center>
                            </asp:View>
                            <asp:View ID="View3" runat="server"><span class="auto-style12"><strong>&nbsp;<span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style18">Delete Tabel Information<br /> <br /> </span></strong></span><span> </span></strong>

                                <table class="auto-style27" border="2px" cellpadding="2px" cellspacing="2px" align="center">
                                    <tr>
                                        <td class="auto-style31" align="center"><strong>Select id</strong></td>
                                        <td class="auto-style47" align="center">
                                            <asp:DropDownList ID="t7" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="146px" CssClass="text" DataSourceID="tableid3" DataTextField="tableid" DataValueField="tableid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="tableid3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tableid] FROM [table1]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style30" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="delete" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Delete" Width="122px" OnClick="delete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="dcancel" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Cancel" Width="122px" />
                                            &nbsp;<br />
                                            <br />
                                            <asp:Label ID="t14" runat="server" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                        
                                    </tr>
                                </table>

                            </asp:View>

                        </asp:MultiView>
                    </td>
                </tr>
            </table></center>
&nbsp;</form>
    

    

</asp:Content>


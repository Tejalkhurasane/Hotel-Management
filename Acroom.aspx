<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" UnobtrusiveValidationMode ="none" AutoEventWireup="true" CodeFile="Acroom.aspx.cs" Inherits="_Default" %>

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
            width: 174px;
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
            width: 400px;
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
            height: 71px;
            width: 393px;
            font-size: x-large;
        }
        .auto-style23 {
            height: 70px;
            font-size: x-large;
            width: 393px;
        }
        .auto-style24 {
            height: 70px;
            font-size: large;
            width: 393px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      
            <table class="auto-style8" height="500px" width="800px" >
                <tr>
                    <td class="auto-style10" align="center">
                        
                         <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF66FF" Font-Bold="True" Font-Size="X-Large" Height="55px" PostBackUrl="~/Home.aspx" Width="219px"  /> <br />
                        <br />
                        <asp:Button ID="addac" runat="server" BackColor="#FF66FF" Font-Bold="True" Font-Size="X-Large" Height="49px" OnClick="addac_Click" Text="Add  Room" Width="224px" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="updateroom" runat="server" BackColor="#FF66FF" Font-Bold="True" Font-Size="X-Large" Height="52px"  Text="Update  Room" Width="220px" OnClick="updateroom_Click" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="deleteac" runat="server" BackColor="#FF66FF" Font-Bold="True" Font-Size="X-Large" Height="44px"  Text="Delete  Room" Width="220px" OnClick="deleteac_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style9">
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                            <asp:View ID="View1" runat="server">

                                <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add&nbsp; Room<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                 <tr>
                                        <td class="auto-style20" align="center" height="70px" colspan="2">
                                            <asp:ImageButton ID="img1" runat="server" Height="196px"  Width="249px" />
                                            &nbsp;
                                            <asp:FileUpload ID="j1" runat="server" Height="60px" Width="259px" />
                                            
                                            
                                        </td>

                                    </tr>
                                    
                 <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>&nbsp; Room Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="z1" runat="server" Height="43px"  Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                   <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>&nbsp; Room Type:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r22" runat="server" CssClass="text" DataSourceID="type1" DataTextField="type" DataValueField="type" Font-Size="X-Large" Height="46px" Width="136px" ValidationGroup="view1">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="type1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [type] FROM [roomtype]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="r22" ErrorMessage="Enter the Room Type" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Room Size:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="r2" runat="server" Height="43px" Width="173px" CssClass="text" Font-Bold="False" Font-Size="X-Large" ValidationGroup="view1" ></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="r2" ErrorMessage="Enter the Room Size" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19" align="center" height="70px" width="150px"><strong style="font-size: x-large">&nbsp; Facilities:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r3" runat="server" Height="46px" Width="136px" CssClass="text" Font-Size="X-Large" DataSourceID="f1" DataTextField="Facilities" DataValueField="Facilities" ValidationGroup="view1" >
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="r3" ErrorMessage="Enter the Facilities" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                          <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Facility1:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r33" runat="server" CssClass="text" DataSourceID="f2" DataTextField="Facilities" DataValueField="Facilities" Font-Size="X-Large" Height="46px" ValidationGroup="view1" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="r33" ErrorMessage="Enter the facility1" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                          <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Facility2:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r34" runat="server" CssClass="text" DataSourceID="f3" DataTextField="Facilities" DataValueField="Facilities" Font-Size="X-Large" Height="46px" ValidationGroup="view1" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="r34" ErrorMessage="Enter the facility2" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                          <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Facility3:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r35" runat="server" CssClass="text" DataSourceID="f4" DataTextField="Facilities" DataValueField="Facilities" Font-Size="X-Large" Height="46px" ValidationGroup="view1" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="r35" ErrorMessage="Enter the facility3" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>No. Of Beds:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r4" runat="server" Height="46px" Width="136px" CssClass="text" Font-Size="X-Large" ValidationGroup="view1"  >
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="r4" ErrorMessage="Enter the number of beds" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Room Rent:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="r5" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large" ValidationGroup="view1"></asp:TextBox>
                                            &nbsp;
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="r5" ErrorMessage="Enter the Room Rent" ForeColor="#FF3300" ValidationGroup="view1">*</asp:RequiredFieldValidator>
                                        </td>
                                   
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="roomadd" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Add" Width="121px" CssClass="text" OnClick="roomadd_Click" ValidationGroup="view1" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="roomcancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" CssClass="text" />
                                            <br />
                                            <asp:Label ID="m8" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                           

                                            

                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                                            <br />
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>

                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <br />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update&nbsp; Room<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
<tr>
                                        <td class="auto-style20" align="center" height="70px" colspan="2">
                                            
                                            
                                            
                                            <asp:ImageButton ID="img2" runat="server" Height="202px"  Width="251px" />
                                            
                                            
                                            
                                            <asp:FileUpload ID="j3" runat="server" Height="49px" Width="256px" />
                                            
                                            
                                        </td>

                                    </tr>
                                    
                 <tr>
                                        <td class="auto-style22" align="center" height="70px"><strong>&nbsp; Room Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="z2" runat="server" CssClass="text" Font-Size="X-Large" Height="46px" Width="136px" DataSourceID="roomid2" DataTextField="roomid" DataValueField="roomid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="roomid2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [roomid] FROM [acroom]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                   <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>&nbsp; Room Type:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r23" runat="server" CssClass="text" DataSourceID="type2" DataTextField="type" DataValueField="type" Font-Size="X-Large" Height="46px" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="type2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [type] FROM [roomtype]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23" align="center" height="70px"><strong>&nbsp;Room Size:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="r7" runat="server" Height="42px" Width="173px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24" align="center" height="70px"><strong style="font-size: x-large">&nbsp; Facility:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r8" runat="server" Height="46px" Width="136px" CausesValidation="True" CssClass="text" Font-Size="X-Large" DataSourceID="f5" DataTextField="Facilities" DataValueField="Facilities" >
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                        </td>
                                          <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Facility1:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r36" runat="server" CausesValidation="True" CssClass="text" DataSourceID="f6" DataTextField="Facilities" DataValueField="Facilities" Font-Size="X-Large" Height="46px" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                          <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Facility2:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r37" runat="server" CausesValidation="True" CssClass="text" DataSourceID="f7" DataTextField="Facilities" DataValueField="Facilities" Font-Size="X-Large" Height="46px" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                          <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Facility3:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r38" runat="server" CausesValidation="True" CssClass="text" DataSourceID="f8" DataTextField="Facilities" DataValueField="Facilities" Font-Size="X-Large" Height="46px" Width="136px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="f8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22" align="center" height="70px"><strong>No. Of Beds:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="r9" runat="server" Height="46px" Width="136px" CssClass="text" Font-Size="X-Large">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style22" align="center" height="70px"><strong>Room Rent :</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="r10" runat="server" Height="42px"  Width="173px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="rsearch" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Search" Width="121px" CssClass="text" OnClick="rsearch_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="rupdate" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px"  Text="Update" Width="121px" CssClass="text" OnClick="rupdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="rcancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" CssClass="text" />
                                            <br />
                                            <asp:Label ID="m9" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete&nbsp; Room<br />
                                <br />
                                </span>
                                 <table class="auto-style27" border="2px" cellpadding="2px" cellspacing="2px" align="center">
                                    <tr>
                                        <td class="auto-style31" align="center"><strong>Select id</strong></td>
                                        <td class="auto-style29" align="center">
                                            <asp:DropDownList ID="selectrid" runat="server" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="146px" CssClass="text" DataSourceID="roomid3" DataTextField="roomid" DataValueField="roomid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="roomid3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [roomid] FROM [acroom]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style30" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="roomdelete" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Delete" Width="122px" OnClick="roomdelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="accancel" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="54px" Text="Cancel" Width="122px" />
                                            &nbsp;<br />
                                            <asp:Label ID="m10" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                                           

                                            

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


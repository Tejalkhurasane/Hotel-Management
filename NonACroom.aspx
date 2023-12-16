<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="NonACroom.aspx.cs" Inherits="_Default" %>

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
                        <br />
                        <asp:Button ID="anr" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="46px" Text="Add NonAC Room" Width="230px" OnClick="anr_Click" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="unr" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="46px"  Text="Update NonAC Room" Width="230px" OnClick="unr_Click" />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="dnr" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="46px"  Text="Delete NonAC Room" Width="230px" OnClick="dnr_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style9">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">

                                <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add NonAC Room<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                 <tr>
                                        <td class="auto-style20" align="center" height="70px" colspan="2">
                                            <asp:ImageButton ID="n4" runat="server" Height="196px"  Width="249px" />
                                            &nbsp;
                                            <asp:FileUpload ID="n6" runat="server" Height="60px" Width="259px" />
                                            
                                            
                                        </td>

                                    </tr>
                                    
                 <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>&nbsp;NonAC Room Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="n5" runat="server" Height="43px"  Width="173px" CssClass="text" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21" align="center" height="70px" width="150px"><strong>Room Size:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="n7" runat="server" Height="43px" Width="173px" CssClass="text" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19" align="center" height="70px" width="150px"><strong style="font-size: x-large">&nbsp; Facilities:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="n8" runat="server" Height="46px" Width="136px" CssClass="text" Font-Size="Large" DataSourceID="facility3" DataTextField="Facilities" DataValueField="Facilities" >
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="facility3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>No. Of Beds:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="n9" runat="server" Height="46px" Width="136px" CssClass="text" Font-Size="Large"  >
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style20" align="center" height="70px" width="150px"><strong>Room Rent:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="n10" runat="server" Height="42px"  Width="173px" CssClass="text"></asp:TextBox>
                                        </td>
                                   
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="n11" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" OnClick="n11_Click" Text="Add" Width="103px" />
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="n12" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" Text="Cancel" Width="103px" />
                                            &nbsp;<br />
                                            <asp:Label ID="n25" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                         <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                           

                                            

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                           

                                            

                                        </td>
                                    </tr>
                                    </tr>
                                </table>

                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <br />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update NonAC Room<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
<tr>
                                        <td class="auto-style20" align="center" height="70px" colspan="2">
                                            
                                            
                                            
                                            <asp:ImageButton ID="n13" runat="server" Height="202px"  Width="251px" />
                                            
                                            
                                            
                                            <asp:FileUpload ID="n14" runat="server" Height="49px" Width="256px" />
                                            
                                            
                                        </td>

                                    </tr>
                                    
                 <tr>
                                        <td class="auto-style22" align="center" height="70px"><strong>&nbsp;NonAC Room Id:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="n15" runat="server" CssClass="text" Font-Size="Large" Height="46px" Width="136px" DataSourceID="nonacid2" DataTextField="nonacroomid" DataValueField="nonacroomid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="nonacid2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nonacroomid] FROM [nonacroom]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23" align="center" height="70px"><strong>&nbsp;Room Size:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="n28" runat="server" Height="42px" Width="173px" CssClass="text"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24" align="center" height="70px"><strong style="font-size: x-large">&nbsp; Facilities:</strong></td>
                                        <td class="auto-style14" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="n16" runat="server" Height="46px" Width="136px" CausesValidation="True" CssClass="text" Font-Size="Large" DataSourceID="facility4" DataTextField="Facilities" DataValueField="Facilities" >
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="facility4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Facilities] FROM [Facilities]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22" align="center" height="70px"><strong>No. Of Beds:</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:DropDownList ID="n17" runat="server" Height="46px" Width="136px" CssClass="text" Font-Size="Large">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                                     <tr>
                                        <td class="auto-style22" align="center" height="70px"><strong>Room Rent :</strong></td>
                                        <td class="auto-style12" align="center" height="70px" width="250px">
                                            <asp:TextBox ID="n18" runat="server" Height="42px"  Width="173px" CssClass="text" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style18" colspan="2" align="center">
                                            <asp:Button ID="n19" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" Text="Search" Width="103px" OnClick="n19_Click" />
                                            &nbsp;<asp:Button ID="n20" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" Text="Update" Width="103px" OnClick="n20_Click" />
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="n21" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" Text="Cancel" Width="103px" />
                                            <br />
                                            <asp:Label ID="n26" runat="server" Text="Label" Visible="False"></asp:Label>
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
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete NonAC Room<br />
                                <br />
                                </span>
                                 <table class="auto-style27" border="2px" cellpadding="2px" cellspacing="2px" align="center">
                                    <tr>
                                        <td class="auto-style31" align="center"><strong>Select id</strong></td>
                                        <td class="auto-style29" align="center">
                                            <asp:DropDownList ID="n22" runat="server" Font-Bold="True" Font-Size="Large" Height="50px" Width="146px" CssClass="text" DataSourceID="nonacid4" DataTextField="nonacroomid" DataValueField="nonacroomid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="nonacid4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nonacroomid] FROM [nonacroom]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style30" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="n23" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" Text="Delete" Width="103px" OnClick="n23_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="n24" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="42px" Text="Cancel" Width="103px" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                            <asp:Label ID="n27" runat="server" Text="Label" Visible="False"></asp:Label>
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


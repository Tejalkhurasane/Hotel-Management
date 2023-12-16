<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="_Default" %>

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
        .auto-style18 {
            height: 70px;
        }
        .auto-style19 {
            height: 84px;
            font-size: large;
             width: 193px;
         }
         .text {
            border: 2px solid black;
            border-radius: 20px;
             margin-top: 0px;
         }
         .auto-style22 {
             height: 71px;
             width: 193px;
             font-size: x-large;
         }
         .auto-style23 {
             height: 58px;
         }
         .auto-style25 {
             height: 87px;
             width: 193px;
             font-size: x-large;
         }
         .auto-style26 {
             height: 87px;
         }
         .auto-style28 {
             height: 84px;
         }
         .auto-style32 {
             height: 80px;
             width: 193px;
             font-size: x-large;
         }
         .auto-style33 {
             height: 80px;
         }
         .auto-style34 {
             width: 84%;
             height: 199px;
         }
         .auto-style35 {
             height: 74px;
         }
         .auto-style36 {
             height: 73px;
         }
         .auto-style38 {
             height: 74px;
             font-size: x-large;
             width: 204px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1" runat="server">
        

      
            <table class="auto-style8" height="500px" width="800px" >
                

                <tr>

                    <td class="auto-style10" align="center">
                         
                         <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="55px" PostBackUrl="~/Home.aspx" Width="165px" />

                         <br />
                         <br />

                        <asp:Button ID="addmenu" runat="server" Height="55px"  Text="Add Menu" Width="166px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="addmenu_Click"  />
                        <br />
                        <br />
                        <asp:Button ID="deletemenu" runat="server" Height="55px"  Text="Delete Menu" Width="187px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="deletemenu_Click"  />
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
                        <asp:MultiView ID="MultiView1" runat="server"  ActiveViewIndex="0">
                            <asp:View ID="View1" runat="server">
                <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Add Menu Information<br />
                                <br />
                                </span>
             <table class="auto-style8" align ="center" height="400px" width="500px" border="2px" >
                                    <tr>
                                        <td class="auto-style20" align="center" height="70px" colspan="2">&nbsp; 
                                            <asp:ImageButton ID="y4" runat="server" Height="192px" Width="194px" />
                                            <asp:FileUpload ID="y5" runat="server" Height="43px" />
                                        </td>
                                        <tr>
                                            <td align="center" class="auto-style22" height="70px"><strong>Dish Id:</strong></td>
                                            <td align="center" class="auto-style12" height="70px" width="250px">
                                                <asp:TextBox ID="y1" runat="server" CssClass="text" Height="42px" Width="173px" Font-Size="X-Large"></asp:TextBox>
                                                &nbsp;&nbsp; </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style25"><strong>Dish Type:</strong></td>
                                            <td align="center" class="auto-style26" width="250px">
                                                <br />
                                                <asp:DropDownList ID="y2" runat="server" CssClass="text" Height="45px" Width="152px" OnSelectedIndexChanged="y2_SelectedIndexChanged" AutoPostBack="True" DataSourceID="dishtype3" DataTextField="dishtype" DataValueField="dishtype" Font-Size="X-Large">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="dishtype3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [dishtype] FROM [detail]"></asp:SqlDataSource>
                                                &nbsp;<br />
                                                <br />
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="auto-style19"><strong style="font-size: x-large">Detail:</strong></td>
                                            <td align="center" class="auto-style28" width="250px">&nbsp;<br />
                                                <asp:DropDownList ID="y3" runat="server" CssClass="text" Height="45px" Width="152px" OnSelectedIndexChanged="y3_SelectedIndexChanged" Font-Size="X-Large">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                      
                                        <tr>
                                            <td align="center" class="auto-style32"><strong>Rate:</strong></td>
                                            <td align="center" class="auto-style33" width="250px">&nbsp;<br />
                                                <br />
                                                <asp:TextBox ID="y7" runat="server" CssClass="text" Height="42px" Width="167px" Font-Size="X-Large"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="center" class="auto-style18" colspan="2">
                                                <asp:Button ID="menuadd" runat="server" BackColor="#00FF99" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="51px" OnClick="menuadd_Click" Text="Add" Width="121px" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="menucancel" runat="server" BackColor="#00FF99" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" />
                                                <br />
                                                <br />
                                                <asp:Label ID="m14" runat="server" Text="Label" Visible="False"></asp:Label>
                                            </td>
                                            <tr>
                                                <td align="center" class="auto-style23" colspan="2">&nbsp;</td>
                                            </tr>
                                        </tr>
                                    </tr>
                                </table>
                                

                            </asp:View>
                            
                            <asp:View ID="View2" runat="server">
                                <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Delete Menu Information<br />
                                <br />
                                </span>
                                
                               
                                <table class="auto-style34" align ="center" height="400px" width="500px" border="2px" >
                                    <tr>
                                        <td class="auto-style38"><strong>Select id:</strong></td>
                                        <span class="auto-style11">
                                        <td class="auto-style35">
                                            <asp:DropDownList ID="y9" runat="server" Font-Bold="True" Font-Size="X-Large" Height="40px" Width="139px" CssClass="text" DataSourceID="menuid5" DataTextField="dishid" DataValueField="dishid">
                                                
                                            </asp:DropDownList>
                                            <br />
                                        </td>
                                        </span>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12" colspan="2">
                                            <asp:Button ID="mdelete" runat="server" BackColor="#00FF99" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Delete" Width="121px" OnClick="mdelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="cancel" runat="server" BackColor="#00FF99" CssClass="text" Font-Bold="True" Font-Size="X-Large" Height="51px" Text="Cancel" Width="121px" />
                                            <br />
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [menu]"></asp:SqlDataSource>
                                            <asp:Label ID="m15" runat="server" Text="Label" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                </span>
                                
                               
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
                           
&nbsp;</form>
</asp:Content>


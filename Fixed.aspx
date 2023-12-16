<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Fixed.aspx.cs" Inherits="_Default" %>

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
            width: 250px;
        }
        .auto-style11 {
            font-size: larger;
            font-weight: 700;
            color: #FF66FF;
        }
         .text {
            border: 2px solid black;
            border-radius: 20px;
        }
         .auto-style35 {
             width: 87%;
             height: 36px;
         }
         .auto-style36 {
             height: 70px;
         }
         .auto-style37 {
             height: 72px;
         }
         .auto-style38 {
             height: 70px;
             width: 260px;
             font-size: x-large;
         }
         .auto-style39 {
             height: 79px;
         }
         .auto-style40 {
             width: 87%;
             height: 146px;
         }
         .auto-style43 {
             height: 87px;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      
            <table class="auto-style8" height="500px" width="800px" >
                <tr>
                    <td class="auto-style10" align="center">
                         <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="55px" PostBackUrl="~/Home.aspx" Width="234px"  /> <br />
                        <br />
                        <asp:Button ID="art" runat="server" Height="55px"  Text="Dish Type" Width="239px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="art_Click" />
                        <br />
                        <br />
                        <asp:Button ID="arf" runat="server" Height="55px"  Text="Add Room Facilities" Width="238px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="arf_Click" />
                        <br />
                        <br />
                         <asp:Button ID="aid" runat="server" Height="55px"  Text="Add Room Type" Width="239px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="aid_Click" />
                        <br />
                        <br />
                         <asp:Button ID="apd" runat="server" Height="55px"  Text="Add Staff Department" Width="254px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="apd_Click" />
                        <br />
                        <br />
                         <asp:Button ID="acd" runat="server" Height="55px"  Text="Add Staff Post" Width="239px" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" OnClick="acd_Click" />
                        <br />
                        <br />
                        <asp:Button ID="addcity" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="50px"  Text="Add  Dish Detail" Width="234px" OnClick="addcity_Click1" />
                        <br />
                        <br />
                        <asp:Button ID="addl" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="48px" Text="Add Table Services" Width="230px" OnClick="addl_Click" />
                        <br />
                        <br />
                         <asp:Button ID="addtabletype" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="44px" OnClick="addtabletype_Click" Text="Table Type" Width="235px" />
                        <br />
                    </td>
                    <td class="auto-style9">
                        <asp:MultiView ID="MultiView1" runat="server" >
                             <asp:View ID="View1" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Dish Type
                                 <br />
                                <br />
                                </span>
                            <table class="auto-style40" width="300px" border="2px" align="center">
                                <tr>
                                    <td class="auto-style38"><strong>Dish Type:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="r1" runat="server" Height="39px"  Width="186px" Font-Size="X-Large" ></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style43" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="s1" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Save" Width="136px" OnClick="s1_Click" />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                                  </asp:View>

                            <asp:View ID="View2" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Room Facilities&nbsp;
                                 <br />
                                <br />
                                </span>
                                <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                                <tr>
                                    <td class="auto-style38"><strong>Room Facilities:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="r2" runat="server" Height="39px"  Width="186px" Font-Size="X-Large"></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="s2" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Save" Width="136px" OnClick="s2_Click" />
                                        <br />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Facilities]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                            </asp:View>

                             <asp:View ID="View3" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Room Type<br />
                                <br />
                                </span>
                                 <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                                <tr>
                                    <td class="auto-style38"><strong>&nbsp;Room Type:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="i1" runat="server" Height="39px"  Width="186px" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="s4" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Save" Width="136px" OnClick="s4_Click"  />
                                        <br />
                                        <asp:Label ID="m2" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table> 
                            </asp:View>
                             <asp:View ID="View4" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Staff Department<br />
                                <br />
                                </span> 
                                 <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                                <tr>
                                    <td class="auto-style38"><strong>Department:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="p1" runat="server" Height="39px"  Width="186px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="s5" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Save" Width="136px" OnClick="s5_Click" />
                                        <br />
                                        <asp:Label ID="m3" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
                             <asp:View ID="View5" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Staff Post<br />
                                <br />
                                </span> 
                                 <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                                <tr>
                                    <td class="auto-style38"><strong>Post:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="c1" runat="server" Height="39px"  Width="186px" Font-Size="X-Large"></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="s6" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Save" Width="136px" OnClick="s6_Click" />
                                        <br />
                                        <asp:Label ID="m4" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
                            <asp:View ID="View6" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Dish Detail<br />
                                <br />
                                </span> 
                                 <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                                <tr>
                                    <td class="auto-style38"><strong>Dish Type:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:DropDownList ID="y6" runat="server" Height="45px" Width="141px" DataSourceID="dishtype2" DataTextField="dishtype" DataValueField="dishtype">
                                        </asp:DropDownList>
                                    
                                        <asp:SqlDataSource ID="dishtype2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dishtype] FROM [dishtype]"></asp:SqlDataSource>
                                    
                                    </td>
                                </tr>
                                      <tr>
                                    <td class="auto-style38"><strong>Dish Detail:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="y8" runat="server" Height="39px"  Width="186px" CssClass="text" Font-Size="X-Large" ></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="c3" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Save" Width="136px" OnClick="c3_Click"  />
                                        <br />
                                        <asp:Label ID="m5" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
                            <asp:View ID="View7" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Table Services<br />
                                <br />
                                </span> 
                                 <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                               
                                     <tr>
                                    <td class="auto-style38"><strong>Tabel Services:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="c5" runat="server" Height="39px"  Width="186px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        <asp:Button ID="locations" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="56px" OnClick="locations_Click" Text="Save" Width="134px" />
                                        &nbsp;&nbsp;<br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="m6" runat="server" Text="Label" Visible="False"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
                             <asp:View ID="View8" runat="server">
                                 <span class="auto-style11" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Table Type<br />
                                <br />
                                </span> 
                                 <table class="auto-style35" height="300px" width="300px" border="2px" align="center">
                               
                                     <tr>
                                    <td class="auto-style38"><strong>Tabel Type:</strong></td>
                                    <td class="auto-style36">
                                    
                                        <asp:TextBox ID="addttype" runat="server" Height="39px"  Width="186px" CssClass="text" Font-Size="X-Large"></asp:TextBox>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        <asp:Button ID="addtt" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="X-Large" Height="57px" OnClick="addtt_Click" Text="Save" Width="128px" />
                                        &nbsp;&nbsp;<br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="tttt" runat="server" Text="Label" Visible="False"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
                            
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
&nbsp;</form>

</asp:Content>


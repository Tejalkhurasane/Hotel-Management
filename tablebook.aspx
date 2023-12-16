<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tablebook.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 1000px;
            height: 1062px;
        }
        .auto-style12 {
            width: 75%;
            height: 1098px;
        }
        .auto-style14 {
            height: 159px;
        }
        .auto-style15 {
            width: 82%;
        }
        .auto-style16 {
            width: 470px;
            height: 504px;
        }
        .auto-style17 {
            height: 97px;
        }
        .auto-style19 {
            height: 73px;
        }
        .auto-style22 {
            height: 80px;
        }
        .auto-style24 {
            height: 73px;
            width: 200px;
        }
        .auto-style27 {
            height: 80px;
            width: 200px;
        }
        .auto-style28 {
            height: 97px;
            }
        .auto-style29 {
            width: 84%;
            height: 90px;
        }
        .auto-style31 {
            width: 95px;
            height: 53px;
        }
        .auto-style32 {
            height: 53px;
            width: 141px;
        }
        .auto-style33 {
            width: 95px;
            height: 55px;
        }
        .auto-style34 {
            height: 55px;
            width: 141px;
        }
        .auto-style35 {
            width: 95px;
            height: 54px;
        }
        .auto-style36 {
            height: 54px;
            width: 141px;
        }
        .auto-style37 {
            width: 95px;
            height: 62px;
        }
        .auto-style38 {
            height: 62px;
            width: 141px;
        }
        .auto-style39 {
            width: 95px;
            height: 58px;
        }
        .auto-style40 {
            height: 58px;
            width: 141px;
        }
        .auto-style41 {
            width: 95px;
            height: 67px;
        }
        .auto-style42 {
            height: 67px;
            width: 141px;
        }
        .auto-style43 {
            height: 504px;
            width: 339px;
        }
        .auto-style44 {
            height: 111px;
        }
        .auto-style45 {
            height: 66px;
            width: 200px;
        }
        .auto-style46 {
            height: 66px;
        }
        .auto-style47 {
            height: 72px;
            width: 200px;
        }
        .auto-style48 {
            height: 72px;
        }
        .auto-style49 {
            height: 86px;
            width: 200px;
        }
        .auto-style50 {
            height: 86px;
        }
        .auto-style51 {
            width: 1092px;
        }
        .auto-style52 {
        height: 111px;
        font-size: x-large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style51">
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="HiddenField2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style51">
                
                <table class="auto-style12" ">
                    <tr>
                        <td colspan="2" class="auto-style44">
                            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transaction Id:&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="t30" runat="server" Height="39px" Width="165px"></asp:TextBox>
                            </h2>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style14" border="2px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Image ID="Image1" runat="server" Height="178px" Width="254px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                         <Center>   <table class="auto-style15" border="2px">
                                <tr>
                                    <td class="auto-style45">
                                        <h2>Table Id:</h2>
                                    </td>
                                    <td class="auto-style46">
                                        <asp:Label ID="l21" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style24">
                                        <h2>No of Members:</h2>
                                    </td>
                                    <td class="auto-style19">
                                        <asp:Label ID="l22" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style27">
                                        <h2>Table Type:</h2>
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Label ID="l23" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style47">
                                        <h2>Services:</h2>
                                    </td>
                                    <td class="auto-style48">
                                        <asp:Label ID="l24" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style49">
                                        <h2>Service1:</h2>
                                    </td>
                                    <td class="auto-style50">
                                        <asp:Label ID="l25" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style28">
                                        <h2>Service2:</h2>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="l26" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                              <tr>
                                    <td class="auto-style28" colspan="2">
                                
                                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                
                                    </td>
                                </tr>
                            </table>
                             </Center>
                        </td>
                        <td class="auto-style43">
                           <center> <table class="auto-style29" border="2px">
                                <tr>
                                    <td class="auto-style31">
                                        <h2>Customer Id:</h2>
                                    </td>
                                    <td class="auto-style32">
                                        <asp:Label ID="l27" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">
                                        <h2>Name:</h2>
                                    </td>
                                    <td class="auto-style32">
                                        <asp:Label ID="l28" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style33">
                                        <h2>Email:</h2>
                                    </td>
                                    <td class="auto-style34">
                                        <asp:Label ID="l29" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">
                                        <h2>Address:</h2>
                                    </td>
                                    <td class="auto-style36">
                                        <asp:Label ID="l30" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style33">
                                        <h2>Phone No.:</h2>
                                    </td>
                                    <td class="auto-style34">
                                        <asp:Label ID="l31" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37">
                                        <h2>User Name:</h2>
                                    </td>
                                    <td class="auto-style38">
                                        <asp:Label ID="l32" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39">
                                        <h2>Password:</h2>
                                    </td>
                                    <td class="auto-style40">
                                        <asp:Label ID="l33" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">
                                        <h2>Gender:</h2>
                                    </td>
                                    <td class="auto-style42">
                                        <asp:Label ID="l34" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style28" colspan="2">
                                        
                                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                        
                                    </td>
                                </tr>
                            </table>
                               </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style52">
                            
                            <strong>Date:&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="b6" runat="server" CssClass="text" Font-Size="X-Large" Height="33px" TextMode="Date" Width="197px"></asp:TextBox>
                            </strong>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style44">
                            <asp:Button ID="b1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="44px" OnClick="b1_Click" Text="Book Table" Width="185px" />
                            <br />
                            <br />
                            <asp:Label ID="b3" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    </table>
                
            </td>
        </tr>
    </table>
    


</asp:Content>


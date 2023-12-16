<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" UnobtrusiveValidationMode ="none" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            width: 57%;
            height: 64px;
        }
        .text {
            border: 2px solid black;
            border-radius: 20px;
        }
         .auto-style22 {
             height: 293px;
             width: 611px;
         }
         .auto-style24 {
             height: 300px;
             width: 200px;
         }
         .auto-style31 {
             height: 93px;
         }
        .auto-style32 {
            font-size: x-large;
            width: 178px;
            height: 90px;
        }
        .auto-style33 {
            width: 298px;
            height: 90px;
        }
        .auto-style34 {
            font-size: x-large;
            width: 178px;
            height: 91px;
        }
        .auto-style35 {
            width: 298px;
            height: 91px;
        }
        .auto-style36 {
            font-size: x-large;
            width: 178px;
            height: 94px;
        }
        .auto-style37 {
            width: 298px;
            height: 94px;
        }
        .auto-style38 {
            font-size: x-large;
            width: 178px;
            height: 89px;
        }
        .auto-style39 {
            width: 298px;
            height: 89px;
        }
        .auto-style40 {
            font-size: x-large;
            width: 178px;
            height: 83px;
        }
        .auto-style41 {
            width: 298px;
            height: 83px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration<br />
        <br />
            </span>
           </strong><span class="auto-style24">
        <table class="auto-style22" hight="250px" width="350px" border="2px" align="center">
            <tr>
                <td class="auto-style32" align="center"><strong>Id:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style33">
                    <asp:TextBox ID="k10" runat="server" Height="49px"  Width="239px" align="center" Font-Size="X-Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32" align="center"><strong>Name:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style33">
                    <asp:TextBox ID="k1" runat="server" Height="49px"  Width="239px" align="center" ValidationGroup="a" Font-Size="X-Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="k1" ErrorMessage="Enter Name " ForeColor="#FF3300" ValidationGroup="a" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style32" align="center"><strong>Email:</strong></td>
                <td class="auto-style33">
           <strong><span class="auto-style8">
                    <asp:TextBox ID="k2" runat="server" Height="49px"  Width="239px" align="center" ValidationGroup="a" Font-Size="X-Large" ></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="k2" ErrorMessage="Enter the email" Font-Size="X-Large" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a">*</asp:RegularExpressionValidator>
            </span>
           </td>
            </tr>
               <tr>
                <td class="auto-style34" align="center"><strong>Address:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style35">
                    <asp:TextBox ID="k3" runat="server" Height="49px"  Width="239px" align="center" ValidationGroup="a" Font-Size="X-Large"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="k3" ErrorMessage="Enter the Address" ForeColor="#FF3300" ValidationGroup="a" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                <td class="auto-style36" align="center"><strong>Phone No.:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style37">
                    <asp:TextBox ID="k4" runat="server" Height="49px"  Width="239px" align="center" ValidationGroup="a" Font-Size="X-Large"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="k4" ErrorMessage="Enter the Phone number" ForeColor="#FF3300" ValidationGroup="a" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                <td class="auto-style38" align="center"><strong>User Name:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style39">
                    <asp:TextBox ID="k5" runat="server" Height="49px"  Width="239px" align="center" ValidationGroup="a" Font-Size="X-Large"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="k5" ErrorMessage="Enter the Username" ForeColor="#FF3300" ValidationGroup="a" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                <td class="auto-style40" align="center"><strong>Password:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style41">
                    <asp:TextBox ID="k6" runat="server" Height="49px"  Width="239px" align="center" TextMode="Password" ValidationGroup="a" Font-Size="X-Large"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="k6" ErrorMessage="Enter the Password" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                <td class="auto-style34" align="center"><strong>Gender:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style35">
                    <asp:RadioButtonList ID="k7" runat="server" Height="62px" Width="126px" ValidationGroup="a" Font-Size="X-Large">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="k7" ErrorMessage="Enter the Gender" ForeColor="#FF3300" ValidationGroup="a" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                </td>
            </tr>
               <tr>
                <td colspan="2" class="auto-style31">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="k8" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Height="57px" Text="Register" Width="130px" OnClick="k8_Click" ValidationGroup="a"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
                      
    
        
   
    
        <strong><span class="auto-style8">
                   <asp:Button ID="k9" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Cancel" Width="130px" />
                    <br />
                    <asp:Label ID="k11" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Small" ShowMessageBox="True" />
                    <br />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <br />
            </span>
          
                      
    
        
   
    
                </td>
            </tr>
            
        </table>
            <br />
            </span>
          
                      
    
        
   
</asp:Content>


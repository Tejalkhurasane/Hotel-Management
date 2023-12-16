<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" UnobtrusiveValidationMode ="none" AutoEventWireup="true" CodeFile="hotellogin.aspx.cs" Inherits="_Default" %>

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
         .auto-style27 {
             font-size: x-large;
             width: 178px;
             height: 69px;
         }
         .auto-style28 {
             width: 298px;
             height: 69px;
         }
         .auto-style29 {
             font-size: x-large;
             width: 178px;
             height: 70px;
         }
         .auto-style30 {
             width: 298px;
             height: 70px;
         }
         .auto-style31 {
             height: 79px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <strong><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hotel Login<br />
        <br />
            </span>
          
                      
    
        
   
    
        </strong><span class="auto-style24">
        <table class="auto-style22" hight="250px" width="350px" border="2px" align="center">
            <tr>
                <td class="auto-style27"><strong>Username:</strong></td>
            </span>
          
                      
    
        
   
    
        <strong><span class="auto-style8">
                <td class="auto-style28">
                    <asp:TextBox ID="j1" runat="server" Height="49px"  Width="239px" Font-Size="X-Large" ValidationGroup="a"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="j1" ErrorMessage="Enter the User Name First" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Password:</strong></td>
                <td class="auto-style30">
          
                      
    
        
   
    
        <strong><span class="auto-style8">
                    <asp:TextBox ID="j2" runat="server" Height="49px"  Width="239px" TextMode="Password" Font-Size="X-Large" ValidationGroup="a" ></asp:TextBox>
            &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="j2" ErrorMessage="Enter the Password" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
            </span>
          
                      
    
        
   
    
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style31">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="j3" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Height="57px" Text="Login" Width="130px" OnClick="j3_Click" ValidationGroup="a"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
                      
    
        
   
    
        <strong><span class="auto-style8">
                   <asp:Button ID="j4" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Cancel" Width="130px" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="X-Large" ShowMessageBox="True" ShowSummary="False" />
                    <br />
            </span>
          
                      
    
        
   
    
                </td>
            </tr>
            
        </table>
            <br />
            </span>
          
                      
    
        
   
    
</asp:Content>


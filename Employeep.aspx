<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeFile="Employeep.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1" runat="server">
     <strong><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; My Profile<br />
        <br />
            </span>
          
                      
    
        
   
    
        </strong><span class="auto-style24">
       <center> <table class="auto-style22" hight="250px" width="350px" border="2px" >
            <tr>
                <td class="auto-style27"><strong>&nbsp; Staff Id:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="emp1" runat="server" Height="49px"  Width="239px" Font-Size="X-Large" ValidationGroup="a" CssClass="text" ></asp:TextBox>
                &nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Button ID="emp7" runat="server" Font-Bold="True" Font-Size="X-Large" Height="47px" OnClick="emp7_Click" Text="Search" Width="126px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>&nbsp; Staff Department:</strong></td>
                <td class="auto-style30">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="emp2" runat="server" CssClass="text" DataSourceID="staffdept4" DataTextField="dept" DataValueField="dept" Height="56px" ValidationGroup="a" Width="199px" Font-Size="X-Large">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="staffdept4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dept] FROM [dept]"></asp:SqlDataSource>
                    <strong><span class="auto-style8">
            &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emp2" ErrorMessage="Enter the Department" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
            </span>
           </td>
            </tr>
                <tr>
                <td class="auto-style27"><strong>&nbsp; Staff Post:</strong></td>
            </span>
           <strong><span class="auto-style8">
                <td class="auto-style28">
                    &nbsp;<strong><span class="auto-style8">&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="emp3" runat="server" CssClass="text" DataSourceID="staffpost4" DataTextField="post" DataValueField="post" Height="56px" ValidationGroup="a" Width="199px" Font-Size="X-Large">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="staffpost4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [post] FROM [post]"></asp:SqlDataSource>
            </span>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emp3" ErrorMessage="Enter the Username First" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style27"><strong>&nbsp; Staff Name:</strong></td>
                <td class="auto-style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="emp4" runat="server" Height="49px"  Width="239px" Font-Size="X-Large" ValidationGroup="a" CssClass="text" ></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emp4" ErrorMessage="Enter the Username First" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style27"><strong>&nbsp; Address:</strong></td>
                <td class="auto-style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="emp5" runat="server" Height="49px"  Width="239px" Font-Size="X-Large" ValidationGroup="a" CssClass="text"  ></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="emp5" ErrorMessage="Enter the Username First" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style27"><strong>&nbsp; Phone No.:</strong></td>
                <td class="auto-style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="emp6" runat="server" Height="49px"  Width="239px" Font-Size="X-Large" ValidationGroup="a" CssClass="text" ></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="emp6" ErrorMessage="Enter the Username First" Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style31">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="emp8" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Height="57px" Text="Update" Width="130px"  ValidationGroup="a" OnClick="emp8_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
                      
    
        
   
    
        <strong><span class="auto-style8">
                   <asp:Button ID="emp9" runat="server" BackColor="#FF99FF" Font-Bold="True" Font-Size="X-Large" Height="57px" Text="Cancel" Width="130px"  />
                    <br />
                    <asp:Label ID="emp10" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <br />
            </span>
          
                      
    
        
   
    
                </td>
            </tr>
            
        </table>
               </center>
            <br />
            </span>
          
                      
     </form>
</asp:Content>


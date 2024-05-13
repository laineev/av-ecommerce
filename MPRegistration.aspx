<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWebForm.master" AutoEventWireup="true" CodeFile="MPRegistration.aspx.cs" Inherits="MPlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            width: 441px;
           
        }
        .auto-style2 {
            height: 34px;
            width: 527px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            height: 26px;
            width: 527px;
        }
        .auto-style5 {
            height: 25px;
            width: 527px;
        }
        .auto-style6 {
            height: 34px;
            width: 369px;
            text-align: right;
        }
        .auto-style7 {
            width: 369px;
            text-align: right;
        }
        .auto-style8 {
            height: 26px;
            width: 369px;
            text-align: right;
        }
        .auto-style9 {
            height: 25px;
            width: 369px;
             text-align:right;
        }
        .auto-style10 {
            width: 527px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div>
    
          <br />
          <span class="auto-style3" ><strong><em>REGISTRATION PAGE</em></strong></span></div>
        <div></div>
        <table class="auto-style1" align ="center">
            <tr>
                <td class="auto-style6">
                     <asp:Label ID="Label2" runat="server" Text="First Name:" style="text-align: right"></asp:Label>
                </td>
                <td class="auto-style2">
                    
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style10">
                    
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmailAdd" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                    </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label5" runat="server" Text="Birthday:"></asp:Label>
                    </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBirthday" runat="server" TextMode="Date"></asp:TextBox>
                    &nbsp;<br />
                    <asp:Label ID="lblAgeValidator" runat="server" Font-Size="XX-Small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>
                    </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPass" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="#FF5050"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="Label7" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ErrorMessage="*" ForeColor="#FF5050"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style10" text-align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style10" text-align="center">
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="168px" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     &nbsp;</td>
                <td class="auto-style10">
                    
                      <asp:Label ID="lblResponse" runat="server" style="font-style: italic"></asp:Label>
                    
                      <br />
                </td>
            </tr>
        </table>

</asp:Content>



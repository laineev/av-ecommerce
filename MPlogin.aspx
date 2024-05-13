<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWebForm.master" AutoEventWireup="true" CodeFile="MPlogin.aspx.cs" Inherits="MPlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            width: 482px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div>
    
          <br />
          <span class="auto-style3" ><strong><em>LOG-IN PAGE</em></strong></span></div>
        <div></div>
        <table class="auto-style1" align ="center">
            <tr>
                <td class="auto-style2">
                     <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Log In" Height="31px" Width="168px" />
                </td>
            </tr>
            <tr>
                <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblResponse" runat="server" style="font-style: italic"></asp:Label>
                </td>
            </tr>
        </table>

</asp:Content>



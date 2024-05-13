<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWebForm.master" AutoEventWireup="true" CodeFile="MPmembers.aspx.cs" Inherits="MPlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            width: 412px;
           
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
        .auto-style10 {
            width: 527px;
        }
        .auto-style11 {
            width: 74%;
        }
        .auto-style12 {
            width: 154px;
        }
        .auto-style13 {
            width: 79px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div>
    
          <br />
          <span class="auto-style3" ><strong><em>PURCHASE PAGE</em></strong></span></div>
        <br>
        <table class="auto-style1" align ="center">
            <tr>
                <td class="auto-style6">
                     <asp:Label ID="Label2" runat="server" Text="Name:" style="text-align: right"></asp:Label>
                </td>
                <td class="auto-style2" style="text-align: left">
                    
                    <asp:Label ID="lblName" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style4" style="text-align: left">
                    <asp:Label ID="lblUsername" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                    </td>
                <td class="auto-style2" style="text-align: left">
                    <asp:Label ID="lblAddress" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2" style="text-align: left">
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     &nbsp;</td>
                <td class="auto-style10">
                    
                      <br />
                </td>
            </tr>
        </table>
  <DIV  align ="center">  <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

      <Columns>
                             <asp:ButtonField Text="SELECT" CommandName="Select" />

                         </Columns>

                          </asp:GridView></DIV>
    <div></div><br>
    <div>   <table class="auto-style11" align ="center">
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label6" runat="server" Text="Product ID:"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtProdId" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label7" runat="server" Text="Product Name:"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtProdName" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label8" runat="server" Text="Price:"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label9" runat="server" Text="Stocks:"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtStocks" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label10" runat="server" Text="Order Quantity:"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style13">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style13">
                                    <asp:Button ID="btnPurchase" runat="server" Text="Purchase" OnClick="btnPurchase_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style13">
                                    <asp:Label ID="lblResponse" runat="server" style="font-style: italic; font-weight: 700"></asp:Label>
                                </td>
                            </tr>
                        </table></div>
    <br><div>
        <asp:Button ID="btnLogout" runat="server" Text="LOG OUT" OnClick="btnLogout_Click" />
      </div>

</asp:Content>



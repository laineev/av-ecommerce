<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWebForm.master" AutoEventWireup="true" CodeFile="MPtrans.aspx.cs" Inherits="MPlogin" %>

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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div>
    
          <br />
          <span class="auto-style3" ><strong><em>CONFIRMATION PAGE</em></strong></span></div>
                    
                                    <asp:Label ID="lblResponse" runat="server" Text="" style="font-style: italic; font-weight: 700;"></asp:Label>
        <br>
        <table class="auto-style1" align ="center">
            <tr>
                <td class="auto-style8"><asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style4" style="text-align: left">
                    <asp:Label ID="lblEmail" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label4" runat="server" Text="Product Purchased:"></asp:Label>
                    </td>
                <td class="auto-style2" style="text-align: left">
                    <asp:Label ID="lblProduct" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label5" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                <td class="auto-style2" style="text-align: left">
                    <asp:Label ID="lblQuantity" runat="server" Text="" style="font-weight: 700"></asp:Label>
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     <asp:Label ID="Label11" runat="server" Text="TOTAL:"></asp:Label>
                    </td>
                <td class="auto-style10" style="text-align: left">
                    
                    <asp:Label ID="lblTotal" runat="server" Text="" style="font-weight: 700"></asp:Label>
                    
                      <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     &nbsp;</td>
                <td class="auto-style10" style="text-align: left">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                     <asp:Label ID="Label12" runat="server" Text="Purchase Date:"></asp:Label>
                    </td>
                <td class="auto-style10" style="text-align: left">
                    
                    <asp:Label ID="lblDate" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     &nbsp;</td>
                <td class="auto-style10" style="text-align: left">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                     &nbsp;</td>
                <td class="auto-style10" style="text-align: left">
                    
                                    <asp:Button ID="btnPurchase" runat="server" Text="Purchase" OnClick="btnPurchase_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                     &nbsp;</td>
                <td class="auto-style10" style="text-align: left">
                    
                                    &nbsp;</td>
            </tr>
        </table>
    <div></div><br>
    

</asp:Content>



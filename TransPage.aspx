<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransPage.aspx.cs" Inherits="TransPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            width: 262px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Transaction Page"></asp:Label>
    
    </div>

        <div></div>


        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Product Purchased:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblProduct" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Quantity:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblQuantity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="TOTAL:"></asp:Label>
&nbsp;</td>
                <td>
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Date:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnPurchaseAgain" runat="server" Text="BACK" OnClick="btnPurchaseAgain_Click" />
                </td>
                <td>
                    <asp:Button ID="btnPurchase" runat="server" OnClick="btnPurchase_Click" Text="PURCHASE" />
                </td>
            </tr>
        </table>


    </form>
</body>
</html>

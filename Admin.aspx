<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 235px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 146px;
        }
        .auto-style6 {
            width: 146px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="ADMIN PAGE"></asp:Label>
    
    </div>

        <div></div>

        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"><Columns>
                             <asp:ButtonField Text="Select" CommandName="Select" />
                        </Columns>
        </asp:GridView>
<div></div>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Product ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProdId" runat="server" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Product Nane:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Quantity:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" OnClick="btnUpdate_Click" style="height: 29px" />
                </td>
            </tr>
        </table>
        </div>

        <div>
            <asp:Label ID="Label6" runat="server" Text="TRANSACTIONS:"></asp:Label>
        </div>
        <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
             <Columns>
                             <asp:ButtonField Text="Select" CommandName="Select" />
                    </Columns>


        </asp:GridView>
        <div></div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Date of Purchase:
                        "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Text="Bought Product:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblProduct" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label10" runat="server" Text="Quantity:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="lblQuantity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="Total Amount:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAmount" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
    

</body>
</html>

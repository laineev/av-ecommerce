<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Members" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 261px;
        }
        .auto-style3 {
            width: 213px;
        }
        .auto-style4 {
            width: 213px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            width: 261px;
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="MEMBERS PAGE"></asp:Label>
    
    </div>

        <div></div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbUsername" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Birthday:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBirthday" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

        <div></div>

         <div>


             <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                 <Columns>
                             <asp:ButtonField Text="SELECT" CommandName="Select" />

                         </Columns>
             </asp:GridView>

         </div>

        <div></div>

        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Text="Product ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProdId" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Text="Product Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProdName" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label11" runat="server" Text="Price:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label12" runat="server" Text="Stocks:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtStocks" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label13" runat="server" Text="Order Quantity:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="*" ForeColor="Red" style="font-weight: 700; font-size: x-small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>



        </div>
        <div></div>

        <div>
            <asp:Button ID="btnPurchase" runat="server" Text="PURCHASE" OnClick="btnPurchase_Click" />

        </div>
    </form>
</body>
</html>

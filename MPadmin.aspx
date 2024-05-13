<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWebForm.master" AutoEventWireup="true" CodeFile="MPadmin.aspx.cs" Inherits="MPlogin" %>

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
        .auto-style14 {
            width: 154px;
            height: 28px;
        }
        .auto-style15 {
            width: 79px;
            height: 28px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div>
    
          <br />
          <span class="auto-style3" ><strong><em>ADMIN PAGE</em></strong></span></div>
        <br />
  <DIV  align ="center">  <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

      <Columns>
                             <asp:ButtonField Text="SELECT" CommandName="Select" />

                         </Columns>

                          </asp:GridView>
      <br />
      </DIV>
      <table class="auto-style11" align ="center">
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label6" runat="server" Text="Product ID:"></asp:Label>
                                </td>
                                <td class="auto-style15">
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
                                    <asp:Label ID="Label10" runat="server" Text="Quantity:"></asp:Label>
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
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnPurchase_Click" />
                                </td>
                            </tr>
                        </table>
      <br />
      <asp:Label ID="Label11" runat="server" style="font-weight: 700" Text="TRANSACTIONS:"></asp:Label>
      <br />
      <asp:GridView ID="GridView2" runat="server" align ="center" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
     <Columns>
                             <asp:ButtonField Text="Select" CommandName="Select" />
                    </Columns>  </asp:GridView>
        <br>
        <table class="auto-style1" align ="center">
            <tr>
                <td class="auto-style6">
                     <asp:Label ID="Label2" runat="server" Text="Date of Purchase:" style="text-align: right"></asp:Label>
                </td>
                <td class="auto-style2" style="text-align: left">
                    
                    <asp:Label ID="lblDate" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style4" style="text-align: left">
                    <asp:Label ID="lblEmail" runat="server" Text="" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label4" runat="server" Text="Product Bought:"></asp:Label>
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
                <td class="auto-style6"><asp:Label ID="Label12" runat="server" Text="Total Amount:"></asp:Label>
                    </td>
                <td class="auto-style2" style="text-align: left">
                    <asp:Label ID="lblAmount" runat="server" Text="" style="font-weight: 700"></asp:Label>
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
    <div> <div>
        <asp:Button ID="btnLogout" runat="server" Text="LOG OUT" OnClick="btnLogout_Click" />
      </div></div><br>
    <div>   </div>

</asp:Content>



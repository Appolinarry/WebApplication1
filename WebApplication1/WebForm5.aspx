<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Height="25px" Text="Магазин" Width="200px" PostBackUrl="~/Index.aspx" />
                     </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" Text="Продукты" Width="200px" PostBackUrl="~/WebForm2.aspx" />
                     </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button3" runat="server" Text="Склад" Width="200px" PostBackUrl="~/WebForm3.aspx" />
                     </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button4" runat="server" Text="Поиск 1" Width="200px" PostBackUrl="~/WebForm4.aspx" />
                     </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ShopNumber" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="ShopNumber" HeaderText="ShopNumber" InsertVisible="False" ReadOnly="True" SortExpression="ShopNumber" />
                                <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                                <asp:BoundField DataField="SquearShop" HeaderText="SquearShop" SortExpression="SquearShop" />
                                <asp:BoundField DataField="ShopAdresss" HeaderText="ShopAdresss" SortExpression="ShopAdresss" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" OnSelected="SqlDataSource1_Selected" SelectCommand="Search22" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter Direction="ReturnValue" Name="RETURN_VALUE" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                        <asp:Button ID="Button4" runat="server" Text="Поиск 2" Width="200px" PostBackUrl="~/WebForm5.aspx" />
                     </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ShopNumber" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                                <asp:BoundField DataField="ShopAdresss" HeaderText="ShopAdresss" SortExpression="ShopAdresss" />
                                <asp:BoundField DataField="ShopNumber" HeaderText="ShopNumber" InsertVisible="False" ReadOnly="True" SortExpression="ShopNumber" />
                                <asp:BoundField DataField="SquearShop" HeaderText="SquearShop" SortExpression="SquearShop" />
                                <asp:BoundField DataField="NameProduct" HeaderText="NameProduct" SortExpression="NameProduct" />
                                <asp:BoundField DataField="SortProduct" HeaderText="SortProduct" SortExpression="SortProduct" />
                                <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" SortExpression="Price" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="Search111" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ShopNumber" DataValueField="ShopNumber">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="GetShop" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                                <asp:BoundField DataField="SumProd" HeaderText="SumProd" ReadOnly="True" SortExpression="SumProd" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="seach11_11" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

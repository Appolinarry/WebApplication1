<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 58px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
  <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm2.aspx" Text="Продукты" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm2.aspx" Text="Продукты" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm4.aspx" Text="Поиск1" Width="200px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button4" runat="server" PostBackUrl="~/WebForm5.aspx" Text="Поиск2" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_idProduct,Shop_ShopNumber,ShopNumber,idProduct" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="NameProduct" HeaderText="NameProduct" SortExpression="NameProduct" />
                                <asp:BoundField DataField="idProduct" HeaderText="idProduct" InsertVisible="False" ReadOnly="True" SortExpression="idProduct" />
                                <asp:BoundField DataField="SortProduct" HeaderText="SortProduct" SortExpression="SortProduct" />
                                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                                <asp:BoundField DataField="ProductWeight" HeaderText="ProductWeight" SortExpression="ProductWeight" />
                                <asp:BoundField DataField="ProductCount" HeaderText="ProductCount" SortExpression="ProductCount" />
                                <asp:BoundField DataField="ShopNumber" HeaderText="ShopNumber" InsertVisible="False" ReadOnly="True" SortExpression="ShopNumber" />
                                <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                                <asp:BoundField DataField="SquearShop" HeaderText="SquearShop" SortExpression="SquearShop" />
                                <asp:BoundField DataField="ShopAdresss" HeaderText="ShopAdresss" SortExpression="ShopAdresss" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DeleteKeeping" DeleteCommandType="StoredProcedure" InsertCommand="AddKeeping" InsertCommandType="StoredProcedure" SelectCommand="GetKeeping" SelectCommandType="StoredProcedure" UpdateCommand="UpdateKeeping" UpdateCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Product_idProduct" PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="Shop_ShopNumber" PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox2" Name="ProductPrice" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox3" Name="ProductWeight" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox4" Name="ProductCount" PropertyName="Text" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="Product_idProduct" PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="Shop_ShopNumber" PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox2" Name="ProductPrice" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox3" Name="ProductWeight" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox4" Name="ProductCount" PropertyName="Text" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Номер записи" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px" Visible="False" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Название продукта</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" DataSourceID="SqlDataSource2" DataTextField="idProduct" DataValueField="idProduct">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [idProduct], [NameProduct] FROM [Product]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Название магазина</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" DataSourceID="SqlDataSource3" DataTextField="ShopNumber" DataValueField="ShopNumber">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [ShopNumber], [ShopName] FROM [Shop]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Цена продукта</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" ErrorMessage="Только числа"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" ErrorMessage="ВВедите цену!"></asp:RequiredFieldValidator>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Вес продукта</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" EnableClientScript="False" ErrorMessage="Только числа!"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите вес!"></asp:RequiredFieldValidator>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Количество продукта</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" EnableClientScript="False" ErrorMessage="Только числа!"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите количество!"></asp:RequiredFieldValidator>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Добавить" Width="200px" OnClick="Button5_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Обновить" Width="200px" OnClick="Button6_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Text="Удалить" Width="200px" OnClick="Button7_Click"/>
                    </td>
                    <td>
                        <asp:Label ID="Error3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

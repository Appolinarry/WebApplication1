<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 315px;
        }
        .auto-style3 {
            width: 315px;
        }
        .auto-style4 {
            height: 25px;
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
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm3.aspx" Text="Склад" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm4.aspx" Text="Поиск1" Width="200px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button4" runat="server" PostBackUrl="~/WebForm5.aspx" Text="Поиск2" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ShopNumber" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="562px">
                            <Columns>
                                <asp:BoundField DataField="ShopNumber" HeaderText="ShopNumber" InsertVisible="False" ReadOnly="True" SortExpression="ShopNumber" />
                                <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                                <asp:BoundField DataField="SquearShop" HeaderText="SquearShop" SortExpression="SquearShop" />
                                <asp:BoundField DataField="ShopAdresss" HeaderText="ShopAdresss" SortExpression="ShopAdresss" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DeleteShop" DeleteCommandType="StoredProcedure" InsertCommand="AddShop" InsertCommandType="StoredProcedure" SelectCommand="GetShop" SelectCommandType="StoredProcedure" UpdateCommand="UpdateShop" UpdateCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TextBox4" Name="ShopNumber" PropertyName="Text" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="ShopName" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBox2" Name="SquearShop" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox3" Name="ShopAdresss" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox4" Name="ShopNumber" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox1" Name="ShopName" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBox2" Name="SquearShop" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox3" Name="ShopAdresss" PropertyName="Text" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Номер магазина" Visible =FALSE></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="200px" Visible =FALSE ></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Название магазина</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите название"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                 <tr>
                    <td>Площадь магазина</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                     </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" ErrorMessage="Только числа!" MaximumValue="9000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите число!"></asp:RequiredFieldValidator>
                     </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style4">Адресс магазина</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                     </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите адресс"></asp:RequiredFieldValidator>
                     </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Добавить" Width="200px" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button6" runat="server" Text="Обновить" Width="200px" OnClick="Button6_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button7" runat="server" Text="Удалить" Width="200px" OnClick="Button7_Click" />
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Error" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
        <table>

        </table>
    </form>
</body>
</html>

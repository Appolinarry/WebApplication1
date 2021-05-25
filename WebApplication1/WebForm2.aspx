<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

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
                    <td>
                        <asp:Button ID="Button3" runat="server" PostBackUrl="~/Index.aspx" Text="Магазин" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" PostBackUrl="~/WebForm3.aspx" Text="Склад" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" PostBackUrl="~/WebForm4.aspx" Text="Поиск 1" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" PostBackUrl="~/WebForm5.aspx" Text="Поиск 2" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idProduct" DataSourceID="SqlDataSource1" Width="530px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="idProduct" HeaderText="idProduct" InsertVisible="False" ReadOnly="True" SortExpression="idProduct" />
                                <asp:BoundField DataField="NameProduct" HeaderText="NameProduct" SortExpression="NameProduct" />
                                <asp:BoundField DataField="SortProduct" HeaderText="SortProduct" SortExpression="SortProduct" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DeleteProduct" SelectCommand="GetProduct" DeleteCommandType="StoredProcedure" InsertCommand="AddProduct" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommand="UpdateProduct" UpdateCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TextBox3" Name="idProduct" PropertyName="Text" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="NameProduct" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBox2" Name="SortProduct" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox3" Name="idProduct" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="TextBox1" Name="NameProduct" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBox2" Name="SortProduct" PropertyName="Text" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Артикул товара" Visible ="FALSE"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" ReadOnly="True" Visible ="FALSE"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Наименование</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите название"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Сорт</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" ErrorMessage="Введите сорт"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="200px" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Обновить" Width="200px" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Text="Удалить" Width="200px" OnClick="Button7_Click" />
                    </td>
                    <td>
                        <asp:Label ID="Error2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

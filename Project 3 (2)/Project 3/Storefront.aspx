<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Storefront.aspx.cs" Inherits="Project_3.Storefront" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 858px;
            height: 77px;
        }
        .auto-style2 {
            width: 254px;
            height: 77px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style6 {
            height: 235px;
        }
        .auto-style8 {
            height: 77px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 98%;">
                <tr>
                    <td class="auto-style1">
                    <asp:Label ID="lblStoreName" runat="server" Font-Bold="True" Font-Size="20pt"></asp:Label>
                    </td>
                    <td class="auto-style2">
                    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                    <asp:Label ID="lblTheme" runat="server" Text="Theme:"></asp:Label>
                    <asp:Button ID="btnLightMode" runat="server" CausesValidation="False" Text="Light" Width="63px" />
                        <asp:Button ID="btnDarkMode" runat="server" BackColor="Black" CausesValidation="False" ForeColor="White" Text="Dark" Width="63px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="3">
                        <asp:Panel ID="pnlSearchAndFilter" runat="server" BorderStyle="Inset" Height="191px">
                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lblSearchAndFilter" runat="server" Font-Bold="True" Font-Size="15pt" style="text-align: justify" Text="Search and Filter"></asp:Label>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblCategory" runat="server" Text="Category:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Label ID="lblSearch" runat="server" Text="Search by product name:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlCategory" runat="server" Height="22px" Width="322px" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                                <asp:ListItem Value="0">Select Category</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSearch" runat="server" AutoPostBack="True" OnTextChanged="txtSearch_TextChanged" Width="247px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">
                        <asp:Label ID="lblInventory" runat="server" Font-Bold="True" Font-Size="15pt" style="text-align: justify" Text="Filtered Inventory"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">
                    <asp:GridView ID="gvDisplayProducts" runat="server" Height="336px" Width="1461px" style="margin-top: 3px">
                    </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

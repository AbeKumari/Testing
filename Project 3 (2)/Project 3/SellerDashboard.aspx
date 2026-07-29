<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerDashboard.aspx.cs" Inherits="Project_3.SellerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 375px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 720px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblStoreName" runat="server" Font-Bold="True" Font-Size="20pt"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                </td>
                <td style="text-align: right">
                    <asp:Button ID="btnLogOut" runat="server" BackColor="Red" ForeColor="White" OnClick="btnLogOut_Click" Text="Log Out" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
                    <asp:Panel ID="pnlProductManagement" runat="server" BorderStyle="Ridge" Height="281px" Width="1321px">
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="lblProductManagement" runat="server" Font-Bold="True" Font-Size="15pt" style="text-align: justify" Text="Product Management"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblProductID" runat="server" Text="Product ID:"></asp:Label>
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="ddlProductID" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="ddlProductID_SelectedIndexChanged" Width="322px">
                            <asp:ListItem Value="0">Select Product</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblProductName" runat="server" Text="Product Name:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="txtProductName" runat="server" Width="318px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCategory" runat="server" Text="Category:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCategory" ErrorMessage="*" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlCategory" runat="server" Height="22px" Width="322px">
                            <asp:ListItem Value="0">Select Category</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDetails" runat="server" Text="Description Details:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDetails" runat="server" Width="318px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblPrice" runat="server" Text="Unit Price (R):"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUnitPrice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUnitPrice" runat="server" Width="318px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAdd" runat="server" Height="38px" OnClick="btnAdd_Click" Text="Add product" Width="138px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" Height="38px" Text="Update product" Width="138px" OnClick="btnUpdate_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDeleteProduct" runat="server" Height="38px" Text="Delete product" Width="138px" OnClick="btnProduct_Click" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                        <asp:Label ID="lblInventory" runat="server" Font-Bold="True" Font-Size="15pt" style="text-align: justify" Text="Inventory"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:GridView ID="gvDisplayProducts" runat="server" Height="241px" Width="1339px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

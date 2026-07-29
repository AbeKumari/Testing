<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Project_3._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 234px;
        }
        .auto-style2 {
            width: 648px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width: 100%; height: 546px;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblStoreName" runat="server" Font-Bold="True" Font-Size="20pt"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td style="text-align: right">
                    <asp:Label ID="lblTheme" runat="server" Text="Theme:"></asp:Label>
                    <asp:Button ID="btnLightMode" runat="server" CausesValidation="False" Text="Light" Width="63px" />
&nbsp;<asp:Button ID="btnDarkMode" runat="server" BackColor="#333333" CausesValidation="False" ForeColor="White" Text="Dark" Width="63px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Panel ID="pnlLogIN" runat="server" BorderColor="#999999" BorderStyle="Outset" Height="327px" style="text-align: left">
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblLogIn" runat="server" Text="Existing User Login" Font-Bold="True" Font-Size="15pt" style="text-align: justify"></asp:Label>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblLoginUName" runat="server" Text="Username:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginUName" ErrorMessage="*" ForeColor="Red" ValidationGroup="LogIN"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtLoginUName" runat="server" Width="318px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblLoginPword" runat="server" Text="Password:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="LogIN"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtLoginPassword" runat="server" Width="318px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogIN" runat="server" Height="45px" Text="Log In" Width="129px" OnClick="btnLogIN_Click" ValidationGroup="LogIN" />
                    </asp:Panel>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Panel ID="pnlRegister" runat="server" BorderColor="#999999" BorderStyle="Outset" Height="348px">
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRegistration" runat="server" Font-Bold="True" Font-Size="15pt" style="text-align: justify" Text="New User Registration"></asp:Label>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRegUName" runat="server" Text="Username:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegUName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtRegUName" runat="server" Width="318px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRegPassword" runat="server" Text="Password:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtRegPassword" runat="server" Width="318px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRole" runat="server" Text="Assign role:"></asp:Label>
                        &nbsp;<asp:Label ID="lblRole0" runat="server" ForeColor="Red" Text="*" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdoBuyer" runat="server" GroupName="Role" Text="Buyer" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdoSeller" runat="server" GroupName="Role" Text="Seller" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnRegister" runat="server" Height="45px" Text="Register" Width="129px" OnClick="btnRegister_Click" ValidationGroup="Registration" />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                        <asp:Label ID="lblMessageConfirmation0" runat="server"></asp:Label>
                        </td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                        <asp:Label ID="lblMessageConfirmation" runat="server"></asp:Label>
                        </td>
            </tr>
        </table>
    </form>
</body>
</html>

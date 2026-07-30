<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewForm.aspx.cs" Inherits="Project_3.NewForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 721px;
        }
        .auto-style4 {
            height: 240px;
        }
        .auto-style5 {
            height: 241px;
        }
        .auto-style6 {
            height: 240px;
            width: 490px;
        }
        .auto-style7 {
            height: 241px;
            width: 490px;
        }
        .auto-style8 {
            height: 240px;
            width: 508px;
        }
        .auto-style9 {
            height: 241px;
            width: 508px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblTest01" runat="server" Text="Testing at G1 - Main Lab"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblTodaysDate" runat="server" Text="2026/07/30"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblAbe" runat="server" Text="Abe was here: 17:22"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text="Amu was here 10:49"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LatihanWeb1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 215px;
        }
        .auto-style3 {
            width: 536px;
        }
        .auto-style4 {
            width: 215px;
            height: 26px;
        }
        .auto-style5 {
            width: 536px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 400px; margin-left: auto; margin-right:auto;">
            <p style="margin-left: 160px">
&nbsp;&nbsp;
            LOGIN</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">username</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <p>
                <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" style="margin-left: 130px" Width="120px" />
            </p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourceLogin" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" SelectCommand="SELECT * FROM [tb_user]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

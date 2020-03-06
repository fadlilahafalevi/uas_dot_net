<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="LatihanWeb1.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <div style="margin-left: auto; margin-right:auto;" class="auto-style1">
            <h3>CHOOSE MENU</h3
                <br />
                <asp:Button ID="ButtonEmployee" runat="server" Text="MASTER DATA EMPLOYEE" Width="247px" OnClick="ButtonEmployee_Click" />
                <br /><br />
                <asp:Button ID="ButtonJobTitle" runat="server" Text="MASTER DATA JOB TITLE" Width="247px" OnClick="ButtonJobTitle_Click" />
                <br /><br />
                <asp:Button ID="ButtonLogOut" runat="server" Text="Logout" Width="247px" OnClick="ButtonLogOut_Click" />
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_jobtitle_create.aspx.cs" Inherits="LatihanWeb1.m_jobtitle_create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            MASTER DATA JOB TITLE<br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Job Title Code</td>
                <td>
                    <asp:TextBox ID="TextBoxJTCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Job Title Name</td>
                <td>
                    <asp:TextBox ID="TextBoxJTName" runat="server" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Job Title Description</td>
                <td>
                    <textarea id="TextAreaJTDesc" cols="20" name="S1" rows="2"></textarea></td>
            </tr>
        </table>
        <asp:Button ID="ButtonCreateJT" runat="server" Text="Create" />
    </form>
</body>
</html>

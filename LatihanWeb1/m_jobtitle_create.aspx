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
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 216px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <div style="width: 400px; margin-left: auto; margin-right:auto;">
                <h3>CREATE JOB TITLE</h3>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Job Title Code</td>
                        <td>
                            <asp:TextBox ID="TextBoxJTCode" runat="server" CssClass="auto-style3" Width="216px"></asp:TextBox>
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
                            <textarea id="TextAreaJTDesc" name="TextAreaJTDesc" rows="2" class="auto-style4"></textarea></td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="ButtonCreateJT" runat="server" Text="Create" OnClick="ButtonCreateJT_Click" /> &nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
            </div>
        </div>
    </form>
</body>
</html>

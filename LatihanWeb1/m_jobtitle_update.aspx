<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_jobtitle_update.aspx.cs" Inherits="LatihanWeb1.m_jobtitle_update" %>

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
            width: 216px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <div style="width: 400px; margin-left: auto; margin-right:auto;">
                   <h3> UPDATE JOB TITLE</h3>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Job Title Code</td>
                        <td>
                            <asp:TextBox ID="TextBoxJTCode" runat="server" Width="216px" ReadOnly="true"></asp:TextBox>
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
                            <textarea id="TextAreaJTDesc" name="S1" rows="2" runat="server" class="auto-style3" ></textarea></td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="ButtonUpdateJT" runat="server" Text="Update" OnClick="ButtonUpdateJT_Click" Width="110px" />&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" Width="118px" />
            </div>
        </div>
    </form>
</body>
</html>

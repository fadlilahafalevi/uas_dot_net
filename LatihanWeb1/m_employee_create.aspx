<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_employee_create.aspx.cs" Inherits="LatihanWeb1.m_employee_create" %>

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
            MASTER DATA EMPLOYEE<br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Employee ID</td>
                <td>
                    <asp:TextBox ID="TextBoxEmpID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="TextBoxEmpName" runat="server" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="TextBoxEmpEmail" runat="server" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <textarea id="TextAreaEmpAddress" name="TextAreaEmpAddress" cols="20" rows="2"></textarea></td>
            </tr>
            <tr>
                <td class="auto-style2">Job</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="JobTitle" DataTextField="jobtitle_name" DataValueField="jobtitle_code">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="JobTitle" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" SelectCommand="SELECT [jobtitle_name], [jobtitle_code] FROM [tb_jobtitle]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <asp:Button ID="ButtonCreateJT" runat="server" Text="Create" OnClick="ButtonCreateJT_Click1" />
    </form>
</body>
</html>

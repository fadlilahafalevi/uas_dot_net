﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_employee_update.aspx.cs" Inherits="LatihanWeb1.m_employee_update" %>

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
         <h3>UPDATE EMPLOYEE</h3>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Employee ID</td>
                <td>
                    <asp:TextBox ID="TextBoxEmpID" runat="server" Width="216px" ReadOnly="true"></asp:TextBox>
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
                    <textarea id="TextAreaEmpAddress" name="TextAreaEmpAddress" rows="2" runat="server" class="auto-style3"></textarea></td>
            </tr>
            <tr>
                <td class="auto-style2">Job</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="JobTitle" DataTextField="jobtitle_name" DataValueField="jobtitle_code" Height="25px" Width="216px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="JobTitle" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" SelectCommand="SELECT [jobtitle_name], [jobtitle_code] FROM [tb_jobtitle]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
            <br />
        <asp:Button ID="ButtonUpdateEmp" runat="server" Text="Update" OnClick="ButtonUpdateEmp_Click" Width="106px" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonCancel" runat="server" OnClick="ButtonCancel_Click" Text="Cancel" Width="105px" />
            </div>
        <div style="margin-left: 1080px">
        </div>
        <p style="margin-left: 920px">
            &nbsp;</p>
    </form>
</body>
</html>

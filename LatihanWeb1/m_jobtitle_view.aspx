<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_jobtitle_view.aspx.cs" Inherits="LatihanWeb1.m_jobtitle_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 214px;
        }
        .auto-style2 {
            width: 400px;
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right:auto;" class="auto-style2">
            <h3 style="text-align: center;">MASTER DATA JOB TITLE</h3>
                <asp:Button ID="ButtonCreate" runat="server" OnClick="ButtonCreate_Click" Text="Add Job Title"/>
        </div>
        <div style="text-align: center;">
            <div style="margin-left: auto; margin-right:auto;" class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="jobtitle_code" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="jobtitle_code" HeaderText="Job Title Code" ReadOnly="True" SortExpression="jobtitle_code" />
                        <asp:BoundField DataField="jobtitle_name" HeaderText="Job Title Name" SortExpression="jobtitle_name" />
                        <asp:BoundField DataField="jobtitle_desc" HeaderText="Job Description" SortExpression="jobtitle_desc" />
                        <asp:HyperLinkField Text="Edit" HeaderText="Update" DataNavigateUrlFields="jobtitle_code" DataNavigateUrlFormatString="~/m_jobtitle_update.aspx?code={0}" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="ButtonBack" runat="server" Text="Back" OnClick="ButtonBack_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tb_jobtitle]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>

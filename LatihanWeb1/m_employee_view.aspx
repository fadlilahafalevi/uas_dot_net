<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_employee_view.aspx.cs" Inherits="LatihanWeb1.m_employee_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            height: 77px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right:auto;" class="auto-style1">
            <h3 style="text-align: center;">MASTER DATA JOB TITLE</h3>
                <asp:Button ID="ButtonCreate" runat="server" OnClick="ButtonCreate_Click" Text="Add Employee" />
        </div>
        <div style="text-align: center;">
            <div style="width: 500px; margin-left: auto; margin-right:auto;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="employee_id" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="employee_id" HeaderText="Employee ID" ReadOnly="True" SortExpression="employee_id" />
                        <asp:BoundField DataField="employee_name" HeaderText="Name" SortExpression="employee_name" />
                        <asp:BoundField DataField="employee_address" HeaderText="Address" SortExpression="employee_address" />
                        <asp:BoundField DataField="employee_email" HeaderText="Email" SortExpression="employee_email" />
                        <asp:BoundField DataField="jobtitle_name" HeaderText="Job Title" SortExpression="jobtitle_name" />
                        <asp:HyperLinkField Text="Edit" HeaderText="Update" DataNavigateUrlFields="employee_id" DataNavigateUrlFormatString="~/m_employee_update.aspx?id={0}" />
                        <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkDelete" runat="server" OnClick="DeleteButton_Click">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="ButtonBack" runat="server" Text="Back" OnClick="ButtonBack_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [employee_id], [employee_name], [employee_address], [employee_email], [tb_jobtitle].[jobtitle_name] FROM [tb_employee] left join [tb_jobtitle] on [tb_jobtitle].[jobtitle_code] = [tb_employee].[employee_jobtitle_code]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_employee_view.aspx.cs" Inherits="LatihanWeb1.m_employee_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="employee_id" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="employee_id" HeaderText="Employee ID" ReadOnly="True" SortExpression="employee_id" />
                    <asp:BoundField DataField="employee_name" HeaderText="Name" SortExpression="employee_name" />
                    <asp:BoundField DataField="employee_address" HeaderText="Address" SortExpression="employee_address" />
                    <asp:BoundField DataField="employee_email" HeaderText="Email" SortExpression="employee_email" />
                    <asp:BoundField DataField="jobtitle_name" HeaderText="Job Title" SortExpression="jobtitle_name" />
                    <asp:HyperLinkField Text="Edit" HeaderText="Action" DataNavigateUrlFields="employee_id" DataNavigateUrlFormatString="~/m_employee_update.aspx?id={0}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [employee_id], [employee_name], [employee_address], [employee_email], [tb_jobtitle].[jobtitle_name] FROM [tb_employee] left join [tb_jobtitle] on [tb_jobtitle].[jobtitle_code] = [tb_employee].[employee_jobtitle_code]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

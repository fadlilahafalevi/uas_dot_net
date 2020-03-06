<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_jobtitle_view.aspx.cs" Inherits="LatihanWeb1.m_jobtitle_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="jobtitle_code" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="jobtitle_code" HeaderText="Job Title Code" ReadOnly="True" SortExpression="jobtitle_code" />
                    <asp:BoundField DataField="jobtitle_name" HeaderText="Job Title Name" SortExpression="jobtitle_name" />
                    <asp:BoundField DataField="jobtitle_desc" HeaderText="Job Description" SortExpression="jobtitle_desc" />
                    <asp:HyperLinkField Text="Edit" HeaderText="Action" DataNavigateUrlFields="jobtitle_code" DataNavigateUrlFormatString="~/m_jobtitle_update.aspx?code={0}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tb_jobtitle]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

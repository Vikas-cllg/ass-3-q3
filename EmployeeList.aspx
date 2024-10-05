<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeList.aspx.cs" Inherits="EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="eno" HeaderText="Employee No" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="designation" HeaderText="Designation" SortExpression="designation" />
        <asp:BoundField DataField="dept" HeaderText="Department" />
        <asp:BoundField DataField="salary" HeaderText="Salary" />
        <asp:TemplateField HeaderText="CV">
            <ItemTemplate>
                <asp:HyperLink ID="lnkCV" runat="server" NavigateUrl='<%# Eval("cv") %>' Target="_blank">Download CV</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emplyoee-managementConnectionString %>" SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>

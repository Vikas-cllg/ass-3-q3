<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateEmployee.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Employee</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Label ID="lblEmpID" runat="server" Text="Employee No: "></asp:Label>
<asp:TextBox ID="txtEmpID" runat="server"></asp:TextBox>
<br />

<asp:Label ID="lblDepartment" runat="server" Text="Department: "></asp:Label>
<asp:DropDownList ID="ddlDepartment" runat="server" DataTextField="dept_name" DataValueField="dept_name" DataSourceID="SqlDataSource2" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:emplyoee-managementConnectionString %>" SelectCommand="SELECT [dept_name] FROM [department]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<br />

<asp:Label ID="lblDesignation" runat="server" Text="Designation: "></asp:Label>
<asp:DropDownList ID="ddlDesignation" runat="server" DataTextField="desg_name" DataValueField="desg_name" DataSourceID="SqlDataSource3" />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:emplyoee-managementConnectionString %>" SelectCommand="SELECT [desg_name] FROM [designation]"></asp:SqlDataSource>
<br />

<asp:Label ID="lblSalary" runat="server" Text="Salary: "></asp:Label>
<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
<br />

<asp:Button ID="btnUpdate" runat="server" Text="Update Employee" OnClick="btnUpdate_Click" />

        </div>
    </form>
</body>
</html>
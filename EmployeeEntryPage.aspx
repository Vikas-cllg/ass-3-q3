<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeEntryPage.aspx.cs" Inherits="EmployeeEntryPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Entry</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Label ID="lblName" runat="server" Text="Employee Name: "></asp:Label>
<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
<br />

<asp:Label ID="lblDepartment" runat="server" Text="Department: "></asp:Label>
<asp:DropDownList ID="ddlDepartment" runat="server" DataTextField="dept_name" DataValueField="dept_name" DataSourceID="SqlDataSource1" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emplyoee-managementConnectionString %>" SelectCommand="SELECT [dept_name] FROM [department]"></asp:SqlDataSource>
<br />

<asp:Label ID="lblDesignation" runat="server" Text="Designation: "></asp:Label>
<asp:DropDownList ID="ddlDesignation" runat="server" DataTextField="desg_name" DataValueField="desg_name" DataSourceID="SqlDataSource2" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:emplyoee-managementConnectionString %>" SelectCommand="SELECT [desg_name] FROM [designation]"></asp:SqlDataSource>
<br />

<asp:Label ID="lblSalary" runat="server" Text="Salary: "></asp:Label>
<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
<br />

<asp:Label ID="lblCV" runat="server" Text="Upload CV (PDF): "></asp:Label>
<asp:FileUpload ID="fileUploadCV" runat="server" />
            <br />
            <br />
<br />

<asp:Button ID="btnSubmit" runat="server" Text="Add Employee" OnClick="btnSubmit_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="addDepartment" runat="server" OnClick="addDepartment_Click" Text="Add Department" />
&nbsp;&nbsp;
            <asp:Button ID="addDesignation" runat="server" Text="Add Designation" />
            <br />

        </div>
    </form>
</body>
</html>
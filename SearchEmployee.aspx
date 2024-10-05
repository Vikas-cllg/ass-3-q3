<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchEmployee.aspx.cs" Inherits="SearchEmployee" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Employee</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Label ID="lblSalary" runat="server" Text="Enter Salary: "></asp:Label>
<asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
<br />

<asp:Label ID="lblDesignation" runat="server" Text="Enter Designation: "></asp:Label>
<asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
<br />

<asp:Button ID="btnSearch" runat="server" Text="Search Employee" OnClick="btnSearch_Click" />
<asp:GridView ID="gvEmployees" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>

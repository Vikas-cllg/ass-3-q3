<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepartmentPage.aspx.cs" Inherits="DepartmentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        this is department page<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Dept Name"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="deptName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="addDept" runat="server" OnClick="addDept_Click" Text="Add Department" />
    
    </div>
    </form>
</body>
</html>

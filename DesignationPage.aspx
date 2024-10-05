<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DesignationPage.aspx.cs" Inherits="DesignationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        this is a designation page<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Designation Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="desiName" runat="server"></asp:TextBox>
    
        <br />
        <br />
        <asp:Button ID="addDesig" runat="server" OnClick="addDesig_Click" Text="Add Designation" />
    
    </div>
    </form>
</body>
</html>

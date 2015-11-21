<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblNBD" runat="server" Text="NBD"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnHome" runat="server" Text="Home" />
        <br />
        <asp:Button ID="btnProjects" runat="server" Text="Projects" />
        <br />
        <asp:Button ID="btnProfile" runat="server" Text="Profile" />
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="+" />
    
    </div>
    </form>
</body>
</html>

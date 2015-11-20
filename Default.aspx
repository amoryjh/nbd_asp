<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NBDWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class = "login">
    
        <asp:Label ID="lblEmpNum" runat="server" Text="Employee Number"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmpNum" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmpNum" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
    
        <br />
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>

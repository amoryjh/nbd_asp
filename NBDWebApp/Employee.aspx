<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="NBDWebApp.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Create Employee Acounts"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Empoyee Number"></asp:Label>
        <br />
        <asp:TextBox ID="TxtEmpNum" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmpNum" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Employee Password"></asp:Label>
        <br />
        <asp:TextBox ID="TxtEmpPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmpPass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TxtEmpPassConfirm" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEmpPassConfirm" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtEmpPass" ControlToValidate="TxtEmpPassConfirm" ErrorMessage="CompareValidator" ForeColor="Red">Passwords do now match, Please Retry</asp:CompareValidator>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetRoles]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
        <br />
        <asp:Label ID="LblMessage" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>

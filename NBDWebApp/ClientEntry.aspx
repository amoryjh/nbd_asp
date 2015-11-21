<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientEntry.aspx.cs" Inherits="NBDWebApp.ClientEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblClient" runat="server" Text="Client Name"></asp:Label>
        <br />
        <asp:TextBox ID="txtClient" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClient" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Client Name</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblAddress" runat="server" Text="Client Address"></asp:Label>
        <br />
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Client Address</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblContact" runat="server" Text="Contact"></asp:Label>
        <br />
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Contact Name</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
        <br />
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Phone Number</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter PhoneNumber ex(&quot;000-000-0000&quot;)" ForeColor="#FF3300" ValueToCompare="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:CompareValidator>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Email</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnInsert" runat="server" Text="Insert Client" />
    
    </div>
    </form>
</body>
</html>

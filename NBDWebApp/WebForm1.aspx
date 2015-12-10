<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NBDWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="cliName" DataValueField="ID" Height="18px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="270px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Width="277px"></asp:ListBox>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=NBD_DatabaseEntities" DefaultContainerName="NBD_DatabaseEntities" EnableFlattening="False" EntitySetName="CLIENTs">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>

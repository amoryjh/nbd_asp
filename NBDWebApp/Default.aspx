<%@ Page Title="Default" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NBDWebApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="login-wrapper">   
        <h1>Login:</h1>  
        <label id="lblEmpNum">Employee Number</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmpNum" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="txtEmpNum" runat="server" MaxLength="20"></asp:TextBox>
        <label id="lblPassword">Password</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="20" Wrap="False"></asp:TextBox>
        <asp:Button ID="btnLogin" CssClass="btn" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</asp:Content>
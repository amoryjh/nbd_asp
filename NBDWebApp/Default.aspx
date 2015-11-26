<%@ Page Title="Default" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NBDWebApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="login-wrapper">   
        <h1 class="text-center"><a href="#">NBD Login</a></h1>  
        
        <div class="form-group">
            <label id="lblEmpNum" for="txtEmpNum">Employee Number</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmpNum" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox class="form-control" ID="txtEmpNum" runat="server" MaxLength="20"></asp:TextBox>
        </div>

        <div class="form-group">
            <label id="lblPassword" for="txtPassword">Password</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox class="form-control" ID="txtPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Button ID="btnLogin" CssClass="btn" runat="server" OnClick="btnLogin_Click" Text="Login" />
        </div>

        <div class="form-group">
            <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
        </div>

        <div class="form-group">
            <p><a href="#">Create New Account</a></p>
            <p><a href="#">Forgot Password?</a> Hello from the other side!</p>
        </div>

    </div>
    </form>
</asp:Content>
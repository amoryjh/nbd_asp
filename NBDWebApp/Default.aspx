<%@ Page Title="Default" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NBDWebApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
    <div class="login-wrapper">
        
        <div id="login-section">
            
<<<<<<< HEAD
            <h1 class="text-center">re<a href="#">NBD Login</a></h1>  
=======
            <h1 class="text-center"><a href="#">NBD Login</a></h1>  
>>>>>>> origin/master
        
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
                <p><a href="#" class="display-register">Create New Account</a></p>
                <p><a href="#">Forgot Password?</a></p>
            </div>

        </div>

        <div id="register-section">
            <h1 class="text-center"><a href="#">Create Account</a></h1>  
        
            <div class="form-group">
                <label id="lblNewEmployee" for="txtNewEmployee">Employee Number</label>
                <asp:TextBox class="form-control" ID="txtNewEmployee" runat="server" MaxLength="20"></asp:TextBox>
            </div>

            <div class="form-group">
                <label id="lblNewPassword" for="txtPassword">Password</label>
                <asp:TextBox class="form-control" ID="txtNewPassWord" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <label id="lblNewPasswordConfirm" for="txtPassword">Confirm Password</label>
                <asp:TextBox class="form-control" ID="txtNewPassWordConfirm" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
<<<<<<< HEAD
                <asp:Button ID="createAccount" CssClass="btn" runat="server" Text="Create Account" OnClick="createAccount_Click" />
            </div>
            <div class="form-group">
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </div>
=======
                <asp:Button ID="createAccount" CssClass="btn" runat="server" Text="Create Account" />
            </div>

>>>>>>> origin/master
            <div class="form-group">
                <asp:Button CssClass="btn btn-primary display-login" runat="server" OnClick="btnLogin_Click" Text="Back to Login" />
            </div>
        </div>
    </div>
</form>
    <script>
        $('#register-section').hide();

        $('.display-login').click(function () {
            $('#register-section').hide();
            $('#login-section').show();
        })

        $('.display-register').click(function () {
            $('#login-section').hide();
            $('#register-section').show();
        })
    </script>
</asp:Content>
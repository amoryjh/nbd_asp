<%@ Page Title="Login" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NBDWebApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="login-wrapper">
        
        <div id="login-section">
            
            <div class="form-group">
                <h1 class="text-center">Welcome Back!</h1>
                <img src="/assets/img/emoji.png" alt="" />  
            </div>
            <div class="form-group">
                <label id="lblEmpNum" for="txtEmpNum">Employee Number</label>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtEmpNum" ErrorMessage="Employee Username Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox class="form-control" ID="txtEmpNum" runat="server" MaxLength="20"></asp:TextBox>
            </div>

            <div class="form-group">
                <label id="lblPassword" for="txtPassword">Password</label>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox class="form-control" ID="txtPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblStatus" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary" runat="server" EnableViewState="False" ForeColor="Red" ClientIDMode="Static" />
                    <!--<p_designer:mapid="f8">
                        <a href="#" class="display-register" id="CreateNewAccount" __designer:mapid="f9">Create New Account</a>
                    </p>-->
            </div>

            <div class="form-group">
                <asp:Button ID="btnLogin" CssClass="btn btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </div>

            <div class="form-group">
                <p><a href="#" id="btnForgot">Forgot Password?</a></p>
                <p><a href="#" id="btnNewAccount">Need an account?</a></p>
            </div>
        </div>

        <div id="recover-section">
            <div class="form-group text-center">
                <h2>Forgot your password?</h2>
                <p>No sweat - <b>enter your email </b> and we'll find it for you.</p>
            </div>
            <div class="form-group">
                <label id="" for="txtRecoveryPassword">Email</label>
                <asp:TextBox class="form-control" ID="txtRecoveryPassword" runat="server" MaxLength="20" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnRecover" CssClass="btn btnLogin" runat="server" Text="Help Me!" />
                <button class="btn btnLogin btn-primary btnBack">Back</button>
            </div>
        </div>

        <div id="newAccount-section">
            <div class="form-group text-center">
                <h2>Need an account?</h2>
                <p>Talk to your manager or supervisor, they'll set up an account for you.</p>
            </div>
            <div class="form-group">
                <button class="btn btnLogin btn-primary btnBack">Back</button>
            </div>
        </div>

    </div>
</form>
    <script>
        $('#recover-section , #newAccount-section').hide();

        $('.btnBack').click(function (e) {
            e.preventDefault();
            $(this).parent().parent().hide();
            $('#login-section').show();
        })

        $('#btnForgot').click(function () {
            $('#login-section').hide();
            $('#recover-section').show();
        })
        $('#btnNewAccount').click(function () {
            $('#login-section').hide();
            $('#newAccount-section').show();
        })
    </script>

</asp:Content>
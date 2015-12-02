<%@ Page Title="Default" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NBDWebApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="login-wrapper">
        
        <div id="login-section">
            
            <h1 class="text-center"><a href="#">NBD Login</a></h1>  
        
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
                <asp:Button ID="btnLogin" CssClass="btn btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblStatus" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary" runat="server" EnableViewState="False" ForeColor="Red" />
                    <p_designer:mapid="f8">
                        <a href="#" class="display-register" id="CreateNewAccount" __designer:mapid="f9">Create New Account</a>
                    </p>
            </div>

            <div class="form-group">
                <p><a href="#">Forgot Password?</a></p>
                <p>&nbsp;</p>
            </div>

        </div>

        <div id="register-section">
            <h1 class="text-center"><a href="#">Create Account</a></h1>  
        
            <div class="form-group">
                <label id="lblNewEmployee" for="txtNewEmployee">Employee Number<label id="lblNewPassword0" for="txtPassword"></label></label>&nbsp;<asp:TextBox class="form-control" ID="txtNewEmployee" runat="server" MaxLength="20"></asp:TextBox>
            </div>

            <div class="form-group">
                <label id="lblNewPassword" for="txtPassword">Password</label>&nbsp;<asp:TextBox class="form-control" ID="txtNewPassWord" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <label id="lblNewPasswordConfirm" for="txtPassword">Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox class="form-control" ID="txtNewPassWordConfirm" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
    <asp:Label ID="LblSelectRole" runat="server" Text="Select A Role"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspNetRoles]"></asp:SqlDataSource>
                <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Button ID="Button2" CssClass="btn" runat="server" OnClick="btnCreate_Click" Text="Create" />
            </div>
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
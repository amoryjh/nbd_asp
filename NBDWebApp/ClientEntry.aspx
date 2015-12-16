<%@ Page Title="Bid Process" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClientEntry.aspx.cs" Inherits="NBDWebApp.ClientEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <!--<div class="client-wrapper box-border clearfix">-->
        <div class="report-group box-border clearfix">
        <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Enter new client</h1>
        </div>
        <!-- Hide the projects button and the add report button-->
        <div class="form-group col-md-12">
          <label id="lblBusiness" for="txtBusiness">Business</label>
            <asp:RequiredFieldValidator ID="rfvBusiness" runat="server" ErrorMessage="Business Name Required" ControlToValidate="txtBusiness" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtBusiness" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label id="lblCity" for="ddlCity">City</label>
            <asp:DropDownList  ID="ddlCity" class="form-control" placeholder="City" runat="server"></asp:DropDownList>
        </div>    

        <div class="form-group col-md-6">
            <label id="lblAddress" for="txtAddress">Address</label>
              <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address Required" ControlToValidate="txtAddress" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAddress" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label id="lblProv" for="ddlProv">Province</label>
            <asp:DropDownList  ID="ddlProv" class="form-control" placeholder="Prov" runat="server">
                <asp:ListItem Selected="True">Ontario</asp:ListItem>
                <asp:ListItem>Quebec</asp:ListItem>
                <asp:ListItem>Nova Scotia</asp:ListItem>
                <asp:ListItem>New Brunswick</asp:ListItem>
                <asp:ListItem>Manitoba</asp:ListItem>
                <asp:ListItem>British Columbia</asp:ListItem>
                <asp:ListItem>Prince Edward Island</asp:ListItem>
                <asp:ListItem>Saskatchewan</asp:ListItem>
                <asp:ListItem>Alberta</asp:ListItem>
                <asp:ListItem>Newfoundland and Labrador</asp:ListItem>
                <asp:ListItem>Northwest Territories</asp:ListItem>
                <asp:ListItem>Yukon</asp:ListItem>
                <asp:ListItem>Nunavut</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
         <div class="form-group col-md-4">
          <label id="lblPCode" for="txtPCode">Postal Code</label>
             <asp:RequiredFieldValidator ID="rfvPCode" runat="server" ErrorMessage="Postal Code Required" ControlToValidate="txtPCode" ForeColor="Red">*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revPCode" runat="server" ErrorMessage="Postal Code Not Valid" ControlToValidate="txtPCode" Text="*" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$" ForeColor="Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtPCode" class="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-8">
          <label id="lblPhone" for="txtPhone">Phone</label>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone Number Required" ControlToValidate="txtPhone" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Phone Number Must Be 10 Digits" ControlToValidate="txtPhone" Text="*" ValidationExpression="^\d{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
      </div>

      <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h2>Primary Contact Information</h2>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientFName" for="txtClientFName">First Name</label>
            <asp:RequiredFieldValidator ID="rfvClientFName" runat="server" ErrorMessage="Primary Contact Frist Name Required" ControlToValidate="txtClientFName" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientFName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientLName" for="txtClientLName">Last Name</label>
            <asp:RequiredFieldValidator ID="rfvClientLName" runat="server" ErrorMessage="Primary Contact Last Name Required" ControlToValidate="txtClientLName" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientLName" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientPos" for="txtClientPos">Position</label>
            <asp:RequiredFieldValidator ID="rfvClientPos" runat="server" ErrorMessage="Primary Contact Position Required" ControlToValidate="txtClientPos" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientPos" runat="server" class="form-control" placeholder="Position"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
    <asp:Label ID="LblMessage" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" />
        </div>

        <div class="form-group col-md-6">
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Client" OnClick="btnInsert_Click" />
        <asp:Button ID="btnClear" CssClass="btn" runat="server" Text="Clear" CausesValidation="false" OnClick="btnClear_Click" />
        </div>
    </div>
    </div>
    </form>
</asp:Content>

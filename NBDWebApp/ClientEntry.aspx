<%@ Page Title="Bid Process" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClientEntry.aspx.cs" Inherits="NBDWebApp.ClientEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="client-wrapper box-border clearfix">
        <div class="form-group col-md-12">
            <h1>Enter new client</h1>
        </div>
        <!-- Hide the projects button and the add report button-->
        <div class="form-group col-md-12">
          <label id="lblBusiness" for="txtClient">Business</label>
          <asp:TextBox ID="txtBusiness" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label id="lblCity" for="ddlCity">City</label>
            <asp:DropDownList  ID="ddlCity" class="form-control" placeholder="City" runat="server"></asp:DropDownList>
        </div>    

        <div class="form-group col-md-6">
            <label id="lblAddress" for="txtAddress">Address</label>
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
          <asp:TextBox ID="TtxtPCode" class="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-8">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>

         <div class="form-group col-md-12">
            <h2>Primary Contact Information</h2>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientFName" for="txtClientFName">First Name</label>
          <asp:TextBox ID="txtClientFName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientLName" for="txtClientLName">Last Name</label>
          <asp:TextBox ID="txtClientLName" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientPos" for="txtClientPos">Position</label>
          <asp:TextBox ID="txtClientPos" runat="server" class="form-control" placeholder="Position"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-12">
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Client" />
        </div>

    </div>
    </form>
</asp:Content>

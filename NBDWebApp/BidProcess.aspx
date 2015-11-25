<%@ Page Title="Bid Process" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BidProcess.aspx.cs" Inherits="NBDWebApp.BidProcess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="bid-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Enter new client</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBusiness" for="txtClient">Business</label>
          <asp:TextBox ID="txtBusiness" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClient" for="txtClient">Primary Contact</label>
          <asp:TextBox ID="txtClient" runat="server" class="form-control" placeholder="Contact Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblCity" for="txtCity">City</label>
            <asp:TextBox ID="txtCity" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblAddress" for="txtAddress">Address</label>
            <asp:TextBox ID="txtAddress" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblState" for="ddlState">State</label>
            <asp:DropDownList  ID="ddlState" class="form-control" placeholder="State" runat="server">
                <asp:ListItem Selected="True">Ontario</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>Ohio</asp:ListItem>
                <asp:ListItem>Texas</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
        <div class="form-group col-md-6">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
        <label id="lblEmail" for="txtEmail">Email</label>
        <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-12">
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Client" />
        </div>
    </div>
    </form>
</asp:Content>
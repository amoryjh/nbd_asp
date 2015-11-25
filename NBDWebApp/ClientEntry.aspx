<%@ Page Title="Bid Process" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClientEntry.aspx.cs" Inherits="NBDWebApp.ClientEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="client-wrapper">
        <div class="form-group">
            <h1>Enter new client</h1>
        </div>

        <div class="form-group">
          <label id="lblClient" for="txtClient">Client Name</label>
          <asp:TextBox ID="txtClient" runat="server" class="form-control" placeholder="Client Name"></asp:TextBox>
        </div>

        <div class="form-group">
            <label id="lblAddress" for="txtAddress">Client Address</label>
            <asp:TextBox ID="txtAddress" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group">
          <label id="lblContact" for="txtContact">Contact</label>
          <asp:TextBox ID="txtContact" class="form-control" placeholder="Contact" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group">
        <label id="lblEmail" for="txtEmail">Email</label>
        <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="form-group">
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Client" />
        </div>

    </div>
    </form>
</asp:Content>

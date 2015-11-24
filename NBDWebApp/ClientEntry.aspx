<%@ Page Title="Bid Process" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClientEntry.aspx.cs" Inherits="NBDWebApp.ClientEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="client-wrapper">
      
        <div class="form-group">
          <asp:Label for="txtClient" ID="lblClient" runat="server" Text="Client Name"></asp:Label>
          <asp:TextBox ID="txtClient" runat="server" class="form-control" placeholder="Client Name"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClient" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Client Name</asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
          <asp:Label for="txtAddress" ID="lblAddress" runat="server" Text="Client Address"></asp:Label>
          <asp:TextBox ID="txtAddress" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Client Address</asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
          <asp:Label ID="lblContact" for="txtContact" runat="server" Text="Contact"></asp:Label>
          <asp:TextBox ID="txtContact" class="form-control" placeholder="Contact" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Contact Name</asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
          <asp:Label ID="lblPhone" for="txtPhone" runat="server" Text="Phone"></asp:Label>
          <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Phone Number</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter PhoneNumber ex(&quot;000-000-0000&quot;)" ForeColor="#FF3300" ValueToCompare="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:CompareValidator>
        </div>
        
        <div class="form-group">
        <asp:Label ID="lblEmail" for="txtEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Please Enter Email</asp:RequiredFieldValidator>
        </div>
        
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Client" />
    </div>
    </form>
</asp:Content>

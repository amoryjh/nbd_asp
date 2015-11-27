<%@ Page Title="Bid Process" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BidProcess.aspx.cs" Inherits="NBDWebApp.BidProcess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">

    <div class="bid-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Enter Client Info</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBusiness" for="txtClient">Brandon Was Here</label>
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

    <div class="bid-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>NBD Staff</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBusiness" for="txtClient">Business</label>
          <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClient" for="txtClient">Primary Contact</label>
          <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Contact Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblCity" for="txtCity">City</label>
            <asp:TextBox ID="TextBox3" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblAddress" for="txtAddress">Address</label>
            <asp:TextBox ID="TextBox4" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblState" for="ddlState">State</label>
            <asp:DropDownList  ID="DropDownList1" class="form-control" placeholder="State" runat="server">
                <asp:ListItem Selected="True">Ontario</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>Ohio</asp:ListItem>
                <asp:ListItem>Texas</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
        <div class="form-group col-md-6">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="TextBox5" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
        <label id="lblEmail" for="txtEmail">Email</label>
        <asp:TextBox ID="TextBox6" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-12">
        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Insert Client" />
        </div>
    </div>

    <div class="bid-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBusiness" for="txtClient">Business</label>
          <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClient" for="txtClient">Primary Contact</label>
          <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Contact Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblCity" for="txtCity">City</label>
            <asp:TextBox ID="TextBox9" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblAddress" for="txtAddress">Address</label>
            <asp:TextBox ID="TextBox10" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblState" for="ddlState">State</label>
            <asp:DropDownList  ID="DropDownList2" class="form-control" placeholder="State" runat="server">
                <asp:ListItem Selected="True">Ontario</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>Ohio</asp:ListItem>
                <asp:ListItem>Texas</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
        <div class="form-group col-md-6">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="TextBox11" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
        <label id="lblEmail" for="txtEmail">Email</label>
        <asp:TextBox ID="TextBox12" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-12">
        <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Insert Client" />
        </div>
    </div>
    
    <div class="bid-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Material Requirements</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBusiness" for="txtClient">Business</label>
          <asp:TextBox ID="TextBox13" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClient" for="txtClient">Primary Contact</label>
          <asp:TextBox ID="TextBox14" runat="server" class="form-control" placeholder="Contact Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblCity" for="txtCity">City</label>
            <asp:TextBox ID="TextBox15" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblAddress" for="txtAddress">Address</label>
            <asp:TextBox ID="TextBox16" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblState" for="ddlState">State</label>
            <asp:DropDownList  ID="DropDownList3" class="form-control" placeholder="State" runat="server">
                <asp:ListItem Selected="True">Ontario</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>Ohio</asp:ListItem>
                <asp:ListItem>Texas</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
        <div class="form-group col-md-6">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="TextBox17" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
        <label id="lblEmail" for="txtEmail">Email</label>
        <asp:TextBox ID="TextBox18" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-12">
        <asp:Button ID="Button3" CssClass="btn" runat="server" Text="Insert Client" />
        </div>
    </div>

    <div class="bid-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Labour Requirements</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBusiness" for="txtClient">Business</label>
          <asp:TextBox ID="TextBox19" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClient" for="txtClient">Primary Contact</label>
          <asp:TextBox ID="TextBox20" runat="server" class="form-control" placeholder="Contact Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblCity" for="txtCity">City</label>
            <asp:TextBox ID="TextBox21" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblAddress" for="txtAddress">Address</label>
            <asp:TextBox ID="TextBox22" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblState" for="ddlState">State</label>
            <asp:DropDownList  ID="DropDownList4" class="form-control" placeholder="State" runat="server">
                <asp:ListItem Selected="True">Ontario</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>Ohio</asp:ListItem>
                <asp:ListItem>Texas</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
        <div class="form-group col-md-6">
          <label id="lblPhone" for="txtPhone">Phone</label>
          <asp:TextBox ID="TextBox23" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
        <label id="lblEmail" for="txtEmail">Email</label>
        <asp:TextBox ID="TextBox24" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-12">
        <asp:Button ID="Button4" CssClass="btn" runat="server" Text="Insert Client" />
        </div>
    </div>

    </form>
</asp:Content>
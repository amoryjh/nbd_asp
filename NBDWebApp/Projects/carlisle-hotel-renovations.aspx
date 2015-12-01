<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="carlisle-hotel-renovations.aspx.cs" Inherits="NBDWebApp.Projects.carlisle_hotel_renovations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
    <div class="form-group">
        <h1 class="section-title">Carlisle Hotel Renovations</h1>
        <h2 class="section-title">Add New Report</h2>

        <label id="" for="ddlProv">Report</label>
        <select id="ddlProjectType" class="form-control">
            <option value="dailyreport">Daily Report</option>
            <option value="designbid">Design Bid</option>
            <option value="prouctionreport">Production Report</option>
        </select>
    </div>

    <div class="report-group box-border clearfix">
    <div class="report-title">
        <h1 class="project-title">New Design Bid</h1>
    </div>
    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Enter Client Info</h1>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClientBusinessName" for="txtClientBusinessName">Business</label>
          <asp:TextBox ID="txtClientBusinessName" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblClientPhone" for="txtClientPhone">Phone</label>
          <asp:TextBox ID="txtClientPhone" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblClientAdress" for="txtClientAddress">Address</label>
            <asp:TextBox ID="txtClientAddress" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblClientCity" for="txtClientCity">City</label>
            <asp:TextBox ID="txtClientCity" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblClientProv" for="ddlProv">Province</label>
            <asp:DropDownList  ID="ddlProv" class="form-control" placeholder="State" runat="server">
                <asp:ListItem Selected="True">ON</asp:ListItem>
                <asp:ListItem>B.C</asp:ListItem>
                <asp:ListItem>AB</asp:ListItem>
                <asp:ListItem>MB</asp:ListItem>
            </asp:DropDownList>
        </div>      
        
        <div class="form-group col-md-6">
          <label id="lblClientPostal" for="txtClientPostal">Postal Code</label>
          <asp:TextBox ID="txtClientPostal" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
        <label id="lblClientConFName" for="txtClientConFName">Client First Name</label>
        <asp:TextBox ID="txtClientConFName" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
        <label id="lblClientConLName" for="txtClientConLName">Client Last Name</label>
        <asp:TextBox ID="txtClientConLName" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
        <label id="lblClientConPos" for="txtClientConPos">Client Position</label>
        <asp:TextBox ID="txtClientConPos" class="form-control" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>NBD Staff</h1>
        </div>
        <div class="form-group col-md-12">
            <h3>Sales Associate:</h3>
        </div>

        <div class="form-group col-md-6">
          <label id="lblSalesAssocFName" for="txtSalesAssocFName">First Name</label>
          <asp:TextBox ID="txtSalesAssocFName" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblSalesAssocLName" for="txtSalesAssocFName">Last Name</label>
          &nbsp;<asp:TextBox ID="txtSalesAssocLName" runat="server" class="form-control" placeholder="Contact Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblSalesAssocPhone" for="txtSalesAssocPhone">Phone</label>
            <asp:TextBox ID="txtSalesAssocPhone" class="form-control" placeholder="City" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
            <h3>Designer:</h3>
        </div>

        <div class="form-group col-md-6">
            <label id="lblDesignerFName" for="txtDesignerFName">First Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerFName" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblDesignerLName" for="txtDesignerLName">Last Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerLName" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-6">
          <label id="lblDesignerPhone" for="txtDesignerPhone">Phone</label>
          <asp:TextBox ID="txtDesignerPhone" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
   
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project</h1>
        </div>

        <div class="form-group col-md-12">
          <label id="lblBidDate" for="txtBidDate">Bid Date</label>
          <asp:TextBox ID="txtBidDate" runat="server" class="form-control" placeholder="Business Name" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBidEstBeginDate" for="txtBidEstBeginDate">Estimated Begin Date</label>
          <asp:TextBox ID="txtBidEstBeginDate" runat="server" class="form-control" placeholder="Contact Name" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblBidEstComDate" for="txtBidEstComDate">Estimated Completion Date</label>
            <asp:TextBox ID="txtBidEstComDate" class="form-control" placeholder="City" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblProjSite" for="txtProjSite">Project Site</label>
            <asp:TextBox ID="txtProjSite" class="form-control" placeholder="Project Site" runat="server"></asp:TextBox>
        </div>      
        
        <div class="form-group col-md-6">
        <label id="lblBidEstCost" for="txtBidEstCost">Estimated Cost</label>
        <asp:TextBox ID="txtBidEstCost" class="form-control" placeholder="Estimated Cost" runat="server" TextMode="Email"></asp:TextBox>
        </div>
    </div>
    
    <div class="report-wrapper clearfix">
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
    </div>

    <div class="report-wrapper clearfix">
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
    </div>

    </form>
    <script>
        $('.report-group').hide();
        $('#ddlProjectType').on('change', function () {
            if (this.value == "designbid") {
                $('.report-group').show();
            }
            else {
                $('.report-group').hide();
            }
        });
    </script>
</asp:Content>
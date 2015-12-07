<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="carlisle-hotel-renovations.aspx.cs" Inherits="NBDWebApp.Projects.carlisle_hotel_renovations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
    <div class="form-group">
        <h1 class="section-title">Carlisle Hotel Renovations</h1>
    </div>

    <div class="timeline well clearfix">    
        <h3>
            Project Timeline
        </h3>
        <ul>
            <li>
                <span class="details">
                    Design Bid
                </span>
            </li>
            <li>
                <span class="details">
                    Design Budget
                </span>
            </li>
            <li>
                <span class="details">
                    Production Plan
                </span>
            </li>
            <li>
                <span class="details">
                    Approved
                </span>
            </li>
        </ul>
    </div>


    <div class="row box-border add-report clearfix">
        <div class="report-title">
            <h1 class="project-title">Add New Report?</h1>
        </div>
        <div class="report-wrapper report-list-section clearfix">
            <label id="" for="ddlProv">Report</label>
            <select id="ddlProjectType" class="form-control">
                <option value="project-designBid">Design Bid</option>
                <option value="project-productionPlan">Production Report</option>
            </select>
        </div>
    </div>
    
    <!-- 
    //////////////////////////////////////////////////////////
    -----------------------Design Bid-------------------------
    //////////////////////////////////////////////////////////  
    -->
    <div id="project-designBid" class="report-group box-border clearfix">
    <div class="report-title">
        <h1 class="project-title">New Design Bid</h1>
    </div>
    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Client Info</h1>
        </div>

        <div class="form-group col-md-6">
            <label id="lblExistingClientBusinessDesign" for="ddlExistingClientBusinessDesign">Existing Client</label>       
            <asp:DropDownList ID="ddlExistingClientBusinessDesign" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>

        <!-- Hide the projects button and the add report button-->
        <div class="form-group col-md-6">
          <label id="lblClientBusinessDesign" for="txtClientBusinessDesign">Business</label>
            <asp:RequiredFieldValidator ID="rfvBusiness" runat="server" ErrorMessage="Business Name Required" ControlToValidate="txtClientBusinessDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientBusinessDesign" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label id="lblClientCityDesign" for="ddlClientCityDesign">City</label>
            <asp:DropDownList  ID="ddlClientCityDesign" class="form-control" placeholder="City" runat="server"></asp:DropDownList>
        </div>    

        <div class="form-group col-md-6">
            <label id="lblClientAddressDesign" for="txtClientAddressDesign">Address</label>
              <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address Required" ControlToValidate="txtClientAddressDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtClientAddressDesign" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label id="lblClientProvDesign" for="ddlClientProvDesign">Province</label>
            <asp:DropDownList  ID="ddlClientProvDesign" class="form-control" placeholder="Prov" runat="server">
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
          <label id="lblClientPCodeDesign" for="txtClientPCodeDesign">Postal Code</label>
             <asp:RequiredFieldValidator ID="rfvPCode" runat="server" ErrorMessage="Postal Code Required" ControlToValidate="txtClientPCodeDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revPCode" runat="server" ErrorMessage="Postal Code Not Valid" ControlToValidate="txtClientPCodeDesign" Text="*" ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$" ForeColor="Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtClientPCodeDesign" class="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-8">
          <label id="lblClientPhoneDesign" for="txtClientPhoneDesign">Phone</label>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone Number Required" ControlToValidate="txtClientPhoneDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Phone Number Must Be 10 Digits" ControlToValidate="txtClientPhoneDesign" Text="*" ValidationExpression="^\d{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
          <asp:TextBox ID="txtClientPhoneDesign" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>

         <div class="form-group col-md-12">
            <h2>Primary Contact Information</h2>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientFNameDesign" for="txtClientFNameDesign">First Name</label>
            <asp:RequiredFieldValidator ID="rfvClientFName" runat="server" ErrorMessage="Primary Contact Frist Name Required" ControlToValidate="txtClientFNameDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientFNameDesign" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientLNameDesign" for="txtClientLNameDesign">Last Name</label>
            <asp:RequiredFieldValidator ID="rfvClientLName" runat="server" ErrorMessage="Primary Contact Last Name Required" ControlToValidate="txtClientLNameDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientLNameDesign" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientPosDesign" for="txtClientPosDesign">Position</label>
            <asp:RequiredFieldValidator ID="rfvClientPos" runat="server" ErrorMessage="Primary Contact Position Required" ControlToValidate="txtClientPosDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:TextBox ID="txtClientPosDesign" runat="server" class="form-control" placeholder="Position"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
            <asp:ValidationSummary ID="ValidationSummaryClientDesign" runat="server" ForeColor="Red" />
        </div>
        
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>NBD Staff</h1>
        </div>
        <div class="form-group col-md-12">
            <h3>Sales Associate:</h3>
        </div>

        <div class="form-group col-md-4">
          <label id="lblSalesAssocFNameDesign" for="txtSalesAssocFNameDesign">First Name</label>
          <asp:TextBox ID="txtSalesAssocFNameDesign" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblSalesAssocLNameDesign" for="txtSalesAssocFNameDesign">Last Name</label>
          &nbsp;<asp:TextBox ID="txtSalesAssocLNameDesign" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblSalesAssocPhoneDesign" for="txtSalesAssocPhoneDesign">Phone</label>
            <asp:TextBox ID="txtSalesAssocPhoneDesign" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
            <h3>Designer:</h3>
        </div>

        <div class="form-group col-md-4">
            <label id="lblDesignerFNameDesign" for="txtDesignerFNameDesign">First Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerFNameDesign" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblDesignerLNameDesign" for="txtDesignerLNameDesign">Last Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerLNameDesign" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-4">
          <label id="lblDesignerPhoneDesign" for="txtDesignerPhoneDesign">Phone</label>
          <asp:TextBox ID="txtDesignerPhoneDesign" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
   
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project</h1>
        </div>

        <div class="form-group col-md-4">
          <label id="lblBidDateDesign" for="txtBidDateDesign">Bid Date</label>
          <asp:TextBox ID="txtBidDateDesign" runat="server" class="form-control datepicker" placeholder="Business Name" ></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblBidEstBeginDateDesign" for="txtBidEstBeginDateDesign">Begin Date</label>
          <asp:TextBox ID="txtBidEstBeginDateDesign" runat="server" class="form-control datepicker" placeholder="Begin Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblBidEstComDateDesign" for="txtBidEstComDateDesign">Completion Date</label>
            <asp:TextBox ID="txtBidEstComDateDesign" class="form-control datepicker" placeholder="Completion Date" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblProjSiteDesign" for="txtProjSiteDesign">Project Site</label>
            <asp:TextBox ID="txtProjSiteDesign" class="form-control" placeholder="Project Site" runat="server"></asp:TextBox>
        </div>      
        
        <div class="form-group col-md-6">
        <label id="lblBidEstCostDesign" for="txtBidEstCostDesign">Estimated Cost</label>
        <asp:TextBox ID="txtBidEstCostDesign" class="form-control" placeholder="Estimated Cost" runat="server"></asp:TextBox>
        </div>
    </div>
    
    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Material Requirements</h1>
        </div>

        <div class="form-group col-md-3">
          <label id="lblMaterialDescDesign" for="txtMaterialDescDesign">Description</label>
          <asp:TextBox ID="txtMaterialDescDesign" runat="server" class="form-control" placeholder="Description"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblMaterialQuantityDesign" for="txtMaterialQuantityDesign">Quantity</label>
          <asp:TextBox ID="txtMaterialQuantityDesign" runat="server" class="form-control" placeholder="Quantity"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialSizeDesign" for="txtMaterialSizeDesign">Size</label>
            <asp:TextBox ID="txtMaterialSizeDesign" class="form-control" placeholder="Size" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialUnitPriceDesign" for="txtMaterialUnitPriceDesign">Unit Price</label>
            <asp:TextBox ID="txtMaterialUnitPriceDesign" class="form-control" placeholder="Price" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialTotalDesign" for="txtMaterialTotalDesign">Total</label>
            <asp:TextBox ID="txtMaterialTotalDesign" class="form-control"  runat="server" placeholder="Total"></asp:TextBox>
        </div>

        <div class="form-group col-md-1">
          <a id="btnMaterialAddDesign" class="btn btn-new-row">+</a>
        </div>
        
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Labour Requirements</h1>
        </div>

        <div class="form-group col-md-5">
          <label id="lblLabourDescDesign" for="txtLabourDescDesign">Description</label>
          <asp:TextBox ID="txtLabourDescDesign" runat="server" class="form-control" placeholder="Description"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblLabourHoursDesign" for="txtLabourHoursDesign">Hours</label>
          <asp:TextBox ID="txtLabourHoursDesign" runat="server" class="form-control" placeholder="Hours"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblLabourUnitPriceDesign" for="txtLabourUnitPriceDesign">Unit Price</label>
          <asp:TextBox ID="txtLabourUnitPriceDesign" runat="server" class="form-control" placeholder="Price"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblLabourTotalDesign" for="txtLabourTotalDesign">Total</label>
          <asp:TextBox ID="txtLabourTotalDesign" runat="server" class="form-control" placeholder="Total" ></asp:TextBox>
        </div>
        
        <div class="form-group col-md-1">
          <a id="btnLabourAddDesign" class="btn btn-new-row">+</a>
        </div>
    </div>
    <div class="report-wrapper text-center clearfix">
        <div class="form-group col-md-12">
            <h1>Submit Form</h1>
        </div>
        <div class="form-group col-md-12">
          <asp:Button ID="btnSubmitDesignBid" CssClass="btn" runat="server" Text="Submit" />
        </div>
    </div>
    </div>

    <!-- 
    //////////////////////////////////////////////////////////
    ---------------------Production Plan----------------------
    //////////////////////////////////////////////////////////  
    -->
    <div id="project-productionPlan" class="report-group box-border clearfix">
    <div class="report-title">
        <h1 class="project-title">New Production Plan</h1>
    </div>
    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project Bid Information</h1>
        </div>

        <div class="form-group col-md-4">
          <label id="lblProjProduction" for="txtProjSiteProducton">Project</label>
          <asp:TextBox ID="txtProjSiteProducton" runat="server" class="form-control" placeholder="Project"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-4">
          <label id="lblBeginDateProduction" for="txtBeginDateProduction">Begin Date</label>
          <asp:TextBox ID="txtBeginDateProduction" runat="server" class="form-control" placeholder="Contact Name" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblComDateProduction" for="txtComDateProdcution">Completion Date</label>
            <asp:TextBox ID="txtComDateProdcution" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblProjSiteProduction" for="txtProjSiteProduction">Project Site</label>
            <asp:TextBox ID="txtProjSiteProduction" class="form-control" placeholder="Project Site" runat="server"></asp:TextBox>
        </div>      
        
        <div class="form-group col-md-6">
        <label id="lblBidCostProduction" for="txtBidCostProduction">Estimated Cost</label>
        <asp:TextBox ID="txtBidCostProduction" class="form-control" placeholder="Cost" runat="server"></asp:TextBox>
        </div>
        
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project Team</h1>
        </div>
        <div class="form-group col-md-12">
            <h3>Sales Associate:</h3>
        </div>

        <div class="form-group col-md-6">
          <label id="lblSalesAssocFNameProduction" for="txtSalesAssocFNameProduction">Name</label>
          <asp:TextBox ID="txtSalesAssocFNameProduction" runat="server" class="form-control" placeholder="Full Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
            <h3>Designer:</h3>
        </div>

        <div class="form-group col-md-6">
            <label id="lblDesignerFNameProduction" for="txtDesignerFNameProduction">Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerFNameProduction" class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
        </div>
   
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Add Production Workers</h1>
        </div>

        <div class="form-group col-md-6">
            <label id="lblProductionWorkerNameProduction" for="ddlProductionWorkerNameProduction">Name</label>
            <asp:DropDownList ID="ddlProductionWorkerNameProduction" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>

        <div class="form-group col-md-6">
          <a id="btnProductionWorkerAdd" class="btn btn-new-row">+</a>
        </div>

    </div>
    <!-- 
    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project</h1>
        </div>

        <div class="form-group col-md-12">
          <label id="lblBidDateProduction" for="txtBidDateProduction">Bid Date</label>
          <asp:TextBox ID="txtBidDateProduction" runat="server" class="form-control" placeholder="Business Name" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
          <label id="lblBidEstBeginDateProduction" for="txtBidEstBeginDateProduction">Estimated Begin Date</label>
          <asp:TextBox ID="txtBidEstBeginDateProduction" runat="server" class="form-control" placeholder="Contact Name" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblBidEstComDateProduction" for="txtBidEstComDateProduction">Estimated Completion Date</label>
            <asp:TextBox ID="txtBidEstComDateProduction" class="form-control" placeholder="City" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblProjSiteProduction" for="txtProjSiteProduction">Project Site</label>
            <asp:TextBox ID="TextBox27" class="form-control" placeholder="Project Site" runat="server"></asp:TextBox>
        </div>      
        
        <div class="form-group col-md-6">
        <label id="lblBidEstCost" for="txtBidEstCost">Estimated Cost</label>
        <asp:TextBox ID="TextBox28" class="form-control" placeholder="Estimated Cost" runat="server" TextMode="Email"></asp:TextBox>
        </div>
    </div>
    -->

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Material Requirements</h1>
        </div>

        <div class="form-group col-md-3">
          <label id="lblMaterialDescriptionProduction" for="txtMaterialDescriptionProduction">Description</label>
          <asp:TextBox ID="txtMaterialDescriptionProduction" runat="server" class="form-control" placeholder="Material Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblMaterialQuantityProduction" for="txtMaterialQuantityProduction">Quantity</label>
          <asp:TextBox ID="txtMaterialQuantityProduction" runat="server" class="form-control" placeholder="Quantity"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialSizeProduction" for="txtMaterialSizeProduction">Size</label>
            <asp:TextBox ID="txtMaterialSizeProduction" class="form-control" placeholder="" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialUnitPriceProduction" for="txtMaterialUnitPriceProduction">Price</label>
            <asp:TextBox ID="txtMaterialUnitPriceProduction" class="form-control" placeholder="" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialExtendedPriceProduction" for="txtMaterialExtendedPriceProduction">Total</label>
            <asp:TextBox ID="txtMaterialExtendedPriceProduction" class="form-control" placeholder="" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-1">
          <a id="btnProductionMaterialAdd" class="btn btn-new-row">+</a>
        </div>
        
    </div>

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Labour Requirements</h1>
        </div>

        <div class="form-group col-md-4">
          <label id="lblLabourDepartmentProduction" for="txtLabourDepartmentProduction">Department</label>
          <asp:TextBox ID="txtLabourDepartmentProduction" runat="server" class="form-control" placeholder="Department"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblLabourHoursProduction" for="txtLabourHoursProduction">Hours</label>
          <asp:TextBox ID="txtLabourHoursProduction" runat="server" class="form-control" placeholder="Hours"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblLabourUnitPriceProduction" for="txtLabourUnitPriceProduction">Unit Price</label>
          <asp:TextBox ID="txtLabourUnitPriceProduction" runat="server" class="form-control" placeholder="Unit Price"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
          <label id="lblLabourTotalPriceProduction" for="txtLabourTotalPriceProduction">Total</label>
          <asp:TextBox ID="txtLabourTotalPriceProduction" runat="server" class="form-control" placeholder="Total"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-2">
          <a id="addLabourProduction" class="btn btn-new-row">+</a>
        </div>
    </div>
    <div class="report-wrapper text-center clearfix">
        <div class="form-group col-md-12">
            <h1>Submit Form</h1>
        </div>
        <div class="form-group col-md-12">
          <asp:Button ID="Button6" CssClass="btn" runat="server" Text="Submit" />
        </div>
    </div>
    </div>
    </form>
</asp:Content>
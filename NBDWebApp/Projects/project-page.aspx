<%@ Page Title="Project Page" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="project-page.aspx.cs" Inherits="NBDWebApp.Projects.london_mall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
  <div class="form-group">
    <h1 class="section-title">
      <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
    </h1>
  </div>
  <div class="timeline well clearfix projecttimeline">    
    <h3>Project Timeline</h3>
    <ul>
      <li>
        <span class="details">
          Approved Design Bid
        </span>
      </li>
      <li>
        <span class="details">
          Approved Design Budget
        </span>
      </li>
      <li>
        <span class="details">
          Approved Production Plan
        </span>
      </li>
      <li>
        <span class="details">
          Completed
        </span>
      </li>
    </ul>
  </div>
  <div class="row box-border add-report clearfix">
    <div class="report-title">
      <h1 class="project-title">Select A Project</h1>
    </div>
    <div class="report-wrapper clearfix">
      <asp:DropDownList ID="ddlProjectID" class="form-control" runat="server" DataSourceID="ObjectDataSourceProject" DataTextField="projName" DataValueField="ID" OnSelectedIndexChanged="ddlProjectID_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList> 
    </div>
  </div>
  <div class="row box-border add-report clearfix">
    <div class="report-title">
      <h1 class="project-title">Reports</h1>
    </div>
    <div class="report-wrapper clearfix">
      <label id="" for="ddlProjectType">Report</label>
      <select id="ddlProjectType" class="form-control">
        <option value="project-designBid">Design Bid</option>
        <option value="project-designBudget">Design Budget</option>
        <option value="project-productionPlan">Production Plan</option>
        <option value="project-par">Project Administrative Report</option>
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
      <h1 class="project-title">Design Bid</h1>
    </div>
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Client Info</h1>
      </div>
      <!-- Hide the projects button and the add report button-->
      <div class="form-group col-md-6">
        <label id="lblClientBusinessDesign" for="txtClientBusinessDesign">Business</label>
        <asp:TextBox ID="txtClientBusinessDesign" runat="server" class="form-control" placeholder="Business Name" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-6">
        <label id="lblClientAddressDesign" for="txtClientAddressDesign">Address</label>
        <asp:TextBox ID="txtClientAddressDesign" class="form-control" placeholder="Address" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-3">
        <label id="lblClientCityDesign" for="ddlClientCityDesign">City</label>
        <asp:TextBox  ID="txtClientCityDesign" class="form-control" placeholder="City" runat="server" ReadOnly="true"></asp:TextBox>
      </div>    
      <div class="form-group col-md-3">
        <label id="lblClientProvDesign" for="txtClientProvDesign">Province</label>
        <asp:TextBox ID="txtClientProvDesign" class="form-control" placeholder="Province" runat="server" ReadOnly="True"></asp:TextBox>
      </div>    
      <div class="form-group col-md-4">
        <label id="lblClientPCodeDesign" for="txtClientPCodeDesign">Postal Code</label>
        <asp:TextBox ID="txtClientPCodeDesign" class="form-control" placeholder="Postal Code" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-8">
        <label id="lblClientPhoneDesign" for="txtClientPhoneDesign">Phone</label>
        <asp:TextBox ID="txtClientPhoneDesign" class="form-control" placeholder="Phone" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-12">
        <h2>Primary Contact Information</h2>
      </div>
      <div class="form-group col-md-4">
        <label id="lblClientFNameDesign" for="txtClientFNameDesign">First Name</label>
        <asp:TextBox ID="txtClientFNameDesign" runat="server" class="form-control" placeholder="First Name" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblClientLNameDesign" for="txtClientLNameDesign">Last Name</label>
        <asp:TextBox ID="txtClientLNameDesign" runat="server" class="form-control" placeholder="Last Name" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblClientPosDesign" for="txtClientPosDesign">Position</label>
        <asp:TextBox ID="txtClientPosDesign" runat="server" class="form-control" placeholder="Position" ReadOnly="true"></asp:TextBox>
      </div>
    </div>
    <!-- End of Primary Client Info-->
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
        <asp:TextBox ID="txtSalesAssocLNameDesign" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
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
        <asp:TextBox ID="txtDesignerFNameDesign" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblDesignerLNameDesign" for="txtDesignerLNameDesign">Last Name</label>
        <asp:TextBox ID="txtDesignerLNameDesign" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblDesignerPhoneDesign" for="txtDesignerPhoneDesign">Phone</label>
        <asp:TextBox ID="txtDesignerPhoneDesign" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
      </div>
    </div>
    <!-- End of NBD Staff Section-->
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
    <!-- End of Project Dates/Cost-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
      <h1>Material Requirements</h1>
      </div>
      <div class="form-group col-md-12" style="margin-top:1.5em">
        <asp:GridView ID="gvMaterialReqDesign" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceMaterialDesign" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40" OnSelectedIndexChanging="gvMaterialReqDesign_SelectedIndexChanging" DataKeyNames="ID">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="Row" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="mreqEstQty" HeaderText="Qty" SortExpression="mreqEstQty" />
            <asp:BoundField DataField="invSizeAmnt" HeaderText="Amnt" SortExpression="invSizeAmnt" >
            </asp:BoundField>
            <asp:BoundField DataField="invSizeUnit" HeaderText="Unit" SortExpression="invSizeUnit" />
            <asp:BoundField DataField="matDesc" HeaderText="Desc" SortExpression="matDesc" />
            <asp:BoundField DataField="matType" HeaderText="Type" SortExpression="matType" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>
      <div class="form-group col-md-5">
        <label id="lblMaterialDescDesign" for="ddlMaterialDescDesign">Desc.</label> 
        <asp:DropDownList ID="ddlMaterialDescDesign" class="form-control" runat="server"></asp:DropDownList> 
      </div>
      <div class="form-group col-md-5">
        <label id="lblMaterialQtyDesign" for="txtQtyEstDesign">Qty</label> 
        <asp:TextBox ID="txtQtyEstDesign" class="form-control" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
        <a id="btnAddMaterial" class="btn btn-new-row" runat="server" onServerClick="btnAddMaterial_Click">+</a> 
      </div>
      <div class="form-group col-md-5">
        <label id="lblBringDownRowMaterial" for="txtQtyEstDesign">Select A Row to Delete</label>
        <asp:TextBox ID="txtSubMaterial" class="form-control" runat="server" placeholder="Enter Or Select A Row Number"></asp:TextBox>
      </div>
      <div class="form-group col-md-5">
        <label id="lblMinusRow" for="btnSubMaterial" style="width:100%">Click Minus to Delete Row</label>
        <a id="btnSubMaterial" class="btn btn-new-row" style="margin-top:0" runat="server" onServerClick="btnSubMaterial_Click">-</a>
      </div>
      <div class="col-md-12 form-group">
        <asp:Label ID="lblErrormsgMaterialReqDesign" runat="server" ForeColor="Red"></asp:Label>
      </div>  
    </div>
    <!-- End of Material Req-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Labour Requirements</h1>
      </div>
      <div class="form-group col-md-12">
        <asp:GridView ID="gvLabourSummaryDesign" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceLabourSummaryDesign" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40" DataKeyNames="ID" OnSelectedIndexChanging="gvLabourSummaryDesign_SelectedIndexChanging">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="Row" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="lsHours" HeaderText="Hours" SortExpression="lsHours" />
            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Worker Type" SortExpression="wrkTypeDesc" />
            <asp:BoundField DataField="wrkTypePrice" HeaderText="Price" SortExpression="wrkTypePrice" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>
      <div class="form-group col-md-5">
        <label id="lblLabourSummaryHoursDesign" for="txtLabourSummaryHoursDesign">Hours</label>
        <asp:TextBox class="form-control" ID="txtLabourSummaryHoursDesign" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-5">
        <label id="lblLabourSummaryDescDesign" for="txtQtyEstDesign">Desc.</label>
        <asp:DropDownList class="form-control" ID="ddlLabourSummaryDescDesign" runat="server"></asp:DropDownList>
      </div>
      <div class="form-group col-md-2">
        <asp:Button ID="btnAddLabourSummaryDesign" CssClass="btn btn-new-row" runat="server" Text="+" OnClick="btnAddLabourSummaryDesign_Click" /> 
      </div>
      <div class="form-group col-md-5">
      </div>
      <div class="form-group col-md-5">
        <label id="lblBringDownRowLabor" for="txtSubLabourSummary">Select A Row to Delete</label>
        <asp:TextBox ID="txtSubLabourSummary" class="form-control" runat="server" placeholder="Enter Or Select A Row Number"></asp:TextBox>
      </div>
      <div class="form-group col-md-5">
        <label id="lblMinusLabourRow" for="btnSubLabourSummary" style="width:100%">Click Minus to Delete Row</label>
        <a id="btnSubLabourSummary" class="btn btn-new-row" style="margin-top:0" runat="server" onServerClick="btnSubLabourSummary_Click">-</a>
      </div>
      <div class="form-group col-md-12">
        <asp:Label ID="lblErrormsgLabourSummaryDesign" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
    <!-- End of Labour Info-->
    <div class="report-wrapper text-center clearfix">
      <div class="form-group col-md-12">
        <h1>Submit Form</h1>
      </div>
      <div class="form-group col-md-12">
        <asp:Button ID="btnSubmitDesignBid" CssClass="btn" runat="server" Text="Submit" OnClick="btnSubmitDesignBid_Click" />
      </div>
      <div class="form-group col-md-12">
        <asp:Label ID="lblErrormsgDesignBidSudmit" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>
  <!-- 
  ---------------------End Of Design Bid----------------------
  -->
  <!-- 
  //////////////////////////////////////////////////////////
  ---------------------Design Budget----------------------
  //////////////////////////////////////////////////////////  
  -->
  <div id="project-designBudget" class="report-group box-border clearfix">
    <div class="report-title">
      <h1 class="project-title">Design Budget</h1>
    </div>
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Client Info</h1>
      </div>
      <div class="form-group col-md-12">
        <label id="lblClientBusinessDBudget" for="txtClientBusinessdBudget">Business</label>
        <asp:TextBox ID="txtClientBusinessdBudget" runat="server" class="form-control" placeholder="Business Name" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-3">
        <label id="lblClientCityDBudget" for="txtClientCityDBudget">City</label>
        <asp:TextBox  ID="txtClientCityDBudget" class="form-control" placeholder="City" runat="server" ReadOnly="True"></asp:TextBox>
      </div>    
      <div class="form-group col-md-6">
        <label id="lblClientAddressDBudget" for="txtClientAddressDBudget">Address</label>
        <asp:TextBox ID="txtClientAddressDBudget" class="form-control" placeholder="Address" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-3">
        <label id="lblClientProvDBudget" for="txtClientProvDBudget">Province</label>
        <asp:TextBox ID="txtClientProvDBudget" class="form-control" placeholder="Province" runat="server" ReadOnly="True"></asp:TextBox>
      </div>    
      <div class="form-group col-md-4">
        <label id="lblClientPCodeDBudget" for="txtClientPCodeDBudget">Postal Code</label>
        <asp:TextBox ID="txtClientPCodeDBudget" class="form-control" placeholder="Postal Code" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-8">
        <label id="lblClientPhoneDBudget" for="txtClientPhoneDBudget">Phone</label>
        <asp:TextBox ID="txtClientPhoneDBudget" class="form-control" placeholder="Phone" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-12">
        <h2>Primary Contact Information</h2>
      </div>
      <div class="form-group col-md-4">
        <label id="lblClientFNameDBudget" for="txtClientFNameDBudget">First Name</label>
        <asp:TextBox ID="txtClientFNameDBudget" runat="server" class="form-control" placeholder="First Name" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblClientLNameDBudget" for="txtClientLNameDBudget">Last Name</label>
        <asp:TextBox ID="txtClientLNameDBudget" runat="server" class="form-control" placeholder="Last Name" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblClientPosDBudget" for="txtClientPosDBudget">Position</label>
        <asp:TextBox ID="txtClientPosDBudget" runat="server" class="form-control" placeholder="Position" ReadOnly="True"></asp:TextBox>
      </div>   
    </div>
    <!-- End of Client Info-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>NBD Staff</h1>
      </div>
      <div class="form-group col-md-12">
        <h3>Sales Associate:</h3>
      </div>
      <div class="form-group col-md-4">
        <label id="lblSalesAssocFNameDBudget" for="txtSalesAssocFNameDBudget">First Name</label>
        <asp:TextBox ID="txtSalesAssocFNameDBudget" runat="server" class="form-control" placeholder="First Name" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblSalesAssocLNameDBudget" for="txtSalesAssocLNameDBudget">Last Name</label>
        <asp:TextBox ID="txtSalesAssocLNameDBudget" runat="server" class="form-control" placeholder="Last Name" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblSalesAssocPhoneDBudget" for="txtSalesAssocPhoneDBudget">Phone</label>
        <asp:TextBox ID="txtSalesAssocPhoneDBudget" class="form-control" placeholder="Phone" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-12">
        <h3>Designer:</h3>
      </div>
      <div class="form-group col-md-4">
        <label id="lblDesignerFNameDBudget" for="txtDesignerFNameDBudget">First Name</label>
        <asp:TextBox ID="txtDesignerFNameDBudget" class="form-control" placeholder="First Name" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblDesignerLNameDBudget" for="txtDesignerLNameDBudget">Last Name</label>
        <asp:TextBox ID="txtDesignerLNameDBudget" class="form-control" placeholder="Last Name" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblDesignerPhoneDBudget" for="txtDesignerPhoneDBudget">Phone</label>
        <asp:TextBox ID="txtDesignerPhoneDBudget" class="form-control" placeholder="Phone" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
    </div>
    <!-- NBD Staff-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Project Information</h1>
      </div>
      <div class="form-group col-md-4">
        <label id="lblBudgetSubmittedDBudget" for="txtBudgetSubmittedDBudget">Budget Submitted</label>
        <asp:TextBox ID="txtBudgetSubmittedDBudget" runat="server" class="form-control datepicker" placeholder="Budget Submitted"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblBeginDateDBudget" for="txtBeginDatedBudget">Begin Date</label>
        <asp:TextBox ID="txtBeginDatedBudget" runat="server" class="form-control datepicker" placeholder="Begin Date" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblComDateDBudget" for="txtComDateDBudget">Completion Date</label>
        <asp:TextBox ID="txtComDateDBudget" class="form-control datepicker" placeholder="Completion Date" runat="server" ReadOnly="true"></asp:TextBox>
      </div>
      <div class="form-group col-md-6">
        <label id="lblProjSiteDBudget" for="txtProjSiteDBudget">Project Site</label>
        <asp:TextBox ID="txtProjSiteDBudget" class="form-control" placeholder="Project Site" runat="server" ReadOnly="true"></asp:TextBox>
      </div>      
      <div class="form-group col-md-6">
        <label id="lblBidCostDBudget" for="txtBidCostDBudget">Estimated Cost</label>
        <asp:TextBox ID="txtBidCostDBudget" class="form-control" placeholder="Cost" runat="server" ReadOnly="true"></asp:TextBox>
      </div>      
    </div>
    <!-- Project Information-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Design Budget</h1>
      </div>
      <div class="form-group col-md-12">
        <h3>Hours To Date</h3>
      </div>
      <div class="form-group col-md-12">
        <asp:GridView ID="gvHoursToDateDBudget" runat="server" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>    
      <div class="form-group col-md-3">
        <label id="lblTaskHoursToDateDBudget" for="txtTaskHoursToDateDBudget">Task</label>
        <asp:TextBox ID="txtTaskHoursToDateDBudget" class="form-control" placeholder="Task" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-3">
        <label id="lblDateHoursToDateDBudget" for="txtDateHoursToDateDBudget">Date</label>
        <asp:TextBox ID="txtDateHoursToDateDBudget" class="form-control" placeholder="Date" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-3">
        <label id="lblHoursToDateDBudget" for="txtHoursToDateDBudget">Hours</label>
        <asp:TextBox ID="txtHoursToDateDBudget" class="form-control" placeholder="Hours" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-3">
        <a id="btnAddHoursToDateDBudget" class="btn btn-new-row" runat="server">+</a> 
      </div> 
      <div class="form-group col-md-12">
        <hr />
      </div>
      <div class="form-group col-md-12">
        <h3>Estimated Hours</h3>
      </div>
      <div class="form-group col-md-12">
        <asp:GridView ID="gvEstimatedHoursDBudget" runat="server" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>
      <div class="form-group col-md-3">
        <label id="lblTaskEstimatedHoursDBudget" for="txtTaskEstimatedHoursDBudget">Task</label>
        <asp:TextBox ID="txtTaskEstimatedHoursDBudget" class="form-control" placeholder="Task" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-3">
        <label id="lblDateEstimatedHoursDBudget" for="txtDateEstimatedHoursDBudget">Date</label>
        <asp:TextBox ID="txtDateEstimatedHoursDBudget" class="form-control" placeholder="Date" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-3">
        <label id="lblEstimatedHoursDBudget" for="txtHoursEstimatedHoursDBudget">Hours</label>
        <asp:TextBox ID="txtHoursEstimatedHoursDBudget" class="form-control" placeholder="Hours" runat="server"></asp:TextBox> 
      </div>
      <div class="form-group col-md-3">
        <a id="btnAddEstimatedHoursDBudget" class="btn btn-new-row" runat="server">+</a> 
      </div> 
      <div class="form-group col-md-12">
        <hr />
      </div>
      <div class="form-group col-md-10">
      <h3>Total Hours</h3>
      </div>
      <div class="form-group col-md-2">
        <h3>...</h3>
      </div>
    </div>
    <!-- End Of Estimated Hours-->
    <div class="report-wrapper text-center clearfix">
      <div class="form-group col-md-12">
        <h1>Submit Form</h1>
      </div>
      <div class="form-group col-md-12">
        <asp:Button ID="btnSubmitDesignBudget" CssClass="btn" runat="server" Text="Submit" OnClick="btnSubmitDesignBudget_Click" />
      </div>
      <div class="form-group col-md-12">
        <asp:Label ID="lblErrormsgDesignBudget" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>
  <!-- 
  ---------------------End Of Design Budget----------------------
  -->
  <!-- 
  //////////////////////////////////////////////////////////
  ---------------------Production Plan----------------------
  //////////////////////////////////////////////////////////  
  -->
  <div id="project-productionPlan" class="report-group box-border clearfix">
    <div class="report-title">
      <h1 class="project-title">Production Plan</h1>
    </div>
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Project Bid Information</h1>
      </div>
      <div class="form-group col-md-4">
        <label id="lblProjProduction" for="txtProjProducton">Project</label>
        <asp:TextBox ID="txtProjProducton" runat="server" class="form-control" placeholder="Project" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblBeginDateProduction" for="txtBeginDateProduction">Begin Date</label>
        <asp:TextBox ID="txtBeginDateProduction" runat="server" class="form-control datepicker" placeholder="Begin Date" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-4">
        <label id="lblComDateProduction" for="txtComDateProdcution">Completion Date</label>
        <asp:TextBox ID="txtComDateProdcution" class="form-control datepicker" placeholder="Completion Date" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
      <div class="form-group col-md-6">
        <label id="lblProjSiteProduction" for="txtProjSiteProduction">Project Site</label>
        <asp:TextBox ID="txtProjSiteProduction" class="form-control" placeholder="Project Site" runat="server" ReadOnly="True"></asp:TextBox>
      </div>        
      <div class="form-group col-md-6">
        <label id="lblBidCostProduction" for="txtBidCostProduction">Estimated Cost</label>
        <asp:TextBox ID="txtBidCostProduction" class="form-control" placeholder="Cost" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
    </div>
    <!-- End of Project Bid Information-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
          <h1>Project Team</h1>
      </div>
      <div class="form-group col-md-12">
        <asp:GridView ID="gvProdTeamProduction" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceProdTeam" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40" OnSelectedIndexChanging="gvProdTeamProduction_SelectedIndexChanging" DataKeyNames="ID">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="Row" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Worker Type" SortExpression="wrkTypeDesc" />
            <asp:BoundField DataField="wrkFName" HeaderText="First" SortExpression="wrkFName" />
            <asp:BoundField DataField="wrkLName" HeaderText="Last " SortExpression="wrkLName" />
            <asp:BoundField DataField="teamPhaseIn" HeaderText="Phase In" SortExpression="teamPhaseIn" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>
      <div class="form-group col-md-5">
        <label id="lblProductionWorkerNameProduction" for="ddlProductionWorkerNameProduction">Name</label>
        <asp:DropDownList ID="ddlProductionWorkerNameProduction" CssClass="form-control" runat="server"></asp:DropDownList>
      </div>
      <div class="form-group col-md-5">
        <label id="lblProductionTeamPhaseProduction" for="txtProductionTeamPhaseProduction">Phase In</label>
        <asp:TextBox ID="txtProductionTeamPhaseProduction" class="form-control" placeholder="Phase" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
        <asp:Button ID="btnAddProdWorker" CssClass="btn" runat="server" Text="+" OnClick="btnAddProdWorker_Click" CausesValidation="False"/>
      </div>
      <div class="form-group col-md-5">
        <asp:TextBox ID="txtSubProdWorker" class="form-control" placeholder="Enter Or Select A Row" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
        <asp:Button ID="btnSubProdWorker" CssClass="btn" runat="server" Text="-" CausesValidation="False" OnClick="btnSubProdWorker_Click"/>
      </div>
      <div class="form-group col-md-12">
        <asp:Label ID="lblErrormsgProductionTeam" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
    <!-- End of Project Team-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Material Requirements</h1>
      </div>
      <div class="form-group col-md-12" style="margin-top:1.5em;overflow-x:scroll">
        <asp:GridView ID="gvMaterialReqProduction" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceProductionMaterials" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40" DataKeyNames="ID" OnSelectedIndexChanging="gvMaterialReqProduction_SelectedIndexChanging">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="matDesc" HeaderText="Desc" SortExpression="matDesc" />
            <asp:BoundField DataField="matType" HeaderText="Type" SortExpression="matType" />
            <asp:BoundField DataField="mreqEstQty" HeaderText="Qty" SortExpression="mreqEstQty" />
            <asp:BoundField DataField="invSizeAmnt" HeaderText="Amnt" SortExpression="invSizeAmnt" />
            <asp:BoundField DataField="invSizeUnit" HeaderText="Unit" SortExpression="invSizeUnit" />
            <asp:BoundField DataField="invAvgNet" HeaderText="AvgNet" SortExpression="invAvgNet" />
            <asp:BoundField DataField="mreqInstall" HeaderText="Install" SortExpression="mreqInstall" />
            <asp:BoundField DataField="mreqDeliver" HeaderText="Deliver" SortExpression="mreqDeliver" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>
      <div class="form-group col-md-8">
        <label id="lblMaterialDescProduction" for="ddlMaterialDescProduction">Desc.</label> 
        <asp:DropDownList ID="ddlMaterialDescProduction" class="form-control" runat="server"></asp:DropDownList>
      </div>
      <div class="form-group col-md-4">
        <label id="lblMaterialQtyProduction" for="txtQtyEstProduction">Qty</label> 
        <asp:TextBox ID="txtQtyEstProduction" class="form-control" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-5">
        <label id="lblMaterialDeliverProduction" for="txtMaterialDeliverProduction">Deliver</label> 
        <asp:TextBox ID="txtMaterialDeliverProduction" class="form-control datepicker" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-5">
        <label id="lblMaterialInstallProduction" for="txtMaterialInstallProduction">Install</label> 
        <asp:TextBox ID="txtMaterialInstallProduction" class="form-control datepicker" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
        <asp:Button ID="btnAddMaterialProduction" runat="server" Text="+" CssClass="btn" CausesValidation="False" OnClick="btnAddMaterialProduction_Click"/>            
      </div>
      <div class="form-group col-md-5">
        <asp:TextBox ID="txtSubProductionMaterials" class="form-control" placeholder="Enter Or Select A Row" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
        <asp:Button ID="btnSubProductionMaterials" CssClass="btn" runat="server" Text="-" CausesValidation="False" OnClick="btnSubProductionMaterials_Click"/>
      </div>
      <div class="form-group col-md-12">
        <asp:Label ID="lblErrormsgProductionMaterials" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
    <!-- End of Material Req-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Tool Requirements</h1>
      </div>
      <div class="form-group col-md-12">
        <asp:GridView ID="gvToolRequirementProduction" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceToolRequirementProduction" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40" DataKeyNames="ID" OnSelectedIndexChanging="gvToolRequirementProduction_SelectedIndexChanging">
          <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="Row" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="ptQty" HeaderText="Qty" SortExpression="ptQty" />
            <asp:BoundField DataField="toolDesc" HeaderText="Desc" SortExpression="toolDesc" />
            <asp:BoundField DataField="ptDeliverTo" HeaderText="DeliverTo" SortExpression="ptDeliverTo" />
            <asp:BoundField DataField="ptDeliverFrom" HeaderText="DeliverFrom" SortExpression="ptDeliverFrom" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>
      </div>
      <div class="form-group col-md-8">
          <label id="lblToolDescProduction" for="ddlToolDescProduction">Desc.</label> 
          <asp:DropDownList ID="ddlToolDescProduction" class="form-control" runat="server"></asp:DropDownList>
      </div>
      <div class="form-group col-md-4">
          <label id="lblToolQtyProduction" for="txtToolQtyEstProduction">Qty</label> 
          <asp:TextBox ID="txtToolQtyEstProduction" class="form-control" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-5">
          <label id="lblToolDeliverFromProduction" for="txtToolDeliverFromProduction">Deliver From</label> 
          <asp:TextBox ID="txtToolDeliverFromProduction" class="form-control datepicker" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-5">
          <label id="lblToolDeliverToProduction" for="txtToolDeliverToProduction">Install</label> 
          <asp:TextBox ID="txtToolDeliverToProduction" class="form-control datepicker" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
          <asp:Button ID="btnAddToolProduction" runat="server" Text="+" CssClass="btn" CausesValidation="False" OnClick="btnAddToolProduction_Click" />            
      </div>
      <div class="form-group col-md-5">
          <asp:TextBox ID="txtSubToolProduction" class="form-control" placeholder="Enter Or Select A Row" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
          <asp:Button ID="btnSubToolProduction" CssClass="btn" runat="server" Text="-" CausesValidation="False" OnClick="btnSubToolProduction_Click"/>
      </div>
      <div class="form-group col-md-12">
          <asp:Label ID="lblErrormsgToolProdcution" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
    <!-- End of Tool Req-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Labour Requirements</h1>
      </div>
      <div class="form-group col-md-12" style="margin-top:1.5em;overflow-x:scroll">
        <asp:GridView ID="gvLabourReqProduction" runat="server" DataSourceID="ObjectDataSourceLabourRequirementProduction" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
          <Columns>
            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Worker Type" SortExpression="wrkTypeDesc" />
            <asp:BoundField DataField="wrkFName" HeaderText="First Name" SortExpression="wrkFName" />
            <asp:BoundField DataField="wrkLName" HeaderText="Last Name" SortExpression="wrkLName" />
            <asp:BoundField DataField="lreqEstHours" HeaderText="Est. Hours" SortExpression="lreqEstHours" />
            <asp:BoundField DataField="wrkTypeCost" HeaderText="Cost/Hr." SortExpression="wrkTypeCost" />
            <asp:BoundField DataField="lreqEstDate" HeaderText="Est. Date" SortExpression="lreqEstDate" />
            <asp:BoundField DataField="taskDesc" HeaderText="Task" SortExpression="taskDesc" />
          </Columns>
          <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
          <RowStyle Height="40px" Width="30px"></RowStyle>
        </asp:GridView>           
      </div>
      <div class="form-group col-md-4">
        <label id="lblLabourDescriptionProduction" for="txtLabourDescriptionProduction">Description</label>
        <asp:TextBox ID="txtLabourDescriptionProduction" runat="server" class="form-control" placeholder="Description"></asp:TextBox>
      </div>
      <div class="form-group col-md-3">
        <label id="lblLabourHoursProduction" for="txtLabourHoursProduction">Hours</label>
        <asp:TextBox ID="txtLabourHoursProduction" runat="server" class="form-control" placeholder="Hours"></asp:TextBox>
      </div>
      <div class="form-group col-md-3">
        <label id="lblLabourCostPerHourProduction" for="txtLabourCostPerHourProduction">Cost/Hr</label>
        <asp:TextBox ID="txtLabourCostPerHourProduction" runat="server" class="form-control" placeholder="Cost/Hr"></asp:TextBox>
      </div>
      <div class="form-group col-md-2">
        <label id="lblLabourTotalPriceProduction" for="txtLabourTotalPriceProduction">Total Cost</label>
        <asp:TextBox ID="txtLabourTotalPriceProduction" runat="server" class="form-control" placeholder="Total Cost"></asp:TextBox>
      </div>
      <div class="form-group col-md-11">
        <label id="lblLabourTaskProduction" for="txtLabourTaskProduction">Task</label>
        <asp:TextBox ID="txtLabourTaskProduction" runat="server" class="form-control" placeholder="Task"></asp:TextBox>
      </div>
      <div class="form-group col-md-1">
        <a id="addLabourProduction" class="btn btn-new-row">+</a>
      </div>
    </div>
    <!-- End of Labor Req-->
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Total Expenses</h1>
      </div>
      <div class="form-group col-md-12">
        <label id="lblTotalEstDesignerProduction">Total Estimated Designer Hours/Costs</label>
      </div>
      <div class="form-group col-md-4">
      </div>
      <div class="form-group col-md-4">
        <label id="lblTotalEstDesignerBidProcessProduction">Bid Process</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalEstDesignerBidProcessHoursProduction">12</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalEstDesignerBidProcessCostProduction">$480.00</label>
      </div>
      <div class="form-group col-md-4">
      </div>
      <div class="form-group col-md-4">
        <label id="lblTotalEstDesignerProductionPlanProduction">Production</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalEstDesignerProductionHoursProduction">10</label>
      </div>
      <div class="form-group col-md-2">
          <label id="lblTotalEstDesignerProductionCostProduction">$400.00</label>
      </div>
      <div class="form-group col-md-8">
        <label id="lblTotalEstProductionHoursCostProduction">Total Estimated Prodction Labour Hours/Cost</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalEstProductionHourProduction">40</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalEstProductionCostProduction">$990.00</label>
      </div>
      <div class="form-group col-md-10">
        <label id="lblTotalEstMaterialCostsProduction">Total Estimated Material Costs</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalMaterialCostProduction">$3,240.00</label>
      </div>
      <div class="form-group col-md-12">
          <hr />
      </div>
      <div class="form-group col-md-6">
        <label id="lblTotalEstCostsProduction">Total Hours/Costs</label>
      </div>
      <div class="form-group col-md-2">
        <label id="lblTotalHourProduction">62</label>
      </div>
      <div class="form-group col-md-4">
        <label id="lblTotalCostProduction">$5,110.00  (67% of Bid)</label>
      </div>
    </div>
    <!-- End of Total Expenses-->
    <div class="report-wrapper text-center clearfix">
      <div class="form-group col-md-12">
        <h1>Submit Form</h1>
      </div>
      <div class="form-group col-md-12">
        <asp:Button ID="btnSubmitProductionReport" CssClass="btn" runat="server" Text="Submit" />
      </div>
    </div>
  </div>
  <!-- 
  ---------------------End Of Production Plan----------------------
  -->
  <!-- 
  //////////////////////////////////////////////////////////
  -----------------------Project PAR------------------------
  //////////////////////////////////////////////////////////  
  -->
  <div id="project-par" class="report-group box-border clearfix">
    <div class="report-title">
      <h1 class="project-title">Project Administration Report</h1>
    </div>
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Bid Stage Projects</h1>
      </div>
      <div class="form-group col-md-12">
        <div style="overflow-x: scroll;">
          <table rules="all" border="1" id="ContentPlaceHolder2_gvMaterialReqDesign" style="border-color:Transparent;width:100% !important;">
            <tr class="whitetxt" style="color:White;background-color:#DB0A5B;">
              <th scope="col">Project</th>
              <th scope="col">Est. Bid</th>
              <th scope="col">Actual/Est. Design Hours</th>
              <th scope="col">Actual/Est. Design Costs</th>
              <th scope="col">Hrs/$ Remaining</th>
            </tr>
            <tr style="height:40px;width:30px;">
              <td>Astor</td>
              <td>$13,000</td>
              <td>6/20</td>
              <td>$240/$800</td>
              <td>14/$660</td>
            </tr>
            <tr style="height:40px;width:30px;">
              <td>Freemont</td>
              <td>$16,250</td>
              <td>10/25</td>
              <td>$360/$1000</td>
              <td>16/$640</td>
            </tr>
            <tr style="height:40px;width:30px;">
              <td>SJSU</td>
              <td>$5000</td>
              <td>9/8</td>
              <td>$360/$320</td>
              <td>1/$40</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
        <h1>Production Stage Projects</h1>
      </div>
      <div class="form-group col-md-12">
        <div style="overflow-x: scroll;">
          <table rules="all" border="1" id="PARProdStage" style="border-color:Transparent;width:100% !important;">
            <tr class="whitetxt" style="color:White;background-color:#DB0A5B;">
              <th scope="col">Project</th>
              <th scope="col">Bid Cost</th>
              <th scope="col">Prod Plan Est.</th>
              <th scope="col">Cost to Date</th>
              <th scope="col">Act. Labor Prod</th>
              <th scope="col">Est. Labor Prod</th>
              <th scope="col">Act. Labor Design</th>
              <th scope="col">Est. Labor Design</th>
            </tr>
            <tr style="height:40px;width:30px;">
              <td>LS Mall</td>
              <td>$7651</td>
              <td>$5110</td>
              <td>$5230</td>
              <td>$1008</td>
              <td>$990</td>
              <td>$880</td>
              <td>$880</td>
            </tr>
            <tr style="height:40px;width:30px;">
              <td>IBM</td>
              <td>$11,500</td>
              <td>$6290</td>
              <td>$5705</td>
              <td>$1260</td>
              <td>$1440</td>
              <td>$920</td>
              <td>$1000</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- End of PAR -->
  <asp:ObjectDataSource ID="ObjectDataSourceLabourRequirementProduction" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.LabourRequirementProductionDataTableTableAdapter">
  <SelectParameters>
  <asp:ControlParameter ControlID="ddlProjectID" DefaultValue="0" Name="Param2" PropertyName="SelectedValue" Type="Int32" />
  </SelectParameters>
  </asp:ObjectDataSource>
  <asp:ObjectDataSource ID="ObjectDataSourceToolRequirementProduction" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.ToolReqDataTableTableAdapter">
  <SelectParameters>
  <asp:ControlParameter ControlID="ddlProjectID" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
  </SelectParameters>
  </asp:ObjectDataSource>
  <asp:ObjectDataSource ID="ObjectDataSourceProductionMaterials" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.ProductionMaterialDataTableTableAdapter">
  <SelectParameters>
  <asp:ControlParameter ControlID="ddlProjectID" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
  </SelectParameters>
  </asp:ObjectDataSource> 
  <asp:ObjectDataSource ID="ObjectDataSourceProdTeam" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.ProdTeamDataTableTableAdapter">
  <SelectParameters>
  <asp:ControlParameter ControlID="ddlProjectID" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
  </SelectParameters>
  </asp:ObjectDataSource>     
  <asp:ObjectDataSource ID="ObjectDataSourceLabourSummaryDesign" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.LabourSummaryDataTableTableAdapter">
  <SelectParameters>
  <asp:ControlParameter ControlID="ddlProjectID" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
  </SelectParameters>
  </asp:ObjectDataSource>     
  <asp:ObjectDataSource ID="ObjectDataSourceProject" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.ProjectTableAdapter" UpdateMethod="Update">
  <DeleteParameters>
  <asp:Parameter Name="Original_ID" Type="Int32" />
  </DeleteParameters>
  <UpdateParameters>
  <asp:Parameter Name="projName" Type="String" />
  <asp:Parameter Name="Original_ID" Type="Int32" />
  </UpdateParameters>
  </asp:ObjectDataSource>     
  <asp:ObjectDataSource ID="ObjectDataSourceMaterialDesign" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.MaterialDataTableTableAdapter">
  <SelectParameters>
  <asp:ControlParameter ControlID="ddlProjectID" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
  </SelectParameters>
  </asp:ObjectDataSource>
  <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=NBD_DatabaseEntities" DefaultContainerName="NBD_DatabaseEntities" EnableFlattening="False" EntitySetName="CLIENTs">
  </asp:EntityDataSource>
</form>
</asp:Content>
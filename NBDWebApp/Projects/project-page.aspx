<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="project-page.aspx.cs" Inherits="NBDWebApp.Projects.london_mall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
    
    

    <div class="form-group">
        <h1 class="section-title">
            <asp:Label ID="LlblTitle" runat="server" Text=""></asp:Label></h1>
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
            <label id="" for="ddlProjectType">Report</label>
            <select id="ddlProjectType" class="form-control">
                <option value="project-designBid">Design Bid</option>
                <option value="project-designBid">Design Budget</option>
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
        <h1 class="project-title">Design Bid</h1>
    </div>
    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
          <h1>Client Info</h1>
      </div>

      <div class="form-group col-md-6">
          <label id="lblExistingClientBusinessDesign" for="ddlExistingClientBusinessDesign">Existing Client</label>       
          <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" DataSourceID="EntityDataSource2" DataTextField="cliName" DataValueField="ID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" AutoPostBack="True">
              <asp:ListItem Selected="True" Value="0">Select A Client</asp:ListItem>
          </asp:DropDownList>
      </div>

      <!-- Hide the projects button and the add report button-->
      <div class="form-group col-md-6">
        <label id="lblClientBusinessDesign" for="txtClientBusinessDesign">Business</label>
          <asp:RequiredFieldValidator ID="rfvBusiness" runat="server" ErrorMessage="Business Name Required" ControlToValidate="txtClientBusinessDesign" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="txtClientBusinessDesign" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
      </div>

      <div class="form-group col-md-3">
          <label id="lblClientCityDesign" for="ddlClientCityDesign">City</label>
          <asp:TextBox  ID="txtClientCityDesign" class="form-control" placeholder="City" runat="server"></asp:TextBox>
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
        <div class="form-group col-md-12" style="display:none">
            <asp:DropDownList ID="ddlProjectID" class="form-control" runat="server" DataSourceID="ObjectDataSourceProject" DataTextField="projName" DataValueField="ID"></asp:DropDownList> 
        </div>

        <div class="form-group col-md-12" style="margin-top:1.5em">
            <asp:GridView ID="gvMaterialReqDesign" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceMaterialDesign" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
                <Columns>
                    <asp:BoundField DataField="matType" HeaderText="Type" SortExpression="matType" />
                    <asp:BoundField DataField="matDesc" HeaderText="Desc" SortExpression="matDesc" >
                    <HeaderStyle Font-Underline="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="mreqEstQty" HeaderText="Qty" SortExpression="mreqEstQty" />
                    <asp:BoundField DataField="invSizeAmnt" HeaderText="Amount" SortExpression="invSizeAmnt" />
                    <asp:BoundField DataField="invSizeUnit" HeaderText="Size" SortExpression="invSizeUnit" />
                </Columns>
            <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
            </asp:GridView>
        </div>

        <div class="form-group col-md-5">
           <label id="lblMaterialDescDesign" for="ddlMaterialDescDesign">Desc.</label> 
        </div>

        <div class="form-group col-md-5">
           <label id="lblMaterialQtyDesign" for="txtQtyEstDesign">Qty</label> 
        </div>

        <div class="form-group col-md-5">
            <asp:DropDownList ID="ddlMaterialDescDesign" class="form-control" runat="server"></asp:DropDownList> 
        </div>

        <div class="form-group col-md-5">
            <asp:TextBox ID="txtQtyEstDesign" class="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <a id="btnAddMaterial" class="btn" runat="server" onServerClick="btnAddMaterial_Click">+</a> 
        </div> 
        
    </div>

    <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
          <h1>Labour Requirements</h1>
      </div>

        <div class="form-group col-md-12">
            <asp:GridView ID="gvLabourSummaryDesign" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceLabourSummaryDesign" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
                <Columns>
                    <asp:BoundField DataField="lsHours" HeaderText="Hours" SortExpression="lsHours" />
                    <asp:BoundField DataField="wrkTypeDesc" HeaderText="Worker Type" SortExpression="wrkTypeDesc" />
                    <asp:BoundField DataField="wrkTypePrice" HeaderText="Price/Hour" SortExpression="wrkTypePrice" />
                </Columns>
              <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
            </asp:GridView>
        </div>

        <div class="form-group col-md-5">
           <label id="lblLabourSummaryHoursDesign" for="txtLabourSummaryHoursDesign">Hours</label> 
        </div>

        <div class="form-group col-md-5">
           <label id="lblLabourSummaryDescDesign" for="txtQtyEstDesign">Desc.</label> 
        </div>

        <div class="form-group col-md-5">
            <asp:TextBox class="form-control" ID="txtLabourSummaryHoursDesign" runat="server"></asp:TextBox> 
        </div>

        <div class="form-group col-md-5">
            <asp:DropDownList class="form-control" ID="ddlLabourSummaryDescDesign" runat="server"></asp:DropDownList>
        </div>

        <div class="form-group col-md-2">
            <asp:Button ID="btnAddLabourSummaryDesign" CssClass="btn" runat="server" Text="+" OnClick="btnAddLabourSummaryDesign_Click" /> 
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
    ---------------------Design Budget----------------------
    //////////////////////////////////////////////////////////  
    -->
    <div id="project-DesignBudget" class="report-group box-border clearfix">
    <div class="report-title">
        <h1 class="project-title">Design Budget</h1>
    </div>
        <div class="report-wrapper clearfix">
      <div class="form-group col-md-12">
          <h1>Client Info</h1>
      </div>

      <div class="form-group col-md-12">
        <label id="lblClientBusinessDBudget" for="txtClientBusinessdBudget">Business</label>
        <asp:TextBox ID="txtClientBusinessdBudget" runat="server" class="form-control" placeholder="Business Name"></asp:TextBox>
      </div>

      <div class="form-group col-md-3">
          <label id="lblClientCityDBudget" for="txtClientCityDBudget">City</label>
          <asp:TextBox  ID="txtClientCityDBudget" class="form-control" placeholder="City" runat="server"></asp:TextBox>
      </div>    

      <div class="form-group col-md-6">
          <label id="lblClientAddressDBudget" for="txtClientAddressDBudget">Address</label>
          <asp:TextBox ID="txtClientAddressDBudget" class="form-control" placeholder="Address" runat="server"></asp:TextBox>
      </div>

      <div class="form-group col-md-3">
          <label id="lblClientProvDBudget" for="txtClientProvDBudget">Province</label>
           <asp:TextBox ID="txtClientProvDBudget" class="form-control" placeholder="Province" runat="server"></asp:TextBox>
      </div>    
    <div class="form-group col-md-4">
          <label id="lblClientPCodeDBudget" for="txtClientPCodeDBudget">Postal Code</label>
          <asp:TextBox ID="txtClientPCodeDBudget" class="form-control" placeholder="Postal Code" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-8">
          <label id="lblClientPhoneDBudget" for="txtClientPhoneDBudget">Phone</label>
          <asp:TextBox ID="txtClientPhoneDBudget" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>

         <div class="form-group col-md-12">
            <h2>Primary Contact Information</h2>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientFNameDBudget" for="txtClientFNameDBudget">First Name</label>
          <asp:TextBox ID="txtClientFNameDBudget" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientLNameDBudget" for="txtClientLNameDBudget">Last Name</label>
          <asp:TextBox ID="txtClientLNameDBudget" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
          <label id="lblClientPosDBudget" for="txtClientPosDBudget">Position</label>
          <asp:TextBox ID="txtClientPosDBudget" runat="server" class="form-control" placeholder="Position"></asp:TextBox>
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
          <label id="lblSalesAssocFNameDBudget" for="txtSalesAssocFNameDBudget">First Name</label>
          <asp:TextBox ID="txtSalesAssocFNameDBudget" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblSalesAssocLNameDBudget" for="txtSalesAssocLNameDBudget">Last Name</label>
          &nbsp;<asp:TextBox ID="txtSalesAssocLNameDBudget" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblSalesAssocPhoneDBudget" for="txtSalesAssocPhoneDBudget">Phone</label>
            <asp:TextBox ID="txtSalesAssocPhoneDBudget" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
            <h3>Designer:</h3>
        </div>

        <div class="form-group col-md-4">
            <label id="lblDesignerFNameDBudget" for="txtDesignerFNameDBudget">First Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerFNameDBudget" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblDesignerLNameDBudget" for="txtDesignerLNameDBudget">Last Name</label>
            &nbsp;<asp:TextBox ID="txtDesignerLNameDBudget" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-4">
          <label id="lblDesignerPhoneDBudget" for="txtDesignerPhoneDBudget">Phone</label>
          <asp:TextBox ID="txtDesignerPhoneDBudget" class="form-control" placeholder="Phone" runat="server"></asp:TextBox>
        </div>
    </div>
        <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Project Information</h1>
        </div>

        <div class="form-group col-md-4">
          <label id="lblBudgetSubmittedDBudget" for="txtBudgetSubmittedDBudget">Budget Submitted</label>
          <asp:TextBox ID="txtBudgetSubmittedDBudget" runat="server" class="form-control" placeholder="Budget Submitted"></asp:TextBox>
        </div>
        
        <div class="form-group col-md-4">
          <label id="lblBeginDateDBudget" for="txtBeginDatedBudget">Begin Date</label>
          <asp:TextBox ID="txtBeginDatedBudget" runat="server" class="form-control datepicker" placeholder="Begin Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblComDateDBudget" for="txtComDateDBudget">Completion Date</label>
            <asp:TextBox ID="txtComDateDBudget" class="form-control datepicker" placeholder="Completion Date" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-6">
            <label id="lblProjSiteDBudget" for="txtProjSiteDBudget">Project Site</label>
            <asp:TextBox ID="txtProjSiteDBudget" class="form-control" placeholder="Project Site" runat="server"></asp:TextBox>
        </div>      
        
        <div class="form-group col-md-6">
        <label id="lblBidCostDBudget" for="txtBidCostDBudget">Estimated Cost</label>
        <asp:TextBox ID="txtBidCostDBudget" class="form-control" placeholder="Cost" runat="server"></asp:TextBox>
        </div>      
    </div>
        <div class="report-wrapper clearfix">
            <div class="form-group col-md-12">
                <h1>Design Budget</h1>
            </div>

            <div class="form-group col-md-4">
            </div>

             <div class="form-group col-md-12">
                <h3>Hours To Date</h3>
            </div>

            <div class="form-group col-md-12">
                <asp:GridView ID="gvHoursToDateDBudget" runat="server" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
                    <RowStyle Height="40px" Width="30px"></RowStyle>
                </asp:GridView>
            </div>

            <div class="form-group col-md-3">
                 <label id="lblTaskHoursToDateDBudget" for="txtTaskHoursToDateDBudget">Task</label>
            </div>

            <div class="form-group col-md-3">
                 <label id="lblDateHoursToDateDBudget" for="txtDateHoursToDateDBudget">Date</label>
            </div>

            <div class="form-group col-md-6">
                 <label id="lblHoursToDateDBudget" for="txtHoursToDateDBudget">Hours</label>
            </div>

            <div class="form-group col-md-3">
                <asp:TextBox ID="txtTaskHoursToDateDBudget" class="form-control" placeholder="Task" runat="server"></asp:TextBox> 
            </div>

             <div class="form-group col-md-3">
                <asp:TextBox ID="txtDateHoursToDateDBudget" class="form-control" placeholder="Date" runat="server"></asp:TextBox> 
            </div>

            <div class="form-group col-md-3">
                <asp:TextBox ID="txtHoursToDateDBudget" class="form-control" placeholder="Hours" runat="server"></asp:TextBox> 
            </div>

            <div class="form-group col-md-3">
                <a id="btnAddHoursToDateDBudget" class="btn" runat="server">+</a> 
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
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle Height="40" Width="40" BackColor="#DB0A5B" CssClass="whitetxt"></HeaderStyle>
                    <RowStyle Height="40px" Width="30px"></RowStyle>
                </asp:GridView>
            </div>

            <div class="form-group col-md-3">
                 <label id="lblTaskEstimatedHoursDBudget" for="txtTaskEstimatedHoursDBudget">Task</label>
            </div>

            <div class="form-group col-md-3">
                 <label id="lblDateEstimatedHoursDBudget" for="txtDateEstimatedHoursDBudget">Date</label>
            </div>

            <div class="form-group col-md-6">
                 <label id="lblEstimatedHoursDBudget" for="txtHoursEstimatedHoursDBudget">Hours</label>
            </div>

            <div class="form-group col-md-3">
                <asp:TextBox ID="txtTaskEstimatedHoursDBudget" class="form-control" placeholder="Task" runat="server"></asp:TextBox> 
            </div>

             <div class="form-group col-md-3">
                <asp:TextBox ID="txtDateEstimatedHoursDBudget" class="form-control" placeholder="Date" runat="server"></asp:TextBox> 
            </div>

            <div class="form-group col-md-3">
                <asp:TextBox ID="txtHoursEstimatedHoursDBudget" class="form-control" placeholder="Hours" runat="server"></asp:TextBox> 
            </div>

            <div class="form-group col-md-3">
                <a id="btnAddEstimatedHoursDBudget" class="btn" runat="server">+</a> 
            </div> 

            <div class="form-group col-md-12">
                <hr />
            </div>

            <div class="form-group col-md-10">
                <h3>Total Hours</h3>
            </div>

            <div class="form-group col-md-2">
               <h3>12</h3>
            </div>
        </div>
        <div class="report-wrapper text-center clearfix">
            <div class="form-group col-md-12">
                <h1>Submit Form</h1>
            </div>
            <div class="form-group col-md-12">
                <asp:Button ID="btnSubmitDesignBudget" CssClass="btn" runat="server" Text="Submit" />
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
        <h1 class="project-title">Production Plan</h1>
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
          <asp:TextBox ID="txtBeginDateProduction" runat="server" class="form-control datepicker" placeholder="Begin Date"></asp:TextBox>
        </div>

        <div class="form-group col-md-4">
            <label id="lblComDateProduction" for="txtComDateProdcution">Completion Date</label>
            <asp:TextBox ID="txtComDateProdcution" class="form-control datepicker" placeholder="Completion Date" runat="server"></asp:TextBox>
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
            <asp:GridView ID="gvProdTeamProduction" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceProdTeam" ShowHeaderWhenEmpty="True" style="width:100% !important;" HeaderStyle-BackColor="#DB0A5B" BorderColor="Transparent" HeaderStyle-ForeColor="#ffffff" CellPadding="20" CellSpacing="25" RowStyle-Width="30" RowStyle-Height="40">
                <Columns>
                    <asp:BoundField DataField="wrkTypeDesc" HeaderText="Worker Type" SortExpression="wrkTypeDesc" />
                    <asp:BoundField DataField="wrkFName" HeaderText="First Name" SortExpression="wrkFName" />
                    <asp:BoundField DataField="wrkLName" HeaderText="Last Name" SortExpression="wrkLName" />
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

    </div>

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
            <asp:TextBox ID="txtMaterialSizeProduction" class="form-control" placeholder="Size" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialUnitPriceProduction" for="txtMaterialUnitPriceProduction">Price</label>
            <asp:TextBox ID="txtMaterialUnitPriceProduction" class="form-control" placeholder="Price" runat="server"></asp:TextBox>
        </div>

        <div class="form-group col-md-2">
            <label id="lblMaterialExtendedPriceProduction" for="txtMaterialExtendedPriceProduction">Total</label>
            <asp:TextBox ID="txtMaterialExtendedPriceProduction" class="form-control" placeholder="Total" runat="server"></asp:TextBox>
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

    <div class="report-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Total Expenses</h1>
        </div>

        <div class="form-group col-md-8">
        </div>

        <div class="form-group col-md-2">
             <label id="lblTotalEstHoursProduction">Hours</label>
        </div>
        <div class="form-group col-md-2">
             <label id="lblTotalEstCostProduction">Cost</label>
        </div>

        <div class="form-group col-md-8">
             <label id="lblTotalEstDesignerProduction">Estimated Designer</label>
        </div>
        <div class="form-group col-md-2">
             <label id="lblTotalEstDesignerHourProduction">...</label>
        </div>
        <div class="form-group col-md-2">
             <label id="lblTotalEstDesignerCostProduction">...</label>
        </div>

        <div class="form-group col-md-8">
             <label id="lblTotalEstProductionHoursCostProduction">Estimated Prodction Hours/Cost</label>
        </div>
        <div class="form-group col-md-2">
             <label id="lblTotalEstProductionHourProduction">...</label>
        </div>
        <div class="form-group col-md-2">
             <label id="lblTotalEstProductionCostProduction">...</label>
        </div>

        <div class="form-group col-md-8">
             <label id="lblTotalEstMaterialCostsProduction">Estimated Material Costs</label>
        </div>
        <div class="form-group col-md-2">
          <label id="lblDots">...</label>
        </div>
        <div class="form-group col-md-2">
          <label id="lblTotalMaterialCostProduction">...</label>
        </div>

        <div class="form-group col-md-12">
            <hr />
        </div>

        <div class="form-group col-md-12">
             <label id="lblTotalEstCostsProduction">Total Costs</label>
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

    <div id="project-PAR" class="report-group box-border clearfix">
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
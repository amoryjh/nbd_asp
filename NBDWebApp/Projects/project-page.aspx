<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="project-page.aspx.cs" Inherits="NBDWebApp.Projects.london_mall" %>
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
        <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" DataSourceID="EntityDataSource2" DataTextField="cliName" DataValueField="ID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=NBD_DatabaseEntities" DefaultContainerName="NBD_DatabaseEntities" EnableFlattening="False" EntitySetName="CLIENTs">
        </asp:EntityDataSource>
       </div>
    </div>
    </form>
</asp:Content>
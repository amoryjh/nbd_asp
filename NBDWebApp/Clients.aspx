<%@ Page Title="Clients Directory" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="NBDWebApp.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
  <h1 class="section-title">Client Directory</h1>
  <p>Need to find a client quick? Search for them using one of the filters below.
    <img src="/assets/img/emoji.png" alt="" />
  </p>
  <div class="col-md-1 client-search-aside clearfix">
    <div class="btn-group-vertical">
      <button type="button" class="btn btn-danger">A-D</button>
      <button type="button" class="btn btn-danger">E-H</button>
      <button type="button" class="btn btn-danger">I-L</button>
      <button type="button" class="btn btn-danger">M-P</button>
      <button type="button" class="btn btn-danger">Q-T</button>
      <button type="button" class="btn btn-danger">U-Z</button>
    </div>
  </div>  
  <div class="col-md-12 client-search-main clearfix">
    <h3 >Filter By:</h3>
    <div class="well clearfix">
      <div class="form-group col-md-4">
        <label>Client Name</label>
        <asp:DropDownList ID="ddlClientName" class="form-control" runat="server" OnSelectedIndexChanged="ddlClientName_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
      </div>
      <div class="form-group col-md-4">
        <label>Contact Name</label>
        <asp:DropDownList ID="ddlClientContact" class="form-control" runat="server">
        </asp:DropDownList>
      </div>
      <div class="form-group col-md-4">
            <label>City</label>
            <asp:DropDownList ID="ddlCityProjectFilter" class="form-control" runat="server">
            </asp:DropDownList>
      </div>
    </div>
  </div>
  <div class="col-md-12 clearfix client-listings">
    <asp:Repeater id="Projects" runat="server">
      <ItemTemplate>
        <div class="project-instance box-border clearfix" id="<%# Eval("cliNameAsID") %>">
          <div class="project-instance-title">
            <h2 class="project-title"><a href=""><%# Eval("cliName") %></a></h2>
            <p class="project-update-date">Contact : <%# Eval("cliConFName") %> <%# Eval("cliConLName") %>, <%# Eval("cliConPosition") %></p>
          </div>
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Contact Details</h3>
            <ul>
              <li><a href="">Phone: <span class="highlight-change"><%#Eval("cliPhone")%></span></a></li>
              <li><a href="">Project Site: <span class="highlight-change"><%#Eval("cliAddress")%> <%#Eval("cliProvince")%></span></a></li>
            </ul>
          </div>
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Project Details</h3>
            <ul>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projName")%></span></a></li>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projSite")%></span></a></li>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projBidDate")%></span></a></li>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projActCost")%></span></a></li>
            </ul>
              <hr />
            <ul>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projName")%></span></a></li>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projSite")%></span></a></li>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projBidDate")%></span></a></li>
                <li><a href="">Project Name: <span class="highlight-change"><%#Eval("projActCost")%></span></a></li>
            </ul>
          </div>
        </div>
      </ItemTemplate>
    </asp:Repeater>

    <h2 class="text-center section-title">These Clients don't have any projects yet.</h2>
    <asp:Repeater id="sansProjects" runat="server">
      <ItemTemplate>
        <div class="project-instance box-border clearfix">
          <div class="project-instance-title">
              <h2 class="project-title"><a href=""><%#Eval("cliName") %></a></h2>
              <p class="project-update-date">Contact: <%#Eval("cliConFName")%> <%# Eval("cliConLName") %>, <%# Eval("cliConPosition") %></p>
          </div>
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Contact Details</h3>
            <ul>
              <li><a href="">Phone: <span class="highlight-change"><%#Eval("cliPhone")%></span></a></li>
              <li><a href="">Project Site: <span class="highlight-change"><%#Eval("cliAddress")%> <%#Eval("cliProvince")%></span></a></li>
            </ul>
          </div>
        </div>
      </ItemTemplate>
    </asp:Repeater>
  </div>
</form>
</asp:Content>

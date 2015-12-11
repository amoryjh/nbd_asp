<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    
    <h1 class="section-title" style="margin-bottom:0.5em;">Recent Projects</h1>
    <p>Need to find a client quick? Search for them using one of the filters below.
    <img src="/assets/img/emoji.png" style="width:10px" alt="" />
  </p>
  <div class="col-md-1 client-search-aside clearfix">
    <div class="btn-group-vertical">
      <button type="button" class="btn btn-danger view-all">ALL</button>
      <button type="button" class="btn btn-danger btn-sort" value="abcd">A-D</button>
      <button type="button" class="btn btn-danger btn-sort" value="efgh">E-H</button>
      <button type="button" class="btn btn-danger btn-sort" value="ijkl">I-L</button>
      <button type="button" class="btn btn-danger btn-sort" value="mnop">M-P</button>
      <button type="button" class="btn btn-danger btn-sort" value="qrst">Q-T</button>
      <button type="button" class="btn btn-danger btn-sort" value="uvwxyz">U-Z</button>
    </div>
  </div>  
  <div class="col-md-12 client-search-main clearfix">
    <h3 >Filter By:</h3>
    <div class="well clearfix">
      <div class="form-group col-md-4">
        <label>Client Name</label>
        <asp:DropDownList ID="ddlClientName" class="form-control" runat="server">
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

    <div class="col-md-12 text-center mobile-btn-search clearfix">
      <h3>Filter by Letter:</h3>
      <div class="btn-group">
        <button type="button" class="btn btn-danger view-all">ALL</button>
        <button type="button" class="btn btn-danger btn-sort" value="abcd">A-D</button>
        <button type="button" class="btn btn-danger btn-sort" value="efgh">E-H</button>
        <button type="button" class="btn btn-danger btn-sort" value="ijkl">I-L</button>
        <button type="button" class="btn btn-danger btn-sort" value="mnop">M-P</button>
        <button type="button" class="btn btn-danger btn-sort" value="qrst">Q-T</button>
        <button type="button" class="btn btn-danger btn-sort" value="uvwxyz">U-Z</button>
      </div>
    </div>  
  
  </div>

  <div class="col-md-12 clearfix client-listings">
    <asp:Repeater id="Projects" runat="server">
      <ItemTemplate>
        <div class="project-instance box-border clearfix" id="<%#Eval("cliName")%>">
          <div class="project-instance-title">
            <h2 class="project-title"><%# Eval("cliName") %></h2>
            <p class="project-update-date">Contact : <%# Eval("cliConFName") %> <%# Eval("cliConLName") %>, <%# Eval("cliConPosition") %></p>
          </div>

        <div class="timeline well col-md-10 col-md-offset-1 clearfix">    
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
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Contact Details</h3>
            <ul>
              <li>Phone: <span class="highlight-change"><%#Eval("cliPhone")%></span></li>
              <li>Project Site: <span class="highlight-change"><%#Eval("cliAddress")%> <%#Eval("cliProvince")%></span></li>
              <li id="city-string">Client City: <span class="highlight-change"><%#Eval("cliCity")%></span></li>
            </ul>
          </div>
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Project Details</h3>
            <ul>
                <li>Name: <span class="highlight-change"><%#Eval("projName")%></span></a></li>
                <li>Site: <span class="highlight-change"><%#Eval("projSite")%></span></li>
                <li>Bid Date: <span class="highlight-change"><%#Eval("projBidDate")%></span></li>
                <li>Est Start: <span class="highlight-change"><%#Eval("projEstStart")%></span></li>
                <li>Est End: <span class="highlight-change"><%#Eval("projEstEnd")%></span></li>
                <li>Actual Start: <span class="highlight-change"><%#Eval("projActStart")%></span></li>
                <li>Actual End: <span class="highlight-change"><%#Eval("projActEnd")%></span></li>
                <li>Est Cost: <span class="highlight-change"><%#Eval("projEstCost")%></span></li>
                <li>Actual Cost: <span class="highlight-change"><%#Eval("projActCost")%></span></li>  
            </ul>
              
          </div>
             <div class="updated-list well col-md-10 col-md-offset-1 text-center">   
             <h2 class="project-title">View Rest of Design Bid</h2>
               <br />
             <a style="color:#fff;padding:14px;font-weight:700;font-size:1.35em;background:#188ea8;" class="btn" href="Projects/project-page.aspx">Let's go!</a>
             </div>
        </div>
      </ItemTemplate>
    </asp:Repeater>

    <asp:Repeater id="sansProjects" runat="server">
      <ItemTemplate>
        <div class="project-instance box-border clearfix" id="<%#Eval("cliName")%>">
          <div class="project-instance-title">
              <h2 class="project-title"><%#Eval("cliName") %></h2>
              <p class="project-update-date">Contact: <%#Eval("cliConFName")%> <%# Eval("cliConLName") %>, <%# Eval("cliConPosition") %></p>
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
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Contact Details</h3>
            <ul>
              <li>Phone: <span class="highlight-change"><%#Eval("cliPhone")%></span></li>
              <li id="city-string">Client City: <span class="highlight-change"><%#Eval("cliCity")%></span></li>
            </ul>
          </div>
          <div class="updated-list well col-md-10 col-md-offset-1">   
            <h3>Project Details</h3>
            <ul>
                <li><span class="highlight-change">This project doesn't exist yet.</span></a></li>
            </ul>
          </div>
        </div>
      </ItemTemplate>
    </asp:Repeater>
  </div>
</form>     
</asp:Content>

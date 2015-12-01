<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    
    <h1 class="section-title">Recent Projects</h1>
        <h3 >Filter By:</h3>
    <div class="well clearfix">
        <div class="form-group col-md-6">
            <label>Client Name</label>
            <asp:DropDownList ID="ddlClientName" class="form-control" runat="server">
            </asp:DropDownList>
        </div>
        <div class="form-group col-md-6">
            <label>Completion Date</label>
            <asp:DropDownList ID="ddlProject" class="form-control" runat="server">
            </asp:DropDownList>
        </div>
    </div>
    <div class="project-instance box-border clearfix">
        <div class="project-instance-title">
            <h2 class="project-title"><a href="Projects/carlisle-hotel-renovations.aspx">Carlisle Hotel Renovations</a></h2>
            <p class="project-update-date">Updated on: 12/01/2015</p>
        </div>
        <div class="timeline well col-md-10 col-md-offset-1">    
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
            <h3>Project Modules</h3>
            <ul>
                <li><a href=""><span class="highlight-change"> Degin Bid</span></a></li>
                <li><a href=""><span class="highlight-change"> Design Budget</span></a></li>
                <li><a href=""><span class="highlight-change"> Production Plan</span></a></li>
                <li><a href=""><span class="highlight-change"> Project Administration Report</span></a></li>
            </ul>
        </div>
    </div>
    <div class="project-instance box-border clearfix">
        <div class="project-instance-title">
            <h2 class="project-title"><a href="Projects/carlisle-hotel-renovations.aspx">Montebello Landscaping</a></h2>
            <p class="project-update-date">Updated on: 12/01/2015</p>
        </div>
        <div class="timeline well col-md-10 col-md-offset-1">    
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
            <h3>Project Modules</h3>
            <ul>
                <li><a href=""><span class="highlight-change"> Degin Bid</span></a></li>
                <li><a href=""><span class="highlight-change"> Design Budget</span></a></li>
                <li><a href=""><span class="highlight-change"> Production Plan</span></a></li>
                <li><a href=""><span class="highlight-change"> Project Administration Report</span></a></li>
            </ul>
        </div>
    </div>
</form>     
</asp:Content>

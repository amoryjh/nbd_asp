<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <h1 class="section-title">
    <asp:Label ID="LblUserName" runat="server" Text=""></asp:Label></h1>
    <h1 class="section-title">Projects</h1>
    <h2 class="section-title">Most Recent Changes</h2>
    <div class="project-instance clearfix">
        <h2 class="project-title"><a href="Projects/carlisle-hotel-renovations.aspx">Carlisle Hotel Renovations</a></h2>
        <p class="project-update-date">Updated on: 12/01/2015</p>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h1 class="panel-title">
                    Project Timeline
                </h1>
            </div>
            <div class="panel-body">
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
        </div>
        <div class="col-md-12"> 
            <h4>Project Modules:</h4>  
            <div class="well updated-list">
                <ul>
                    <li><a href=""><span class="highlight-change"> Degin Bid</span></a></li>
                    <li><a href=""><span class="highlight-change"> Design Budget</span></a></li>
                    <li><a href=""><span class="highlight-change"> Production Plan</span></a></li>
                    <li><a href=""><span class="highlight-change"> Project Administration Report</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="project-instance clearfix">
        <h2 class="project-title"><a href="#">Montebello Park Landscaping</a></h2>
        <p class="project-update-date">Updated on: 12/03/2015</p>
        <div class="col-md-12"> 
            <h4>Project Modules:</h4>   
            <div class="well updated-list">
                <ul>
                    <li><a href=""><span class="highlight-change"> Degin Bid</span></a></li>
                    <li><a href=""><span class="highlight-change"> Design Budget</span></a></li>
                    <li><a href=""><span class="highlight-change"> Production Plan</span></a></li>
                    <li><a href=""><span class="highlight-change"> Project Administration Report</span></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>  
</form>     
</asp:Content>

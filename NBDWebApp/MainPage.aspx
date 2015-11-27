<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
    <h1 class="section-title">Projects</h1>
    <h2 class="section-title">Most Recent Changes</h2>
    <div class="project-instance clearfix">
        <h2 class="project-title"><a href="BidProcess.aspx">Carlisle Hotel Renovations</a></h2>
        <p class="project-update-date">Updated on: 12/01/2015</p>
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

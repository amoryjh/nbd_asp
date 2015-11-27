<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="col-md-3 user-info text-center">
    <img src="assets/img/HomeBg.jpg" alt="">
    <h1>User Name</h1>
    <ul class="text-left">
        <li><a href="">My Projects</a></li>
        <li><a href="">Add/Edit a Report</a></li>
        <li><a href="">Messages</a></li>
        <li><a href="">Profile</a></li>
    </ul>
</div>
<div class="home-updates col-md-9 col-md-offset-3">
    <h1 class="section-title">Most Recent Changes</h1>
    <div class="project-instance clearfix">
        <h2 class="project-title">Carlisle Hotel Renovations</h2>
        <p class="project-update-date">Updated on: 12/01/2015</p>
        <div class="col-md-12"> 
            <p><span class="highlight-change">Stan, Connie, and Sue</span> made changes to <span class="highlight-change"> Carlisle Hotel Renovations</span></p>
            <h4>The following items were changed:</h4>  
            <div class="well updated-list">
                <ul>
                    <li><a href="">Created New <span class="highlight-change"> Project Report</span></a></li>
                    <li><a href="">New Comment on <span class="highlight-change"> BluePrint</span></a></li>
                    <li><a href="">New Comment on <span class="highlight-change"> Meeting Hours</span></a></li>
                    <li><a href="">Updated Fields on <span class="highlight-change"> Design Budget</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="project-instance clearfix">
        <h2 class="project-title">Montebello Park Landscaping</h2>
        <p class="project-update-date">Updated on: 12/03/2015</p>
        <div class="col-md-12"> 
            <p><span class="highlight-change">Stan, Connie, and Sue</span> made changes to <span class="highlight-change"> Carlisle Hotel Renovations</span></p>
            <h4>The following items were changed:</h4>  
            <div class="well updated-list">
                <ul>
                    <li><a href="">Created New <span class="highlight-change"> Project Report</span></a></li>
                    <li><a href="">New Comment on <span class="highlight-change"> BluePrint</span></a></li>
                    <li><a href="">New Comment on <span class="highlight-change"> Meeting Hours</span></a></li>
                    <li><a href="">Updated Fields on <span class="highlight-change"> Design Budget</span></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>       
</asp:Content>

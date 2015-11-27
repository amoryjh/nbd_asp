<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="NBDWebApp.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<form id="form1" runat="server">
<div class="col-md-3 user-info text-center">
    <img src="assets/img/usrImage.png" alt="">
    <h1>User Name</h1>

    <div class="usr-options">       
        <a class="btn btn-primary">My Projects</a>
        <a class="btn btn-primary">My Messages</a>
        <a class="btn btn-primary" href="BidProcess.aspx">Add a Report</a>
        <a class="btn btn-primary">My Profile</a>
    </div>
    
</div>
<div class="home-updates col-md-9 col-md-offset-3 clearfix">
    <h1 class="section-title">Most Recent Changes</h1>
    <div class="project-instance clearfix">
        <h2 class="project-title"><a href="#">Carlisle Hotel Renovations</a></h2>
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
        <h2 class="project-title"><a href="#">Montebello Park Landscaping</a></h2>
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
</form>     
</asp:Content>

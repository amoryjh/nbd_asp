<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DailyReports.aspx.cs" Inherits="NBDWebApp.DailyReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="form1" runat="server">
        <div class="report-group box-border clearfix">
        <div class="report-wrapper clearfix">
            <div class="form-group col-md-12">
                <h1>Enter Daily Work</h1>
                <p><em>Designer Daily Work Report / Production Daily Work Report</em></p>
            </div>
            <div class="form-group col-md-6">
              <label id="lblUserFName" for="txtUserFName">First Name</label>
              <asp:TextBox ID="txtUserFName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
            </div>

            <div class="form-group col-md-6">
                <label id="lblUserLName" for="txtUserLName">Last Name</label>
                <asp:TextBox ID="txtUserLName" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
            </div>

            <div class="form-group col-md-6">
                <label id="lblUserHours" for="txtUserHours">Hours</label>
                <asp:TextBox ID="txtUserHours" class="form-control" placeholder="Hours" runat="server"></asp:TextBox>
            </div>

            <div class="form-group col-md-6">
                <label id="lblUserProject" for="ddlProject">Project</label>
                <asp:DropDownList  ID="ddlProject" class="form-control" placeholder="Project" runat="server"></asp:DropDownList>
            </div>      
            
            <div class="form-group col-md-12">
                <label id="lblUserTask" for="txtUserTask">Task:</label>
                <asp:TextBox ID="txtUserTask" class="form-control" TextMode="multiline" Rows="3" placeholder="Task" runat="server"></asp:TextBox>
            </div>
            
            <div class="form-group col-md-12">
                <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Daily Report" />
            </div>

        </div></div>
    </form>
</asp:Content>

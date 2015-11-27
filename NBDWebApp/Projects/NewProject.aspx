<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NewProject.aspx.cs" Inherits="NBDWebApp.Projects.NewProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div class="client-wrapper clearfix">
        <div class="form-group col-md-12">
            <h1>Create New Project</h1>
        </div>
        <div class="form-group col-md-12">
          <label id="lblProjName" for="txtProjName">Project Name</label>
          <asp:TextBox ID="txtProjName" runat="server" class="form-control" placeholder="Project Name"></asp:TextBox>
        </div>

        <div class="form-group col-md-12">
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Create New Project" />
        </div>

    </div>
    </form>
</asp:Content>

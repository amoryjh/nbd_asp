<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="NBDWebApp.Clients" %>
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
  <div class="col-md-11 client-search-main form-group clearfix">
    <h3 >Filter By:</h3>
    <div class="well clearfix">
      <div class="form-group col-md-6">
        <label>Client Name</label>
        <asp:DropDownList ID="ddlClientName" class="form-control" runat="server">
        </asp:DropDownList>
      </div>
      <div class="form-group col-md-6">
        <label>Contact Name</label>
        <asp:DropDownList ID="ddlClientContact" class="form-control" runat="server">
        </asp:DropDownList>
      </div>
    </div>
  </div>
  <div class="row col-md-12 clearfix client-listings">
     <asp:Repeater id="clients" runat="server">
      <ItemTemplate>
         <div class="col-md-6">
          <p><%# Eval("cliConFName") %></p>
          <p><%# Eval("cliConLName") %></p>
          <p><%# Eval("cliConPosition") %></p>
        </div>
      </ItemTemplate>
    </asp:Repeater>
  </div>
</form>
</asp:Content>

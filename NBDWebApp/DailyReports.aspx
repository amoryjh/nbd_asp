<%@ Page Title="Daily Report" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DailyReports.aspx.cs" Inherits="NBDWebApp.DailyReports" %>
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
        <asp:RequiredFieldValidator ID="rfvUserFName" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtUserFName" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="txtUserFName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
      </div>
      <div class="form-group col-md-6">
        <label id="lblUserLName" for="txtUserLName">Last Name</label>
        <asp:RequiredFieldValidator ID="rfvUserLName" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtUserLName" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="txtUserLName" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
      </div>
      <div class="form-group col-md-6">
        <label id="lblUserHours" for="txtUserHours">Hours</label>
        <asp:RequiredFieldValidator ID="rfvUserHours" runat="server" ErrorMessage="Hours Required" ControlToValidate="txtUserHours" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revHours" runat="server" ErrorMessage="Must Be Less than 10 hours" ControlToValidate="txtUserHours" Text="*" ValidationExpression="^^(\d{1}|\d{2})$$" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:TextBox ID="txtUserHours" class="form-control" placeholder="8" runat="server"></asp:TextBox>
      </div>
      <div class="form-group col-md-6">
        <label id="lblUserProject" for="ddlProject">Project</label>
        <asp:DropDownList  ID="ddlProject" class="form-control" placeholder="Project" runat="server" DataSourceID="ProjectObjectDataSource" DataTextField="projName" DataValueField="ID" AutoPostBack="True"></asp:DropDownList>
      </div>      
      <div class="form-group col-md-12">
        <label id="lblUserTask" for="ddlTask">Task:</label>
        <asp:DropDownList  ID="ddlTask" class="form-control" placeholder="Task" runat="server" DataSourceID="TaskObjectDataSource" DataTextField="taskDesc" DataValueField="taskDesc"></asp:DropDownList>
      </div>
      <div class="form-group col-md-12">
        <asp:Label ID="LblMessage" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" />
      </div>
      <div class="form-group col-md-12">
        <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert Daily Report" OnClick="btnInsert_Click" />
        <asp:Button ID="btnClear" CssClass="btn" runat="server" Text="Clear" CausesValidation="false" OnClick="btnClear_Click" />
      </div>
      <asp:ObjectDataSource ID="TaskObjectDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.ProjectTaskDataTableTableAdapter">
      <SelectParameters>
      <asp:ControlParameter ControlID="ddlProject" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
      </SelectParameters>
      </asp:ObjectDataSource>
      <asp:ObjectDataSource ID="ProjectObjectDataSource" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDWebApp.NBDDataSetTableAdapters.ProjectTableAdapter" UpdateMethod="Update">
      <DeleteParameters>
      <asp:Parameter Name="Original_ID" Type="Int32" />
      </DeleteParameters>
      <UpdateParameters>
      <asp:Parameter Name="projName" Type="String" />
      <asp:Parameter Name="Original_ID" Type="Int32" />
      </UpdateParameters>
      </asp:ObjectDataSource>
    </div>
  </div>
</form>
</asp:Content>

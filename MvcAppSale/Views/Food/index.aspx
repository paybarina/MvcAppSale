<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcAppSale.Models.msfood>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Food
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Food</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">foodcode</div>
        <div class="display-field"><%: Model.foodcode %></div>
        
        <div class="display-label">foodname</div>
        <div class="display-field"><%: Model.foodname %></div>
        
        <div class="display-label">price</div>
        <div class="display-field"><%: String.Format("{0:F}", Model.price) %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.foodcode }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


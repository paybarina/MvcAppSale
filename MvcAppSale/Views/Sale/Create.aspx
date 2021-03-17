<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcAppSale.Models.sale>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.transno) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.transno) %>
                <%: Html.ValidationMessageFor(model => model.transno) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.custcode) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.custcode) %>
                <%: Html.ValidationMessageFor(model => model.custcode) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.transdate) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.transdate) %>
                <%: Html.ValidationMessageFor(model => model.transdate) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.totalamount) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.totalamount) %>
                <%: Html.ValidationMessageFor(model => model.totalamount) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>


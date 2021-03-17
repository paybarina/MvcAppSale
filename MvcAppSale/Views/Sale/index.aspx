<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcAppSale.Models.sale>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Sale
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Sale</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Trans No
            </th>
            <th>
                Customer
            </th>
            <th>
                Trans Date
            </th>
            <th>
                Total Amount
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.transno }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.transno })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.transno })%>
            </td>
            <td>
                <%: item.transno %>
            </td>
            <td>
                <%: item.custcode %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.transdate) %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.totalamount) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


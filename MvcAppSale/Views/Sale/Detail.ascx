<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<MvcAppSale.Models.salesdt>>" %>

    <table>
        <tr>
            <th></th>
            <th>
                transno
            </th>
            <th>
                foodcode
            </th>
            <th>
                qty
            </th>
            <th>
                amount
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
                <%: item.foodcode %>
            </td>
            <td>
                <%: item.qty %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.amount) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>



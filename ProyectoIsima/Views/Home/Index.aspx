<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProyectoIsima.Models.Alumnos>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Inicio
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">

    <h2>Lista de Alumnos</h2>

    <table class="table table-striped">
        <tr>
            <th>
                Nombre del Alumno
            </th>
            <th>
                Apellido Paterno
            </th>
            <th>
                Apellido Materno
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: item.NombreAlumno %>
            </td>
            <td>
                <%: item.ApellidoPatAlumno %>
            </td>
            <td>
                <%: item.ApellidoMatAlumno %>
            </td>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new {  id=item.Id  }) %> |
                <%: Html.ActionLink("Detalles", "Details", new {  id=item.Id  })%> |
                <%: Html.ActionLink("Eliminar", "Delete", new {  id=item.Id  })%>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>


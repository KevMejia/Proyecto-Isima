<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProyectoIsima.Models.Alumnos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Detalles
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
    
    <h2>Detalles</h2>

    <dl class="dl-horizontal">
        <dt>Nombre del Alumno: </dt>
        <dd>
            <%: Model.NombreAlumno%></dd>
        <dt>Apellido Paterno: </dt>
        <dd>
            <%: Model.ApellidoPatAlumno%></dd>
        <dt>Apellido Materno: </dt>
        <dd>
            <%: Model.ApellidoMatAlumno%></dd>
    </dl>

    <p>
        <%: Html.ActionLink("Modificar", "Edit", new { id = Model.Id })%>
        |
        <%: Html.ActionLink("Regresar a los Registros", "Index") %>
    </p>

</asp:Content>

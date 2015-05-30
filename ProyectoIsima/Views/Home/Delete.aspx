<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProyectoIsima.Models.Alumnos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Eliminar Alumno
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">

    <h2>Eliminar Alumno</h2>

    <h3>¿Estas seguro de querer eliminar esto?</h3>
    <dl class="dl-horizontal">
        <dt>Nombre del Alumno</dt>
        <dd><%: Model.NombreAlumno %></dd>

        <dt>Apellido Paterno</dt>
        <dd><%: Model.ApellidoPatAlumno %></dd>

        <dt>Apellido Materno</dt>
        <dd><%: Model.ApellidoMatAlumno %></dd>
    </dl>

    <% using (Html.BeginForm()) { %>
    <% Html.HiddenFor(model => model.Id);%>
        <p>
		    <input type="submit" value="Eliminar" class="btn btn-danger" /> |
		    <%: Html.ActionLink("Regresar a los Registros", "Index") %>
        </p>
    <% } %>

</asp:Content>


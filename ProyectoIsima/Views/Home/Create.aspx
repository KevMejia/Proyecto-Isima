<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProyectoIsima.Models.Alumnos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Nuevo Alumno
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
    <h2>
        Nuevo Alumno</h2>
    <% using (Html.BeginForm()){%>
    <%: Html.ValidationSummary(true) %>
    <div class="form-group">
        <label>Nombre del Alumno:</label>

        <%: Html.TextBoxFor(model => model.NombreAlumno, new { @class = "form-control", required = "required" })%>
        <%: Html.ValidationMessageFor(model => model.NombreAlumno,"Es necesario ingresar el Nombre del Alumno")%>
    </div>

    <div class="form-group">
        <label>Apellido Paterno</label>

            <%: Html.TextBoxFor(model => model.ApellidoPatAlumno, new { @class = "form-control", required = "required" })%>
            <%: Html.ValidationMessageFor(model => model.ApellidoPatAlumno, "Es necesario ingresar el Apellido Paterno") %>
    </div>

    
    <div class="form-group">
        <label>Apellido Materno</label>

            <%: Html.TextBoxFor(model => model.ApellidoMatAlumno, new { @class = "form-control", required="required" })%>
            <%: Html.ValidationMessageFor(model => model.ApellidoMatAlumno, "Es necesario ingresar el Apellido Materno") %>
    </div>
    <p>
        <button type="submit" class="btn btn-success" >Crear Nuevo Alumno</button>
    </p>
    <% } %>
    <div>
        <%: Html.ActionLink("Regresar a los Registros", "Index") %>
    </div>
</asp:Content>

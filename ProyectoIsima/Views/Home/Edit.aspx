<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProyectoIsima.Models.Alumnos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Modificar Alumno
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">

    <h2>Modificar Alumno</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.AntiForgeryToken()%>
        
          <div class="form-group">
            <%Html.ValidationSummary(true); %>
            <%: Html.HiddenFor(model => model.Id) %>
            <label class="control-label col-md-2">
                Nombre del Alumno: 
            </label>
            <div class="col-md-10">
                <%: Html.TextBoxFor(model => model.NombreAlumno, new { required="required", @Value=@Model.NombreAlumno})%>
                <%: Html.ValidationMessageFor(model => model.NombreAlumno) %>
            </div>
            
            <label class="control-label col-md-2">
                Apellido Paterno: 
            </label>
            <div class="col-md-10">
                <%: Html.TextBoxFor(model => model.ApellidoPatAlumno, new { required="required" })%>
                <%: Html.ValidationMessageFor(model => model.ApellidoPatAlumno) %>
            </div>
            
            <label class="control-label col-md-2">
               Apellido Materno: 
            </label>
            <div class="col-md-10">
                <%: Html.TextBoxFor(model => model.ApellidoMatAlumno, new { required="required" })%>
                <%: Html.ValidationMessageFor(model => model.ApellidoMatAlumno) %>
            </div>
            
            <p>
                <input type="submit" value="Guardar" class="btn btn-default" />
            </p>
        </div>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar a los Registros", "Index") %>
    </div>
</asp:Content>


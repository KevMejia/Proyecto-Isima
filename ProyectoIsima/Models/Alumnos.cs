using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ProyectoIsima.Models
{
    public class Alumnos
    {
        [Key]
        public int Id_Alumno { get; set; }
        [Required(ErrorMessage="Ingrese un nombre de alumno")]
        public string NombreAlumno { get; set; }
        [Required(ErrorMessage="Ingrese el apellido paterno del alumno")]
        public string ApellidpPatAlumno { get; set; }
        [Required(ErrorMessage="Ingrese el apellido materno del alumno")]
        public string ApellidoMatAlumno { get; set; }
    }

    public class ProyectoIsimaDB : DbContext
    {
        public DbSet<Alumnos> Alumno { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace ProyectoIsima.Models
{
    public class Alumnos
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string NombreAlumno { get; set; }
        [Required]
        public string ApellidoPatAlumno { get; set; }
        [Required]
        public string ApellidoMatAlumno { get; set; }
    }

    public class BaseIsima : DbContext
    {
        public DbSet<Alumnos> Alumno { get; set; }
    }
}
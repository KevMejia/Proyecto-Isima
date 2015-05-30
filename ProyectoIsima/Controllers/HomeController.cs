using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProyectoIsima.Models;
using System.Data;
using System.Net;

namespace ProyectoIsima.Controllers
{
    public class HomeController : Controller
    {
        private BaseIsima db = new BaseIsima();
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View(db.Alumno.ToList());
        }

        //
        // GET: /Home/Details/5

        public ActionResult Details(int id)
        {

            return View(db.Alumno.Find(id));
        }

        //
        // GET: /Home/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Home/Create

        [HttpPost]
        public ActionResult Create([Bind(Include = "NombreAlumno,ApellidoPatAlumno,ApellidoMatAlumno")] Alumnos alumno)
        {
            if (ModelState.IsValid)
            {
                db.Alumno.Add(alumno);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(alumno);
        }
        
        //
        // GET: /Home/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View(db.Alumno.Find(id));
        }

        //
        // POST: /Home/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,NombreAlumno,ApellidoPatAlumno,ApellidoMatAlumno")] Alumnos alumno)
        {
            if (ModelState.IsValid)
            {
                db.Entry(alumno).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(alumno);
        }

        //
        // GET: /Home/Delete/5
 
        public ActionResult Delete(int id)
        {
            Alumnos alumnos = db.Alumno.Find(id);
            return View(alumnos);
        }

        //
        // POST: /Home/Delete/5

        [HttpPost]
        public ActionResult Delete([Bind(Include = "Id,NombreAlumno,ApellidoPatAlumno,ApellidoMatAlumno")] Alumnos alumno)
        {
            Alumnos alu = db.Alumno.Find(alumno.Id);
            db.Alumno.Remove(alu);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}

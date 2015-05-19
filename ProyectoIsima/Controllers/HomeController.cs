using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProyectoIsima.Models;

namespace ProyectoIsima.Controllers
{
    public class HomeController : Controller
    {

        private ProyectoIsimaDB db = new ProyectoIsimaDB();

        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View(db.Alumno.ToList());
        }

    }
}

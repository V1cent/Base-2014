using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GlobalStore.Controllers
{
    public class PeliculasController : Controller
    {
        //
        // GET: /Pelicula/

        public ActionResult Index()
        {
            return View();
        }

    }
}

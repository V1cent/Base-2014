using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using GlobalStore.Models;
using MySql.Data.MySqlClient;
using System.Text;

namespace GlobalStore.Controllers
{
    public class CantanteController : Controller
    {
        DataAccess.Cantante __repositorio;

        public CantanteController()
        {
            __repositorio = new DataAccess.Cantante();
        }
        //
        // GET: /Cantante/

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddCantante(CananteModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO PERSONA
                MyString.Append("(6,");
                MyString.Append("'" + model.Ncantante + "')");
                string query = MyString.ToString();
                __repositorio.InsertCantante(query);
                return RedirectToAction("Index", "Cantante");

            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }


    }
}

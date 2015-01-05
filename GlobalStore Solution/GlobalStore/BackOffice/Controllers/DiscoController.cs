using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using BackOffice.Models;
using MySql.Data.MySqlClient;
using System.Text;


namespace BackOffice.Controllers
{
    public class DiscoController : Controller
    {
        //
        // GET: /Disco/
        DataAccess.DBBackoffice.Disco __repositorio;
        
         public DiscoController()
        {
            __repositorio = new DataAccess.DBBackoffice.Disco();
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddDisquera(DisqueraModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO disquera
                MyString.Append("('" + model.Ndisquera + "')");
                string query = MyString.ToString();
                __repositorio.InsertDisquera(query);
                return RedirectToAction("Index", "Disco");

            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }


    }
}

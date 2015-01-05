using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BackOffice.Models;
using MySql.Data.MySqlClient;
using System.Text;

namespace BackOffice.Controllers
{
    public class TJCreditoController : Controller
    {
        //
        // GET: /TJCredito/
        DataAccess.DBBackoffice.TJCredito __repositorio;
        public TJCreditoController()
        {
            __repositorio = new DataAccess.DBBackoffice.TJCredito();
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _TipoTJCredito()
        {
            return PartialView();
        }

        [HttpPost]

        public ActionResult AddTipoTJcredito(TJCreditoModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO ACTOR DE PELICULA
                MyString.Append("('" + model.Ntipotj + "')");
                string query = MyString.ToString();
                __repositorio.InsertTipoTarjetaCredito(query);



                return RedirectToAction("Index", "Pelicula");

    
            }
          return View(model);
        }



        


    }
}

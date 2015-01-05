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

namespace BackOffice.Controllerss
{
    public class EmpresaController : Controller
    {
        //
        // GET: /Empresa/

        DataAccess.DBBackoffice.Empresa __repositorio;

          public EmpresaController()
        {
            __repositorio = new DataAccess.DBBackoffice.Empresa();
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _CargoEmpresa()
        {
            return PartialView();
        }

        public ActionResult _Empresa()
        {
            return PartialView();
        }


        [HttpPost]
        public ActionResult AddEmpresa(EmpresaModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO LUGAR DE EMPRESA
                MyString.Append("('" + model.Nlugar + "',");
                MyString.Append("'" + model.Tlugar + "',");
                MyString.Append("'" + model.Dlugar + "',");
                MyString.Append("null)");
                string query = MyString.ToString();
                __repositorio.InsertLugarEmpresa(query);

                StringBuilder MyString2 = new StringBuilder("");

                MyString2.Append("(' " + model.Nsitiowebemp + "',");
                MyString2.Append("'" + model.correoemp + "',");
                MyString2.Append("( select last_insert_id() ),");
                MyString2.Append("'" + model.Nempresa + "')");
                string query2 = MyString2.ToString();
                __repositorio.InsertEmpresa(query2);

                return RedirectToAction("Index", "Empresa");
               

            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        
        public ActionResult AddCargoEmpresa(CargoEmpresaModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO LUGAR DE EMPRESA
                MyString.Append("('" + model.Ncargo_emp + "',");
                MyString.Append("" + model.Scargo_emp + ",");
                MyString.Append("'" + model.Ecargo_emp + "')");
                string query = MyString.ToString();
                __repositorio.InsertCargoEmpresa(query);



                return RedirectToAction("Index", "Empresa");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }


       


    }
}

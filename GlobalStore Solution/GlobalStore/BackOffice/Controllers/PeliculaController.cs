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
    public class PeliculaController : Controller
    {

        DataAccess.DBBackoffice.Pelicula __repositorio;
        //
        // GET: /Pelicula/
        public PeliculaController()
        {
            __repositorio = new DataAccess.DBBackoffice.Pelicula();
        }
        public ActionResult Index()
        {
            return View();
        }
        // GET: /CategoriaPelicula/
        
        
        public ActionResult _CategoriaPelicula()
        {
            return PartialView();
        }
        
        
        public ActionResult _Director()
        {
            return PartialView();
        }

        public ActionResult _Lenguaje()
        {
            return PartialView();
        }

        public ActionResult _Subtitulo()
        {
            return PartialView();
        }

         public ActionResult _BorrarSubtitulo()
        {
            return PartialView();
        }
       

        [HttpPost]

        public ActionResult AddCategoriaPelicula(CategoriaPeliculaModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO CATEGORIA PELICULA
                MyString.Append("('" + model.Ncategoriapelicula + "',");
                MyString.Append("'" + model.Dcategoriapelicula + "')");
                string query = MyString.ToString();
                __repositorio.InsertCategoriaPelicula(query);



                return RedirectToAction("Index", "Pelicula");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult AddDirector(DirectorModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO DIRECTOR DE PELICULA
                MyString.Append("('" + model.Ndirector + "')");
                string query = MyString.ToString();
                __repositorio.InsertDirector(query);



                return RedirectToAction("Index", "Pelicula");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult AddActor(ActorModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO ACTOR DE PELICULA
                MyString.Append("('" + model.Nactor + "')");
                string query = MyString.ToString();
                __repositorio.InsertActor(query);



                return RedirectToAction("Index", "Pelicula");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult AddLenguaje(LenguajeModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO ACTOR DE PELICULA
                MyString.Append("('" + model.Nlenguaje + "')");
                string query = MyString.ToString();
                __repositorio.InsertLenguaje(query);



                return RedirectToAction("Index", "Pelicula");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult AddSubtitulo(SubtituloModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO ACTOR DE PELICULA
                MyString.Append("('" + model.Nsubtitulo + "')");
                string query = MyString.ToString();
                __repositorio.InsertSubtitulo(query);



                return RedirectToAction("Index", "Pelicula");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult DelSubtitulo(BorrarSubtituloModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                StringBuilder MyString = new StringBuilder("");

                //INSERTO ACTOR DE PELICULA
                MyString.Append( " "+ model.Dsubtitulo + "");
                string query = MyString.ToString();
                __repositorio.DeleteSubtitulo(query);



                return RedirectToAction("Index", "Pelicula");


            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }



    }

     
   
}

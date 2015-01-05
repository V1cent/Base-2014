using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace BackOffice.Models
{

    public class    CategoriaPeliculaModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre De La categoria:")]
        public string Ncategoriapelicula { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Descripcion de La categoria:")]
        public string Dcategoriapelicula { get; set; }
    }

    public class DirectorModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Del Director:")]
        public string Ndirector { get; set; }
    
    }

   

    public class ActorModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Del Actor:")]
        public string Nactor { get; set; }

    }

    public class LenguajeModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Del Lenguaje:")]
        public string Nlenguaje { get; set; }

    }

    public class SubtituloModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Lenguaje Del Subtitulo:")]
        public string Nsubtitulo { get; set; }

    }

    public class BorrarSubtituloModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "¿Que lenguaje de subtitulo desea borrar?:")]
        public string Dsubtitulo { get; set; }

    }
   
}

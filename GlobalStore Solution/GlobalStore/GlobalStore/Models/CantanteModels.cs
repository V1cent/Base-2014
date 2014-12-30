using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace GlobalStore.Models
{

    public class CananteModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Cantante:")]
        public string Ncantante { get; set; }

        
    }

   
}

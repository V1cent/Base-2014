using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace BackOffice.Models
{

    public class DisqueraModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Disquera:")]
        public string Ndisquera { get; set; }
    }

   
}

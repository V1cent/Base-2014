using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace BackOffice.Models
{

    public class TJCreditoModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Del Tipo De Tarjeta De Credito:")]
        public string Ntipotj { get; set; }
    }

   
}

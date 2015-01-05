using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace BackOffice.Models
{

    public class EmpresaModel
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre De La Empresa:")]
        public string Nempresa { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Sitio Web De La Empresa:")]
        public string Nsitiowebemp { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Correo De La Empresa:")]
        public string correoemp { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre del Lugar De La Empresa:")]
        public string Nlugar { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Tipo De lugar:")]
        public string Tlugar { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Direccion La Empresa:")]
        public string Dlugar { get; set; }
    }

    public class CargoEmpresaModel
    {

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Nombre Del Cargo de la empresa:")]
        public string Ncargo_emp { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Salario Del Cargo De La Empresa:")]
        public string Scargo_emp { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Empresa Donde Se Aplica El Cargo:")]
        public string Ecargo_emp { get; set; }


    }
   
}

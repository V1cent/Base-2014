using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace GlobalStore.Models
{

    public class ChangePasswordModel
    {
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Current password")]
        public string OldPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New password")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm new password")]
        [System.Web.Mvc.Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
    }

    public class LogOnModel
    {
        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }
       
    }

    public class RegisterModel
    {

        [Display(Name = "CI")]
        [Required(ErrorMessage = "Debe especificar el número de identificación")]
        [RegularExpression(@"[0-9]*$", ErrorMessage = "Por favor introduce sólo números en el campo de {0}.")]
        public string CI { get; set; }


        [Display(Name = "Primer Nombre")]
        [Required(ErrorMessage = "Debe especificar el nombre")]
        [RegularExpression(@"[A-ZñÑa-z ]*$", ErrorMessage = "El nombre sólo debe contener caracteres alfabéticos.")]
        public string PNombre { get; set; }

        [Display(Name = "Segundo Nombre")]
        public string SNombre { get; set; }


        [Display(Name = "Primer Apellido")]
        [Required(ErrorMessage = "Debe especificar el 1er apellido")]
        [RegularExpression(@"[A-ZñÑa-z ]*$", ErrorMessage = "El 1er apellido sólo debe contener caracteres alfabéticos.")]
        public string PApellido { get; set; }


        [Display(Name = "Segundo Apellido")]
        [Required(ErrorMessage = "Debe especificar el 2do apellido")]
        [RegularExpression(@"[A-ZñÑa-z ]*$", ErrorMessage = "El 2do apellido sólo debe contener caracteres alfabéticos.")]
        public string SApellido { get; set; }


        [DataType(DataType.EmailAddress)]
        [Required(ErrorMessage = "Debe introducir un email valido")]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [Display(Name = "Fecha Nacimiento")]
        public string FNac { get; set; }

        [Required]
        [Display(Name = "Estado civil")]
        public string EdoCivil { get; set; }

        [Required]
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Telefono")]
        public string Tlf { get; set; }

        [Required]
        [Display(Name = "Usuario")]
        public string UserName { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "El {0} debe tener al menos {2} caracteres.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirmar password")]
        [System.Web.Mvc.Compare("Password", ErrorMessage = "Las contrasenas no coinciden.")]
        public string ConfirmPassword { get; set; }
    }
}

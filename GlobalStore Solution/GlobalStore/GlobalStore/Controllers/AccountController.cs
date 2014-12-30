using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using GlobalStore.Models;
using MySql.Data.MySqlClient;
using System.Text;

namespace GlobalStore.Controllers
{
    public class AccountController : Controller
    {

        DataAccess.Account __repositorio;

        public AccountController()
        {
            __repositorio = new DataAccess.Account();
        }

        //
        // GET: /Account/LogOn

        public ActionResult LogOn()
        {
            return View();
        }

        //
        // POST: /Account/LogOn

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (__repositorio.ValidateUser(model.Email, model.Password))
                {
                    FormsAuthentication.SetAuthCookie(model.Email, true);
                    if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/")
                        && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                    {
                        return Redirect(returnUrl);
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "El usuario o contrasena es incorrecto.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }


        //
        // GET: /Account/LogOff

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/Register

        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register

        [HttpPost]
        public ActionResult Register(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                // Attempt to register the user

                FormsAuthentication.SetAuthCookie(model.CI, false /* createPersistentCookie */);
                StringBuilder MyString = new StringBuilder("");
                StringBuilder MyStringU = new StringBuilder("");

                //INSERTO PERSONA
                MyString.Append("('" + model.CI + "',");
                MyString.Append("'" + model.PNombre + "',");
                if (model.SNombre != null)
                {
                    MyString.Append("'" + model.SNombre + "',");
                }
                else
                    MyString.Append("'null',");
                MyString.Append("'" + model.PApellido + "',");
                MyString.Append("'" + model.SApellido + "',");
                MyString.Append("'" + model.Email + "',");
                MyString.Append("'" + model.FNac + "',");
                MyString.Append("'" + model.Tlf + "',");
                MyString.Append("'Cliente',");
                MyString.Append("null,null,null,null,");
                MyString.Append("'" + model.EdoCivil + "',");
                string fechaString = DateTime.Now.Year + "-" + DateTime.Now.Month + "-" + DateTime.Now.Day;
                MyString.Append("'" + fechaString + "')");
                string queryp = MyString.ToString();
                __repositorio.InsertP(queryp);

                //INSERTO USUARIO
                MyStringU.Append("(6,");
                MyStringU.Append("'"+ model.UserName + "',");
                MyStringU.Append("'" + model.Password + "',");
                MyStringU.Append("1,");
                MyStringU.Append("5,");
                MyStringU.Append("'" + model.CI + "')");
                string queryu = MyStringU.ToString();
                __repositorio.InsertU(queryu);

                return RedirectToAction("Index", "Home");

            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ChangePassword

        [Authorize]
        public ActionResult ChangePassword()
        {
            return View();
        }

        //
        // POST: /Account/ChangePassword

        [Authorize]
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordModel model)
        {
            if (ModelState.IsValid)
            {

                // ChangePassword will throw an exception rather
                // than return false in certain failure scenarios.
                bool changePasswordSucceeded;
                try
                {
                    MembershipUser currentUser = Membership.GetUser(User.Identity.Name, true /* userIsOnline */);
                    changePasswordSucceeded = currentUser.ChangePassword(model.OldPassword, model.NewPassword);
                }
                catch (Exception)
                {
                    changePasswordSucceeded = false;
                }

                if (changePasswordSucceeded)
                {
                    return RedirectToAction("ChangePasswordSuccess");
                }
                else
                {
                    ModelState.AddModelError("", "The current password is incorrect or the new password is invalid.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ChangePasswordSuccess

        public ActionResult ChangePasswordSuccess()
        {
            return View();
        }

        #region Status Codes
        private static string ErrorCodeToString(MembershipCreateStatus createStatus)
        {
            // See http://go.microsoft.com/fwlink/?LinkID=177550 for
            // a full list of status codes.
            switch (createStatus)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "User name already exists. Please enter a different user name.";

                case MembershipCreateStatus.DuplicateEmail:
                    return "A user name for that e-mail address already exists. Please enter a different e-mail address.";

                case MembershipCreateStatus.InvalidPassword:
                    return "The password provided is invalid. Please enter a valid password value.";

                case MembershipCreateStatus.InvalidEmail:
                    return "The e-mail address provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidAnswer:
                    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidQuestion:
                    return "The password retrieval question provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidUserName:
                    return "The user name provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.ProviderError:
                    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }
        #endregion

    }
}

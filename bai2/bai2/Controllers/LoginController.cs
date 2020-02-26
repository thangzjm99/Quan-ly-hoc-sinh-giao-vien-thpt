using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Windows;

namespace bai2.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            string user = Request.Form["Usernametext"];
            string pass = Request.Form["Passwordtext"];
            if (user == "admin" && pass == "admin")
            {
                return RedirectToAction("Index", "Home", null);
            }
            else
            {
                MessageBox.Show("Wrong id and password");

                return RedirectToAction("Index", "Login", null);
            }
        }
    }
}
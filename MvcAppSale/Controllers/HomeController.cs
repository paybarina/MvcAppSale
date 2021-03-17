using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcAppSale.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to PT.ABC";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Sale()
        {
            return View();
        }


        public ActionResult Food()
        {
            return View();
        }
    }
}

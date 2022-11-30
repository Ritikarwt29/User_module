using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using Users.Models;

namespace Users.Controllers
{
    public class UserMvcController : Controller
    {
        MrMedEntities db = new MrMedEntities();
        HttpClient client = new HttpClient();
        // GET: UserMvc

        [HttpGet]
        public ActionResult Index(User obj)
        {
            List<User> user_list = new List<User>();
            client.BaseAddress = new Uri("https://localhost:44373/api/UserApi");
            var Response = client.GetAsync("UserApi");
            Response.Wait();

            var test = Response.Result;
            if (test.IsSuccessStatusCode)
            {
                var display = test.Content.ReadAsAsync<List<User>>();
                display.Wait();
                user_list = display.Result;
            }

            return View(user_list);

        }

        public ActionResult Create()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Create(User users)
        {
            var customer = db.Users.FirstOrDefault(x => x.Email == x.Email);
            if (customer != null)
            {
                ModelState.AddModelError("Email", "email already exist");
            }

            client.BaseAddress = new Uri("https://localhost:44373/api/UserApi");
            var Response = client.PostAsJsonAsync<User>("UserApi", users);
            Response.Wait();

            var test = Response.Result;
            if (test.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View("Create");
        }
       



    }

}

       
    

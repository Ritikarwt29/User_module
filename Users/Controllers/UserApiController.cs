using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.InteropServices.ComTypes;
using System.Web.Http;
using Users.Models;

namespace Users.Controllers
{
    public class UserApiController : ApiController
    {
        MrMedEntities db = new MrMedEntities();
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetUser()
        {
            List<User> list = db.Users.ToList();
            return Ok(list);
        }


        [HttpPost]
        public IHttpActionResult EmpInsert(User users)
        {


            //TestEnt.Employees.Add(e);
            //TestEntities.SaveChanges();
            db.Users.Add(users);
            db.SaveChanges();
            return Ok();
        }

    }
}

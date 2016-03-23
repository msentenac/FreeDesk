using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace RestService.Controllers
{

    public class UserController : ApiController
    {
        //
        // GET: /AddUser/
		public string AddUser([FromUri]string name, [FromUri]string surname, [FromUri]string company)
		{
			FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext(System.Configuration.ConfigurationManager.ConnectionStrings["FreeDeskConnectionString"].ConnectionString);
			if (freeDeskDataCtx.User.Where(x => (x.name == name) && (x.surname == surname)).Count() > 0)
				return "erreur";
			User User = new User();
			User.name = name;
			User.surname = surname;
			User.company = company;
			List<User> Users = new List<User>();
			Users.Add(User);
			freeDeskDataCtx.User.InsertAllOnSubmit(Users);
			freeDeskDataCtx.SubmitChanges();
            return "";
        }

    }
}

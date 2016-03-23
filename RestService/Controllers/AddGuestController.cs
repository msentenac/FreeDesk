using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace RestService.Controllers
{

	public class AddGuestController : ApiController
	{

		//
		// GET: /AddGuest/

		public string Get([FromUri]string id)
		{
			return "";
		}

	}
}

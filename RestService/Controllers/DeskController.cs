using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace RestService.Controllers
{
    public class DeskController : ApiController
    {
        //
        // GET: /Desk/Reserve?idDesk&idBadge
        [ActionName ("Reserve")]
        public DeskReserved Get ([FromUri]string idDesk, [FromUri]string codeBadge)
        {
            FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext (System.Configuration.ConfigurationManager.ConnectionStrings ["FreeDeskConnectionString"].ConnectionString);
            int idBadge = freeDeskDataCtx.Badge.Where (x => x.code == codeBadge).Select (x => x.id).FirstOrDefault ();
            Desk deskTable = freeDeskDataCtx.Desk.Where (x => x.id == int.Parse (idDesk) && (x.idBadge == null || x.idBadge == idBadge)).FirstOrDefault ();
            bool success = false;
            string username = string.Empty;
            if (deskTable != null)
            {
                success = true;
                deskTable.idBadge = idBadge;
                int idUser = freeDeskDataCtx.Badge.Where (x => x.code == codeBadge).Select (x => x.idUser).FirstOrDefault ().Value;
                User user = freeDeskDataCtx.User.Where (x => x.id == idUser).FirstOrDefault ();
                if (user != null) username = user.name;
            };
            freeDeskDataCtx.SubmitChanges ();
            return new DeskReserved (success, username);
        }

        //
        // GET: /Desk/UnReserve?idDesk
        [ActionName ("UnReserve")]
        public bool Get ([FromUri]string idDesk)
        {
            bool success = true;
            FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext (System.Configuration.ConfigurationManager.ConnectionStrings ["FreeDeskConnectionString"].ConnectionString);
            Desk deskTable = freeDeskDataCtx.Desk.Where (x => x.id == int.Parse (idDesk)).FirstOrDefault ();
            if (deskTable != null)
            {
                deskTable.idBadge = null;
            }
            else success = false;
            freeDeskDataCtx.SubmitChanges ();
            return success;
        }

        //
        // POST: /Desk/GetList
        public List<DeskStatus> Post ()
        {
            FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext (System.Configuration.ConfigurationManager.ConnectionStrings ["FreeDeskConnectionString"].ConnectionString);
            IEnumerable<Desk> deskTable = freeDeskDataCtx.Desk.Where (x => x.id != null);
            List<DeskStatus> List = new List<DeskStatus> ();
            foreach (Desk desk in deskTable)
            {
                List.Add (new DeskStatus { idDesk = desk.id, reserved = desk.idBadge != null ? true : false });
            }
            return List;
        }

    }
    #region classes des objets retournés
    public class DeskReserved
    {
        public DeskReserved (bool Accept, string Username)
        {
            accept = Accept;
            username = Username;
        }
        public bool accept { get; set; }
        public string username { get; set; }
    }
    public class DeskStatus
    {
        public DeskStatus ()
        {

        }

        public int idDesk { get; set; }
        public bool reserved { get; set; }
    }
    #endregion
}

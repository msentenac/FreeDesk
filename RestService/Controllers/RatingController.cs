using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace RestService.Controllers
{
    public class RatingController : ApiController
    {
        //
        // GET: /Rating/
        [ActionName ("PostRating")]
        public bool Get (int idDesk, int soundLevel, float TemperatureLevel, float HumidityLevel, int idBadge)
        {
            bool success = true;
            try
            {
                FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext (System.Configuration.ConfigurationManager.ConnectionStrings ["FreeDeskConnectionString"].ConnectionString);
                Rating rating = new Rating ();
                rating.idDesk = idDesk;
                rating.Sound = soundLevel;
                rating.Temperature = TemperatureLevel;
                rating.Humidity = HumidityLevel;
                rating.DateRate = DateTime.Now;
                rating.idBadge = idBadge;

                List<Rating> Ratings = new List<Rating> ();
                Ratings.Add (rating);
                freeDeskDataCtx.Rating.InsertAllOnSubmit (Ratings);
                freeDeskDataCtx.SubmitChanges ();
            }
            catch
            {
                success = false;
            }
            return success;
        }


        //
        // GET: /Rating/
        [ActionName ("GetStat")]
        public Rating Get (int idDesk)
        {
            FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext (System.Configuration.ConfigurationManager.ConnectionStrings ["FreeDeskConnectionString"].ConnectionString);
            if (freeDeskDataCtx.Rating.Where (x => x.idDesk == idDesk).FirstOrDefault () == null) return null;
            
            double temp = freeDeskDataCtx.Rating.Where (x => x.idDesk == idDesk).Select (x => x.Temperature).Average ().Value;
            double humidity = freeDeskDataCtx.Rating.Where (x => x.idDesk == idDesk).Select (x => x.Humidity).Average ().Value;
            double sound = freeDeskDataCtx.Rating.Where (x => x.idDesk == idDesk).Select (x => x.Sound).Average ().Value;

            Rating rating = new Rating ();
            rating.Sound = Convert.ToInt32 (sound);
            rating.Humidity = humidity;
            rating.Temperature = temp;
            rating.idDesk = idDesk;
            return rating;
        }

        [System.Web.Http.HttpPost]
        public List<Rating> Post ()
        {
            FreeDeskDataContext freeDeskDataCtx = new FreeDeskDataContext (System.Configuration.ConfigurationManager.ConnectionStrings ["FreeDeskConnectionString"].ConnectionString);

            List<Rating> ratings = new List<Rating> ();

            var toto = freeDeskDataCtx.Rating.GroupBy (x => x.idDesk).Select (g => new { 
                                                            idDesk = g.Select(x=>x.idDesk).First(),
                                                            Temperature = g.Average (x => x.Temperature.Value),
                                                            Sound = Convert.ToInt32(g.Average (x => x.Sound.Value)),
                                                            Humidity = g.Average(x => x.Humidity.Value) 
                                                    });

            foreach (var item in toto)
            {
                Rating rating = new Rating ();
                rating.idDesk = item.idDesk;
                rating.Sound = item.Sound;
                rating.Humidity = item.Humidity;
                rating.Temperature = item.Temperature;
                ratings.Add (rating);
            }
            return ratings.ToList();
        }


    }
}

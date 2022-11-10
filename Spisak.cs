using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace TuristickaAgencija
{
    public class Spisak
    {
        private List<Putnik> putnici = new List<Putnik>();

        public Spisak()
        {
            this.PreuzmiPutnikeIzFajla();
        }

        public void PreuzmiPutnikeIzFajla()
        {
            Putnik putnik = new Putnik();
        }
    }
}
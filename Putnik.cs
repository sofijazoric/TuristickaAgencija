using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace TuristickaAgencija
{
    public class Putnik
    {
        public string ID
        {
            get; set;
        }
        public string Ime
        {
            get; set;
        }
        public string Prezime
        {
            get; set;
        }
       
        public Putnik() { }

        
    }
}
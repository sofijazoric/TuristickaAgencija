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

        public void Prikaz(ParametriZaPretragu parametri)
        {
            string SQLSelect = "Select * from Putnik where JMBG = '" + parametri.JMBG + "'";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = Connection.conString;

            SqlCommand cmd = new SqlCommand(SQLSelect, con);
            SqlDataReader reader;

            using(con)
            {
                try
                {
                    con.Open();
                    reader = cmd.ExecuteReader();
                    reader.Read();
                }
            }
        }
    }
}
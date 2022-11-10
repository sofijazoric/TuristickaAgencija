using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TuristickaAgencija
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTrazi_Click(object sender, EventArgs e)
        {
            ParametriZaPretragu parametri = new ParametriZaPretragu();
            parametri.JMBG = txtJMBG.Text;
            FillSqlSource(parametri);

        }

        public void FillSqlSource(ParametriZaPretragu parametri)
        {
            using(SqlConnection conn = new SqlConnection(Connection.conString))
            {
                conn.Open();
                string cmdSelect = "SELECT * from Putnik where JMBG = '" + parametri.JMBG + "'";
                using (SqlCommand cmd = new SqlCommand(cmdSelect, conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while(reader.Read())
                    {
                        lblIme.Text = reader["Ime"].ToString();
                        lblPrezime.Text = reader["Prezime"].ToString();
                    }
                    reader.Close();
                }
            }
        }
        
    }
}
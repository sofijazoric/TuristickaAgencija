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
            Prikaz(parametri);
        }


        public void Prikaz(ParametriZaPretragu parametri)
        {
            string SQLSelect = "Select * from Putnik where JMBG = '" + parametri.JMBG + "'";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = Connection.conString;

            SqlCommand cmd = new SqlCommand(SQLSelect, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
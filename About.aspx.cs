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
           
        }


        
    }
}
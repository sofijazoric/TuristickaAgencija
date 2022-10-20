using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuristickaAgencija
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlMesto.Items.Add("");
            ddlMesto.Items.Add("Novi Sad");
            ddlMesto.Items.Add("");
            ddlMesto.Items.Add("");

        }
    }
}
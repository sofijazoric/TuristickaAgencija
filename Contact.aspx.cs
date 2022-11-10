using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TuristickaAgencija
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlMesto.Items.Add(new ListItem("", ""));
                ddlMesto.Items.Add(new ListItem("Herceg Novi"));
                ddlMesto.Items.Add(new ListItem("Beograd"));
                ddlMesto.Items.Add(new ListItem("Novi Sad"));
                ddlMesto.Items.Add(new ListItem("Trebinje"));
            }
        }

        protected void btnTrazi_Click(object sender, EventArgs e)
        {
            string trazenigrad = ddlMesto.SelectedValue;
            lblIme.Text = trazenigrad;
            Fill(trazenigrad);


        }

        public void Fill(string grad)
        {
            using (SqlConnection conn = new SqlConnection(Connection.conString))
            {
                conn.Open();
                string cmdSelect = "SELECT * from Mesto join Putuje on Mesto.IdMesto = Putuje.IdMesto join Putnik on Putnik.JMBG = Putuje.JMBG where Mesto.Grad = '" + grad + "'";

                using(SqlCommand cmd = new SqlCommand(cmdSelect, conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    while(reader.Read())
                    {
                        lblIme.Text = reader["Ime"].ToString();
                        lblPrezime.Text = reader["Prezime"].ToString();
                        lblPolazak.Text = reader["DatumDolaska"].ToString();
                        lblDolazak.Text = reader["DatumOdlaska"].ToString();

                    }
                }
            }
        }
    }
}
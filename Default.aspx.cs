using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


namespace TuristickaAgencija
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUnesi_Click(object sender, EventArgs e)
        {
            string SqlInsert;
            SqlInsert = "INSERT INTO Putnik ( JMBG, Ime, Prezime)";
            SqlInsert += "VALUES ('";
            SqlInsert += txtIme.Text + "','";
            SqlInsert += txtPrezime.Text + "','";
            SqlInsert += txtJMBG.Text + "')'";



            SqlConnection con = new SqlConnection(Connection.conString);
            SqlCommand cmd = new SqlCommand(SqlInsert, con);
            int dodat = 0;
            using (con)
            {

                try
                {
                    con.Open();
                    dodat = cmd.ExecuteNonQuery();
                    lblMessage.Text = dodat + " rekorda ubačeno u bazu";
                    con.Close();
                }
                catch (System.Data.SqlClient.SqlException ex)
                {
                    Console.WriteLine("IDIDIDIDI");
                }


            }
        }
    }
}
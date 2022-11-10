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

            using (SqlConnection con = new SqlConnection(Connection.conString))

            {
                try
                {
                    con.Open();

                    string cmdInsert = "Insert Into putnik Values(@JMBG, @Ime, @Prezime)";

                    using (SqlCommand cmd = new SqlCommand(cmdInsert, con))
                    {
                        cmd.Parameters.AddWithValue("@JMBG", txtJMBG.Text);
                        cmd.Parameters.AddWithValue("@Ime", txtIme.Text);
                        cmd.Parameters.AddWithValue("@Prezime", txtPrezime.Text);

                        int dodat = cmd.ExecuteNonQuery();
                      
                    }


                }catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);

                }

            }
              
        }
    }
}
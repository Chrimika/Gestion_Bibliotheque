using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_Biblio_1._0
{
    public partial class inscription : Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void inscrit_Click(object sender, EventArgs e)
        {
           if(password.Text != conpass.Text)
            {
                msg.Text = "mot de passe different";
                password.Text = "";
                conpass.Text = "";
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);

                    string querry = "INSERT INTO Bibliothequaires (nom, sexe, age, tel, password) VALUES (@nom, @sexe, @age, @tel, @password)";
                    SqlCommand cmd = new SqlCommand(querry, con);
                    cmd.Parameters.AddWithValue("@nom", username.Text);
                    cmd.Parameters.AddWithValue("@sexe", sexe.Text);
                    cmd.Parameters.AddWithValue("@age", int.Parse(age.Text));
                    cmd.Parameters.AddWithValue("@tel", tel.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    con.Open ();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    msg.Text = "Enregistrement Effectuee";
                    username.Text = "";
                    sexe.Text = "";
                    age.Text = "";
                    tel.Text = "";
                    password.Text = "";
                    conpass.Text = "";
                }
                catch(Exception ex)
                {
                    msg.Text = ex.Message;
                }
            }
        }
    }
}
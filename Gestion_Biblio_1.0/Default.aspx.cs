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
    public partial class _Default : Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void connect_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);

                string querry = "SELECT * FROM Bibliothequaires WHERE (nom = @nom AND password = @password)";
                SqlCommand cmd = new SqlCommand(querry, con);
                cmd.Parameters.AddWithValue("@nom", username.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    int id = Convert.ToInt32(reader["id"]); 
                    string nom = Convert.ToString(reader["nom"]);
                    msg.Text = "Reusite";
                    Session["id"] = id;
                    Session["nom"] = nom;
                    Response.Redirect("AcceuilBiblio.aspx");
                }
                else { 
                    msg.Text = "Vous netes pas inscrit";
                }
            }
            catch (Exception ex) 
            {
                msg.Text = ex.Message;
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_Biblio_1._0
{
    public partial class AcceuilBiblio : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = (string)Session["nom"];
        }
    }
}
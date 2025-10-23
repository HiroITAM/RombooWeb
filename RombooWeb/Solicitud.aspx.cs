using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RombooWeb
{
    public partial class Solicitud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviarSolicitud_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard_Cliente.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard_Cliente.aspx");
        }

        protected void btnLogo_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnLogo_Click(object sender, EventArgs e)
        {

        }
    }
}
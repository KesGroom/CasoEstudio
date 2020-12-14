using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class HistorialCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clsCita citaDao = new clsCita();
                GvCitas.DataSource = citaDao.findNote(Session["idPersona"].ToString());
                GvCitas.DataBind();
            }
        }
    }
}
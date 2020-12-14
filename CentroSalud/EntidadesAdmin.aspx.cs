using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class EntidadesAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsEntidad entidadDAO = new clsEntidad();
            GvEntidades.DataSource = entidadDAO.findGv();
            GvEntidades.DataBind();//Mostrar Datos

            clsEspecialista especialistaDAO = new clsEspecialista();
            GvEspecialistas.DataSource = especialistaDAO.findAll();
            GvEspecialistas.DataBind();//Mostrar Datos

            clsEntidad entidadsaludDao = new clsEntidad();
            ddlEntidad.DataSource = entidadsaludDao.findAll();
            ddlEntidad.DataValueField = "nit";
            ddlEntidad.DataTextField = "razon_social";
            ddlEntidad.DataBind();
            
            clsEspecialista espeDao = new clsEspecialista();
            ddlEspecialistas.DataSource = espeDao.finddl();
            ddlEspecialistas.DataValueField = "id_especialista";
            ddlEspecialistas.DataTextField = "nombre";
            ddlEspecialistas.DataBind();
        }

        protected void btnAsign_Click(object sender, EventArgs e)
        {
            clsEspecialista especialidadDAo = new clsEspecialista();
            especialidadDAo.asignar(int.Parse(ddlEspecialistas.SelectedValue), ddlEntidad.SelectedValue.ToString());
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaToast('Se ha asignado correctamente','success');</script>");

        }
    }
}
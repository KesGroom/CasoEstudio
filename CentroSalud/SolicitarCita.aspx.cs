using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class SolicitarCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsEspecialista espeDao = new clsEspecialista();
            ddlEspecialista.DataSource = espeDao.findAll();
            ddlEspecialista.DataValueField = "id_especialista";
            ddlEspecialista.DataTextField = "nombreddl";
            ddlEspecialista.DataBind();
            if (!IsPostBack)
            {
                clsCita citaDao = new clsCita();
                GvCitas.DataSource = citaDao.findNotNote(Session["idPersona"].ToString());
                GvCitas.DataBind();
            }
        }

       protected void btnSolicitar_Click(object sender, EventArgs e)
        {
            cita citaDTO = new cita();
            clsCita citaDAO = new clsCita();
            String identificador = Session["idPersona"].ToString();
            citaDTO.id_persona = identificador;
            citaDTO.id_especialista = int.Parse(ddlEspecialista.SelectedValue.ToString());
            citaDTO.hora_cita = TimeSpan.Parse(TextHora.Text);
            citaDTO.fecha_cita = DateTime.Parse(TextFecha.Text);
            citaDAO.register(citaDTO);
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaToast('Se ha solicitado una cita correctamente','success');</script>");

        }

        protected void btnCalificar_Click(object sender, EventArgs e)
        {
            clsCita citaDao = new clsCita();
            citaDao.calificar(int.Parse(TextCita.Text), ddlCalificacion.SelectedValue.ToString());
        }

        protected void GvCitas_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            TextCita.Text = GvCitas.Rows[rowIndex].Cells[1].Text;
        }
    }
}
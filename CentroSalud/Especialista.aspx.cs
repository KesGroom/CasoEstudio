using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class Especialista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsCiudad ciudadDAO = new clsCiudad();
            ddlCiudadEspe.DataSource = ciudadDAO.findAll();
            ddlCiudadEspe.DataValueField = "id_ciudad";
            ddlCiudadEspe.DataTextField = "ciudad1";
            ddlCiudadEspe.DataBind();

            clsEspecialista especialistaDAO = new clsEspecialista();
            clsEntidad entidadDAO = new clsEntidad();
            GvEspecialistas.DataSource = especialistaDAO.findByEntity(Session["idPersona"].ToString());
            GvEspecialistas.DataBind();//Mostrar Datos

            clsEntidad entidadsaludDao = new clsEntidad();
            ddlEntidad.DataSource = entidadsaludDao.findAlone(Session["idPersona"].ToString());
            ddlEntidad.DataValueField = "nit";
            ddlEntidad.DataTextField = "razon_social";
            ddlEntidad.DataBind();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            clsEntidad entidadDAO = new clsEntidad();
            persona personaDTO = new persona();
            clsPersona personaDAO = new clsPersona();
            personaDTO.apellido = TextLastname.Text;
            personaDTO.nombre = TextName.Text;
            personaDTO.correo = TextMail.Text;
            personaDTO.celular = TextPhone.Text;
            personaDTO.cedula = TextID.Text;
            personaDTO.password = TextPassword.Text;
            personaDTO.id_rol = 4; // id del rol persona
            personaDAO.register(personaDTO);
            especialista especialistaDTO = new especialista();
            clsEspecialista especialidadDAo = new clsEspecialista();
            especialistaDTO.id_persona = personaDTO.cedula;
            especialistaDTO.id_ciudad = int.Parse(ddlCiudadEspe.SelectedValue.ToString());
            especialistaDTO.especialidad = TextEspcialidad.Text;
            especialistaDTO.numero_de_licencia_de_salud = TextNumeroLicencia.Text;
            especialistaDTO.fecha_de_expedicion = Convert.ToDateTime(TextFechaExpe.Text);
            especialistaDTO.id_ente_salud = ddlEntidad.SelectedValue.ToString();
            especialidadDAo.register(especialistaDTO);
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaToast('Se ha registrado un especialista','success');</script>");



            TextPhone.Text = "";
            TextLastname.Text = "";
            TextName.Text = "";
            TextID.Text = "";
            TextPassword.Text = "";
            TextMail.Text = "";
            TextEspcialidad.Text = "";
            TextNumeroLicencia.Text = "";
            TextFechaExpe.Text = "";
        }
    }
}
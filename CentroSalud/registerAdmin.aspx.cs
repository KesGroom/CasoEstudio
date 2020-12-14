using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class registerAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsPersona personaDAO = new clsPersona();
            GvUsuarios.DataSource = personaDAO.findAll();
            GvUsuarios.DataBind();//Mostrar Datos

            clsCiudad ciudadDAO = new clsCiudad();

            ddlCiudad.DataSource = ciudadDAO.findAll();
            ddlCiudad.DataValueField = "id_ciudad";
            ddlCiudad.DataTextField = "ciudad1";
            ddlCiudad.DataBind();
            
            ddlCiudadEspe.DataSource = ciudadDAO.findAll();
            ddlCiudadEspe.DataValueField = "id_ciudad";
            ddlCiudadEspe.DataTextField = "ciudad1";
            ddlCiudadEspe.DataBind();

            clsEntidad entidadsaludDao = new clsEntidad();
            ddlEntidad.DataSource = entidadsaludDao.findAll();
            ddlEntidad.DataValueField = "nit";
            ddlEntidad.DataTextField = "razon_social";
            ddlEntidad.DataBind();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            persona personaDTO = new persona();
            clsPersona personaDAO = new clsPersona();
            personaDTO.apellido = TextLastname.Text;
            personaDTO.nombre = TextName.Text;
            personaDTO.correo = TextMail.Text;
            personaDTO.celular = TextPhone.Text;
            personaDTO.cedula = TextID.Text;
            personaDTO.password = TextPassword.Text;

            int opcion = 0;
            if (TextNIT.Text == "" && TextEspcialidad.Text == "")
            {
                opcion = 1;
            }else if (TextNIT.Text != "" && TextEspcialidad.Text == "")
            {
                opcion = 2;
            }else if (TextNIT.Text == "" && TextEspcialidad.Text != "")
            {
                opcion = 3;
            }

            switch (opcion)
            {
                case 1:
                    personaDTO.id_rol = 2; // id del rol persona
                    personaDAO.register(personaDTO);
                    Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaToast('Se ha registrado un paciente','success');</script>");
                    break;
                case 2:
                    personaDTO.id_rol = 3; // id del rol persona
                    personaDAO.register(personaDTO);

                    ente_salud EntesaludDto = new ente_salud();
                    clsEntidad entidadSaludDAO = new clsEntidad();
                    EntesaludDto.nit = TextNIT.Text;
                    EntesaludDto.razon_social = TextRazonSocial.Text;
                    EntesaludDto.representante = personaDTO.cedula;
                    EntesaludDto.telefono = TextTelefono.Text;
                    EntesaludDto.sitio_web = TextSitio.Text;
                    EntesaludDto.id_cuidad = int.Parse(ddlCiudad.SelectedValue.ToString());
                    EntesaludDto.capacidad_pacientes = int.Parse(TextPacientes.Text);
                    entidadSaludDAO.register(EntesaludDto);
                    Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaToast('Se ha registrado una entidad','success');</script>");
                    break;
                case 3:
                    personaDTO.id_rol = 4; // id del rol persona
                    personaDAO.register(personaDTO);
                    especialista especialistaDTO = new especialista();
                    clsEspecialista especialidadDAo = new clsEspecialista();
                    especialistaDTO.id_persona = personaDTO.cedula;
                    especialistaDTO.id_ciudad = int.Parse(ddlCiudadEspe.SelectedValue.ToString());
                    especialistaDTO.especialidad = TextEspcialidad.Text;
                    especialistaDTO.numero_de_licencia_de_salud = TextNumeroLicencia.Text;
                    especialistaDTO.fecha_de_expedicion = Convert.ToDateTime(TextFechaExpe.Text);
                    if(ddlQuestion.SelectedValue.ToString() == "No")
                    {
                        especialistaDTO.id_ente_salud = null;
                    }
                    else
                    {
                        especialistaDTO.id_ente_salud = ddlEntidad.SelectedValue.ToString();
                    }
                    especialidadDAo.register(especialistaDTO);
                    Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaToast('Se ha registrado un especialista','success');</script>");
                    break;
            }


            TextPhone.Text = "";
            TextLastname.Text = "";
            TextName.Text = "";
            TextID.Text = "";
            TextPassword.Text = "";
            TextMail.Text = "";
            TextNIT.Text = "";
            TextRazonSocial.Text = "";
            TextTelefono.Text = "";
            TextSitio.Text = "";
            TextPacientes.Text = "";
            TextEspcialidad.Text = "";
            TextNumeroLicencia.Text = "";
            TextFechaExpe.Text = "";
        }
    }
}
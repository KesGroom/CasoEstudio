using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            personaDTO.id_rol = 2; // id del rol persona
            personaDAO.register(personaDTO);

            TextPhone.Text = "";
            TextLastname.Text = "";
            TextName.Text = "";
            TextID.Text = "";
            TextPassword.Text = "";
            TextMail.Text = "";
        }
    }
}
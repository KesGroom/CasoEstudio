using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            clsPersona clspersona = new clsPersona();
            persona person = new persona();
            person = clspersona.login(TextIdentidad.Text, TextPass.Text);
            if (person != null)
            {
                Session["idPersona"] = person.cedula;
                Session["nombre"] = person.nombre;

                if (person.id_rol == 1)
                {
                    Session["uno"] = 1;
                    Response.Redirect("dashAdmin.aspx", false);
                }
                else if (person.id_rol == 2)
                {
                    Response.Redirect("dashPersona.aspx", false);
                }
                else if (person.id_rol == 3)
                {
                    Response.Redirect("dashRepresentante.aspx", false);

                }

            }
            else
            {
                Page.RegisterStartupScript("script", "<script languaje=JavaScript>AlertaPopUp('Datos incorrectos','La información suministrada no concuerda con nuestros registros, por favor valide la información e intente nuevamente.','error');</script>");
            }
        }
    }
}
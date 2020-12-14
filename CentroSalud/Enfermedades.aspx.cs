using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace CentroSalud
{
    public partial class Enfermedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clsEnfermedad enfermedadDAO = new clsEnfermedad();

                ddlEnfermedad.DataSource = enfermedadDAO.ConsultarTodos();
                ddlEnfermedad.DataValueField = "id_sintoma";
                ddlEnfermedad.DataTextField = "nombre";
                ddlEnfermedad.DataBind();
            }

        }
            protected void btnConsultar_Click(object sender, EventArgs e)
            {
                ConsultarContactos();
            }
            private void ConsultarContactos()
            {
                clsEnfermedad enfermedadDAO = new clsEnfermedad();
            TextDescription.Text = enfermedadDAO.obtenerDescripcion(int.Parse(ddlEnfermedad.SelectedValue.ToString()));    

                clsRecomendacion recomendacionDAO = new clsRecomendacion();
                GvRecomendacion.DataSource = recomendacionDAO.ConsultarTodos(int.Parse(ddlEnfermedad.SelectedValue.ToString()));
                GvRecomendacion.DataBind();

                clsSintoma sintomaDao = new clsSintoma();
                GvSintoma.DataSource = sintomaDao.ConsultarTodos(int.Parse(ddlEnfermedad.SelectedValue.ToString()));
                GvSintoma.DataBind();
            }
    }
}
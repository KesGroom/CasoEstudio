﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroSalud
{
    public partial class dashAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblBienvenido.Text = "Bienvenido " + Session["nombre"];
        }
    }
}
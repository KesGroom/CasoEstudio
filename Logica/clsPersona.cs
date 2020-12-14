using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsPersona
    {
        public void register(persona user)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.persona.InsertOnSubmit(user);
            BD.SubmitChanges();

        }

        public persona login(string id, string pass)
        {
            ORMDataContext BD = new ORMDataContext();
            var personaLogin = BD.sp_login(id, pass);
            persona objPersona = new persona();
            foreach (var item in personaLogin)
            {
                objPersona.cedula = item.cedula;
                objPersona.id_rol = item.id_rol;
                objPersona.cedula = item.cedula;
                objPersona.nombre = item.nombre;
                objPersona.apellido = item.correo;
                objPersona.correo = item.correo;
                objPersona.cedula = item.cedula;
            }
            return objPersona;
        }

        public Object findAll()
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.persona
                   select new
                   {
                       nombre = per.nombre + " " + per.apellido,
                       niup = per.cedula,
                       celular = per.celular,
                       correo = per.correo,
                       pass = per.password,
                       rol = per.rol.rol1,
                   }
                   ;
        }
    }
}

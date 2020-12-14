using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsEspecialista
    {
        public void register(especialista especialidadP)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.especialista.InsertOnSubmit(especialidadP);
            BD.SubmitChanges();

        } 
        public void asignar(int especialidadP, string entidad)
        {
            ORMDataContext BD = new ORMDataContext();
            var query = (from c in BD.especialista
                         where c.id_especialista == especialidadP
                         select c).FirstOrDefault();

            query.id_ente_salud = entidad;

            BD.SubmitChanges();
        }

        public object finddl()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.especialista
                   where c.ente_salud == null
                   select new
                   {
                       id_especialista = c.id_especialista,
                       nombre = c.persona.nombre + " " + c.persona.apellido + " (" + c.especialidad + ")",
                   };
        }
        public object findAll()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.especialista
                   select new
                   {
                       nombreddl = c.persona.nombre + " " + c.persona.apellido + " (" + c.especialidad + ")",
                       id_especialista = c.id_especialista,
                       espe = c.especialidad,
                       nombre = c.persona.nombre + " " + c.persona.apellido,
                       id = c.persona.cedula,
                       ciudad = c.ciudad.ciudad1,
                       entidad = c.ente_salud.razon_social,

                   };
        }

        public Object findByEntity(string entesalud)
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.especialista

                   where c.ente_salud.representante == entesalud
                   select new
                   {
                       nombreddl = c.persona.nombre + " " + c.persona.apellido + " (" + c.especialidad + ")",
                       id_especialista = c.id_especialista,
                       espe = c.especialidad,
                       nombre = c.persona.nombre + " " + c.persona.apellido,
                       id = c.persona.cedula,
                       ciudad = c.ciudad.ciudad1,
                       entidad = c.ente_salud.razon_social,
                   };
            ;

        }

    }
}

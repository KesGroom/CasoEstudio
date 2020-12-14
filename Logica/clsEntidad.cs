using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsEntidad
    {
        public void register(ente_salud entesalud)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.ente_salud.InsertOnSubmit(entesalud);
            BD.SubmitChanges();

        }
        public object findAll()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.ente_salud
                   select new
                   {
                       nit = c.nit,
                       razon_social = c.razon_social,
                   };
        }
        public object findAlone(string id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.ente_salud
                   where c.representante == id
                   select new
                   {
                       nit = c.nit,
                       razon_social = c.razon_social,
                   };
        }        
        public object findRepre(string id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.ente_salud
                   where c.representante == id
                   select new
                   {
                       nit = c.nit,
                   };
        }
        public object findGv()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.ente_salud
                   select new
                   {
                       nit = c.nit,
                       razon_social = c.razon_social,
                       repre = c.persona.nombre + " " + c.persona.apellido,
                       razon = c.razon_social,
                       telefono = c.telefono,
                       capacidad = c.capacidad_pacientes,
                       sitio = c.sitio_web,
                       ciudad = c.ciudad.ciudad1,
                   };
        }

        public String findEntity(int id)
        {
            ORMDataContext BD = new ORMDataContext();

            ente_salud ent = (from per in BD.ente_salud
                               where per.representante == id.ToString()
                               select per).FirstOrDefault();

            String repre = ent.representante;

            return repre;
        }
    }
}

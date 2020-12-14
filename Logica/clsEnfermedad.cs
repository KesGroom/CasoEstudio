using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsEnfermedad
    {
        public Object ConsultarTodos()
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.enfermedad
                   select new
                   {
                       nombre = per.nombre,
                       id_sintoma = per.id_enfermedad,
                       desc = per.descripcion,
                   }
                   ;
        }

        public String obtenerDescripcion(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            
            enfermedad enfe = (from per in BD.enfermedad
                               where per.id_enfermedad == id
                               select per).FirstOrDefault();

            String descp = enfe.descripcion;

            return descp;
        }
    }
}

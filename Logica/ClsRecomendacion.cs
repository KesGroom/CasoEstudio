using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsRecomendacion
    {
        public Object ConsultarTodos(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.recomendacion
                   where per.id_enfermedad == id
                   select new
                   {
                       nmb = per.recomendacion_texto,
                   }
                   ;
        }
    }
}

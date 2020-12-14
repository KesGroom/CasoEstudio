using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsSintoma
    {
        public Object ConsultarTodos(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.enfermedad_sintoma
                   where per.id_enfermedad == id
                   select new
                   {
                       sin = per.sintoma.sintoma_texto,
                   }
                   ;
        }
    }
}

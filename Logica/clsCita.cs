using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class clsCita
    {
        public void AsignarCita(int id, string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            string mensaje = string.Empty;

            cita citAgendar = (from per in BD.cita
                               where per.id_cita == id
                               select per).FirstOrDefault();
            citAgendar.id_persona = id_persona;

            BD.SubmitChanges();


        }
        //lita  de lo que ve el especialista
        public Object MisCitasEspecialista(string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.cita

                   where per.id_especialista == int.Parse(id_persona)
                   select new
                   {
                       cita = per.id_cita,
                       hora = per.hora_cita,
                       Dia = per.fecha_cita

                   }
                   ;

        }

        public void FinalidadCita(int id_cita)
        {
            ORMDataContext BD = new ORMDataContext();
            var citaf = from per in BD.cita
                        where per.id_cita == id_cita
                        select per;
            cita objCita = new cita();
            foreach (var item in citaf)
            {
                objCita.id_cita = id_cita + 600;
                objCita.id_persona = item.id_persona;
                objCita.id_especialista = item.id_especialista;
                objCita.fecha_cita = item.fecha_cita;
                objCita.hora_cita = item.hora_cita;
                objCita.calificacion = item.calificacion;

            }


            BD.cita.InsertOnSubmit(objCita);//Insertar


            cita citaR = (from per in BD.cita
                          where per.id_cita == id_cita
                          select per).FirstOrDefault();
            citaR.id_persona = null;

            BD.SubmitChanges();

        }
        //lita  de lo que ve la persona (el que aplico la cita) para calificar
        public Object findNotNote(string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.cita

                   where per.id_persona == id_persona
                   where per.calificacion == null
                   select new
                   {
                       id = per.id_cita,
                       hora = per.hora_cita,
                       dia = per.fecha_cita,
                       especialidad = per.especialista.especialidad,
                       entidad = per.especialista.ente_salud.razon_social,
                       espe = per.especialista.persona.nombre + " " + per.especialista.persona.apellido,
                       city = per.especialista.ente_salud.ciudad.ciudad1,
                   }
                   ;

        }
        public Object findNote(string id_persona)
        {
            ORMDataContext BD = new ORMDataContext();
            return from per in BD.cita

                   where per.id_persona == id_persona
                   where per.calificacion != null
                   select new
                   {
                       id = per.id_cita,
                       hora = per.hora_cita,
                       dia = per.fecha_cita,
                       especialidad = per.especialista.especialidad,
                       entidad = per.especialista.ente_salud.razon_social,
                       espe = per.especialista.persona.nombre + " " + per.especialista.persona.apellido,
                       city = per.especialista.ente_salud.ciudad.ciudad1,
                       cal = per.calificacion,
                   }
                   ;

        }
        public void calificar(int id_cita, string calificacion)
        {
            ORMDataContext BD = new ORMDataContext();

            cita citCalificar = (from per in BD.cita
                                 where per.id_cita == id_cita
                                 select per).FirstOrDefault();
            citCalificar.id_cita = id_cita;
            citCalificar.calificacion = int.Parse(calificacion);
            BD.SubmitChanges();


        }

        public void register(cita citaObject)
        {
            ORMDataContext BD = new ORMDataContext();
            BD.cita.InsertOnSubmit(citaObject);
            BD.SubmitChanges();

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace ProyectoBL
{
    public class validacionBL
    {
        public String validaFecha(DateTime fecha) {
            String mensaje = "";
            string anio = string.Format("{0:yyyy}", fecha);
            if (DateTime.IsLeapYear(int.Parse(anio)))
                mensaje = "El año, " + anio + " SI es Bisiesto";
            else
                mensaje = "El año, " + anio + " NO es Bisiesto";
            return mensaje;
        }

        public String validaNumeroPrimo(int numero) {
            String mensaje = "";
            int contador = 0;
            for (int i = 1; i <=numero; i++) {
                if (numero % i == 0)
                    contador++;

                if (contador != 2)
                    mensaje = "El numero NO es Primo";
                else
                    mensaje = "El numero SI es Primo";
            }
            return mensaje; 
        }

        public String vocalesRepetidas(String palabra) {
            String mensaje = "";
            string varpalabra = palabra;
         
            var result = from a in varpalabra.ToUpper().ToCharArray().Where(c =>EsVocal(c))
                         group a by a into g
                         select new
                         {
                             Letra = g.Key,
                             Repeticiones = g.Count()
                         };
            foreach (var item in result)
            {
                mensaje += (string.Format("El caracter {0} aparece {1} veces,", item.Letra, item.Repeticiones));
            }
            return mensaje;
        }

        private bool EsVocal(char c)
        {
            c = Char.ToLower(c);
            return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
        }

        public String validaemail(String email) {
            String mensaje = "";
            Regex rg = new Regex(@"\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
            if (!rg.IsMatch(email))
                mensaje = "Formato Invalido";
            else
                mensaje = "Formato Valido";
            return mensaje;
        }
    }
}

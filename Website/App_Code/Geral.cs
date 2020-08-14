using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website
{
    public class Geral
    {
        public static void GravarEx(Exception ex)
        {
            // Grava no arquivo de log a exceção
            string caminho = HttpContext.Current.Server.MapPath("~/log/log.txt");
            string linha = DateTime.Now.ToString() + " - " + ex.Message + "\r\n";

            System.IO.File.AppendAllText(caminho, linha);
        }
    }
}
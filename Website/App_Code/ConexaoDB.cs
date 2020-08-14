using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website
{
    public class ConexaoDB
    {
        private string conexao;
        private AppDatabase.OleDBTransaction db;

        public ConexaoDB()
        {
            // String conexão com o banco de dados ADSDB.accdb
            conexao = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" +
                HttpContext.Current.Server.MapPath("~/App_Data/BDSI.accdb") + ";Persist Security Info=False;";
        }

        /// <summary>
        /// Retorna uma instância da classe de transação conectada com o banco de dados.
        /// </summary>
        /// <returns></returns>
        public AppDatabase.OleDBTransaction GetConnection()
        {
            db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            return db;
        }
    }   // fecha a classe
}   // fecha o namespace
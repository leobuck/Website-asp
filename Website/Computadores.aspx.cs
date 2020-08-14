using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Website
{
    public partial class Computadores : System.Web.UI.Page
    {
        private AppDatabase.OleDBTransaction db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibirComputadores();
            }
        }

        // 1. SELECIONA TODOS OS REGISTROS DA TABELA PARA EXIBIR NO GRID 
        protected void ExibirComputadores()
        {
            string sql = "SELECT Codigo,Nome,Endereco FROM Computadores ORDER BY Nome;";
            // faz a conexão e envia o comando SQL
            db = new ConexaoDB().GetConnection();
            DataTable tb = (DataTable)db.Query(sql);
            ListaComputadores.DataSource = tb;
            ListaComputadores.DataBind();
        }

        // MÉTODO QUE SELECIONA UM ITEM DO GRID PARA EDIÇÃO
        protected void ListaComputadores_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Value = ListaComputadores.SelectedRow.Cells[1].Text;

            string sql = "SELECT * FROM Computadores WHERE Codigo=" + Codigo.Value;
            // faz a conexão e envia o comando SQL
            db = new ConexaoDB().GetConnection();
            DataTable tb = (DataTable)db.Query(sql);
            if (tb.Rows.Count == 1)
            {
                Endereco.Text = tb.Rows[0]["Endereco"].ToString();
                Nome.Text = tb.Rows[0]["Nome"].ToString();
                Descricao.Text = tb.Rows[0]["Descricao"].ToString();
                Excluir.Visible = true;
            }
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            string sql = "";
            if (Codigo.Value == "")
            {
                sql = "INSERT INTO Computadores(Nome, Endereco, Descricao) VALUES('" + Nome.Text + "', '" + Endereco.Text + "','" + Descricao.Text + "');";
            } else
            {
                sql = "UPDATE Computadores SET Nome = '" + Nome.Text + "', Endereco = '" + Endereco.Text + "', Descricao = '" + Descricao.Text + "' WHERE Codigo = " + Codigo.Value + ";";
            }
            

            // CONECTA NO BANCO DE DADOS
            db = new ConexaoDB().GetConnection();
            db.Query(sql);
            LimparControles();
        }

        // REMOVE OS VALORES DOS CONTROLES DEPOIS DE PRESSIONADO SALVAR
        // E RECARREGA O GRID COM OS VALORES DA TABELA DO BANCO DE DADOS
        protected void LimparControles()
        {
            Codigo.Value = "";
            Nome.Text = "";
            Endereco.Text = "";
            Descricao.Text = "";
            Excluir.Visible = false;
            ExibirComputadores();
        }

        protected void Excluir_Click(object sender, EventArgs e)
        {
            string sql = "DELETE FROM Computadores WHERE Codigo = " + Codigo.Value;

            // CONECTA NO BANCO DE DADOS
            db = new ConexaoDB().GetConnection();
            db.Query(sql);
            LimparControles();

        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class Monitor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ExecutaPing();
        }

        protected AppDatabase.OleDBTransaction db;

        protected void ExecutaPing()
        {
            string sql = "SELECT Nome, Endereco FROM Computadores ORDER BY Nome";
            db = new ConexaoDB().GetConnection();
            DataTable tb = (DataTable)db.Query(sql);
            Computadores.DataSource = tb;
            Computadores.DataBind();
        }

        protected void Computadores_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView row = (DataRowView)e.Item.DataItem;
                Label Nome = (Label)e.Item.FindControl("Nome");
                Nome.Text = row["Nome"].ToString();
                Label Resultado = (Label)e.Item.FindControl("Resultado");
                try
                {
                    Ping pingSender = new Ping();
                    PingReply reply = pingSender.Send(row["Endereco"].ToString());

                    Resultado.Text = "Endereço IP: " + reply.Address.ToString() + "<br/>";
                    Resultado.Text += "Tempo de ida e volta: " + reply.RoundtripTime.ToString() + "<br/>";
                }
                catch (Exception)
                {
                    Resultado.Text = "FALHOU";
                    Resultado.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
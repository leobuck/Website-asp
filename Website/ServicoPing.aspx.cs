using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// PACOTE COM O SERVIÇO PING
using System.Net.NetworkInformation;


namespace Website
{
    public partial class ServicoPing : System.Web.UI.Page
    {
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Enviar_Click(object sender, EventArgs e)
		{
            try
            {
                Ping pingSender = new Ping();
                PingReply reply = pingSender.Send(Endereco.Text);

                Resultado.Text = Endereco.Text + "\r\n";
                Resultado.Text += "Endereço IP: " + reply.Address.ToString() + "\r\n";
                Resultado.Text += "Tempo de ida e volta: " + reply.RoundtripTime.ToString() + "\r\n";
                Resultado.Text += "Tamanho do buffer: " + reply.Buffer.Length.ToString() + "\r\n";
            }
            catch (Exception ex)
            {
                Geral.GravarEx(ex);
                Erro.Text = "Erro";
            }
		}
    }
}
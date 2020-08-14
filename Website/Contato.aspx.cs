using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// NECESSÁRIO PARA ENVIAR EMAIL
using System.Net;
using System.Net.Mail;

namespace Website
{
	public partial class Contato : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Enviar_Click(object sender, EventArgs e)
		{

            try
            {
				// ESTE CÓDIGO SERÁ EXECUTADO QUANDO CLICADO NO BOTÃO ENVIAR
				SmtpClient smtp = new SmtpClient();
				MailMessage email = new MailMessage();

				// CRIA A MENSAGEM DO EMAIL
				email.IsBodyHtml = false;
				email.Subject = "Fale Conosco";
				email.To.Add("contato@seudominio.com.br");
				email.Body = Nome.Text + "\n" + Email.Text + "\n" + Mensagem.Text;
				MailAddress from = new MailAddress("contato@seudominio.com.br");
				email.From = from;

				// AUTENTICAÇÃO NO SERVIDOR SMTP
				smtp.Host = "smtp.seudominio.com.br";
				smtp.Port = 587;
				smtp.EnableSsl = false;
				smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "sua senha");

				// ENVIA o email
				smtp.Send(email);
            }
            catch (Exception ex)
            {
                Geral.GravarEx(ex);               
                Msg.Text = "Houve uma falha ao enviar o e-mail!";
            }
        }
	}
}
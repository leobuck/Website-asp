<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Website.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
			<div class="body-content">
					<h1>Fale Conosco</h1>
					<!-- FORMULÁRIO DE ENTRADA -->
					<div class="box">
									<div class="box-padding">
                                            <div class="erro">
                                                <asp:Label ID="Msg" runat="server"></asp:Label>
                                            </div>
												
												<br />
												<br />
												SEU NOME
												<br />
												<asp:TextBox ID="Nome" runat="server"></asp:TextBox>
												<br />
												<br />
												EMAIL
												<br />
												<asp:TextBox ID="Email" runat="server"></asp:TextBox>
												<br />
												<br />
												MENSAGEM
												<br />
												<asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
												<br />
												<br />
												<asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
									</div>
						</div>
						<!--		MAPA DA MINA -->
						<div class="box" style="float: right;">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.6893715244396!2d-47.35252258534867!3d-22.739784237649378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec+Americana!5e0!3m2!1spt-BR!2sbr!4v1535498235167" width="100%" height="100%" frameborder="0" style="border: 0" allowfullscreen></iframe>
						</div>
                <div class="clearfix"></div>
			</div>
</asp:Content>

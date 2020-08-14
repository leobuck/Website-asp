<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="ServicoPing.aspx.cs" Inherits="Website.ServicoPing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
			<div class="box-padding">
						<h1>SERVIÇO PING</h1>
						<br />
                        <asp:Label ID="Erro" BackColor="red" runat="server"></asp:Label>
						<br />
						ENDEREÇO
						<br />
						<asp:TextBox ID="Endereco" runat="server"></asp:TextBox>
						<br />
						<br />
						<asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
						<br />
						<br />
						<asp:TextBox ID="Resultado" ReadOnly="true" TextMode="MultiLine" Rows="8" runat="server"></asp:TextBox>


			</div>
</asp:Content>

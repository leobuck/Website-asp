<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="Website.Noticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-content">
        <h1 class="titulo">Notícias</h1>
        <div class="conteudo-texto">
            <div class="topico-imagem">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/psi.png" />
            </div>
            <h2 class="titulo">Brasil ocupa o 9º lugar nos investimentos em Tecnologia da Informação</h2>
            <p>País investiu 38 bilhões de dólares em hardwares, softwares e serviços no ano passado, aumento de 4,5% em relação a 2016</p>
        </div>
        
        <div class="conteudo-texto">
            <div class="topico-imagem">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/psi.png" />
            </div>
            <h2 class="titulo">C&A é hackeada e vazam dados pessoais de clientes</h2>
            <p>Hackers invadiram o sistema de compra, bloqueio e extrato do "Cartão Presente" da C&A. Entre os dados de clientes vazados, estão: número do cartão, CPF, email, valor adquirido como presente, email do funcionário que fez a transação, número do pedido e data da compra.</p>
        </div>

        <div class="conteudo-texto">
            <div class="topico-imagem">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/psi.png" />
            </div>
            <h2 class="titulo">McAfee identifica problemas de segurança na Cortana do Windows, no Google Play e no blockchain</h2>
            <p>Número de malwares projetados para explorar vulnerabilidades corrigíveis com patches aumentou 151%.</p>
        </div>
    </div>
</asp:Content>

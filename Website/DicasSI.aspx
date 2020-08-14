<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="DicasSI.aspx.cs" Inherits="Website.DicasSI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-content">
        <h1 class="titulo">Conceitos de Segurança da Informação</h1>
           
        <div class="conteudo-texto">
            <div class="topico-imagem">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/psi.png" />
            </div>
            <h2>Políticas de Segurança da Informação</h2>
            <p>
                A política de segurança da informação (PSI) é o conjunto de ações, técnicas e boas práticas relacionadas ao uso 
                seguro de dados. Ou seja, trata-se de um documento ou manual que determina as ações mais importantes para garantir a 
                segurança da informação.
            </p>
        </div>
        <div class="conteudo-texto">
            <div class="topico-imagem">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/certificado.png" />
            </div>
            <h2>Certificado Digital</h2>
            <p>
                O certificado digital é a identidade de uma pessoa física ou jurídica, sendo também utilizado como assinatura de 
                documentos digitais, como contratos e notas fiscais eletrônicas. Nesse último caso, o órgão fiscalizador 
                (prefeituras ou estados) vai apurar se as informações são corretas e verídicas. 
            </p>
            <p>
                Por exemplo, se você emitir uma nota fiscal de serviço, precisará confirmar as informações transmitidas à prefeitura
                para que ela possa validá-las. Essa é uma exigência da maioria dos municípios.
            </p>
            <p>
                O certificado é um dispositivo que garante segurança e integridade dos dados na hora de emitir a sua nota fiscal 
                eletrônica. É importante ressaltar que não são todas as prefeituras que exigem o certificado digital, mas essa é a 
                realidade em grande parte delas.
            </p>
        </div>
        <div class="conteudo-texto">
            <div class="topico-imagem">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/pentest.png" />
            </div>
            <h2>Pentest</h2>
            <p>
                O termo PenTest é derivado de Penetration Test, em português a melhor tradução seria Testes de Intrusão ou de Invasão.
            </p>
            <p>
                O PenTest é um conjunto de técnicas e ferramentas utilizadas para identificar falhas de segurança em sistemas e 
                redes corporativas. Através dessas técnicas, o profissional Pentester irá identificar as vulnerabilidades existentes
                na arquitetura da empresa, explorá-las e entregar um relatório à empresa, que deverá então tomar as devidas ações para
                corrigir as falhas de segurança.
            </p>
        </div>
    </div>
</asp:Content>

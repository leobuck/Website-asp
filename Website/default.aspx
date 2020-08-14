<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Website._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cabecalho-site">
        <h1>L&L Consultoria em TI</h1>
    </div>

    <div class="flexslider">
	    <ul class="slides">
			<li>
				<asp:Image ID="Image1" ImageUrl="~/images/placamae.jpg" runat="server" />
			</li>
			<li>
				<asp:Image ID="Image2" ImageUrl="~/images/rede.jpg" runat="server" />
			</li>
			<li>
				<asp:Image ID="Image3" ImageUrl="~/images/codigo.jpg" runat="server" />
			</li>
	    </ul>
    </div>

    <div class="body-content">
        <div class="conteudo-borda">
            <p>SEGURANÇA DA INFORMAÇÃO</p>
        </div>
        <div class="conteudo-borda">
            <p>CONSULTORIA EM TI</p>
        </div>
        <div class="conteudo-borda">
            <p>SERVIÇOS EM TI</p>
        </div>
    </div>

    <div class="clearfix"></div>

    <script type="text/javascript">
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide"
			});
		});
    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="Computadores.aspx.cs" Inherits="Website.Computadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding-30px">
        <div class="row">
            <!-- PANEL INPUT -->
            <div class="col-6">
                <div class="box-padding">

                    <asp:HiddenField ID="Codigo" runat="server" />

                    <h1>COMPUTADOR</h1>
                    <br />
                    <br />
                    NOME DO COMPUTADOR<br />
                    <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    ENDEREÇO<br />
                    <asp:TextBox ID="Endereco" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    DESCRIÇÃO<br />
                    <asp:TextBox ID="Descricao" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" />

                    <asp:Button ID="Excluir" Visible="false" OnClick="Excluir_Click" runat="server" Text="Excluir" />

                    <br />
                    <br />
                </div>
            </div>
            <!-- PANEL VIEW -->
            <div class="col-6">
               <div class="box-padding">
                                     
                   <asp:GridView ID="ListaComputadores" AutoGenerateColumns="true" AutoGenerateSelectButton="true" 
                       OnSelectedIndexChanged="ListaComputadores_SelectedIndexChanged" Width="100%" 
                       CellPadding="8" HeaderStyle-BackColor="#DFDFDF" runat="server">
                   </asp:GridView>
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>

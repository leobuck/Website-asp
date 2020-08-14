<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Website.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-content">
        <h1 class="titulo">Clientes</h1>
         <p>Conheça nossos clientes:</p>
        <ul class="clientes">
            <li>
                <asp:Image ID="Image1" ImageUrl="~/images/cliente1.png" runat="server" />    
            </li>
            <li>
                <asp:Image ID="Image2" ImageUrl="~/images/cliente2.png" runat="server" />    
            </li>
            <li>
                <asp:Image ID="Image3" ImageUrl="~/images/cliente3.png" runat="server" />    
            </li>
            <li>
                <asp:Image ID="Image4" ImageUrl="~/images/cliente4.png" runat="server" />    
            </li>
            <li>
                <asp:Image ID="Image5" ImageUrl="~/images/cliente5.png" runat="server" />    
            </li>
            <li>
                <asp:Image ID="Image6" ImageUrl="~/images/cliente6.png" runat="server" />    
            </li>
            
        </ul>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/website.Master" AutoEventWireup="true" CodeBehind="Monitor.aspx.cs" Inherits="Website.Monitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:repeater ID="Computadores" OnItemDataBound="Computadores_ItemDataBound" runat="server">
        <ItemTemplate>
            <asp:Label ID="Nome" runat="server" Font-Bold="true" Font-Size="20px"></asp:Label>
            <br />
            <asp:Label ID="Resultado" runat="server"></asp:Label>
            <hr />
        </ItemTemplate>
    </asp:repeater>
</asp:Content>

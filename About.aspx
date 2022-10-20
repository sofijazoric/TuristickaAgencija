<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TuristickaAgencija.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Prikaz podataka</h2>

    <asp:Label ID="lblPrikaz" runat="server" Text="Selektujte grad: "></asp:Label>
    <asp:DropDownList ID="ddlMesto" runat="server"> </asp:DropDownList>

</asp:Content>

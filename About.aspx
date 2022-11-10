<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TuristickaAgencija.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Prikaz podataka</h2>

    <p> Unesite JMBG putnika: </p>
    <asp:TextBox ID="txtJMBG" runat="server"> </asp:TextBox>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuristickaAgencijaConnectionString %>" SelectCommand="SELECT * FROM [Mesto]"></asp:SqlDataSource>

</asp:Content>

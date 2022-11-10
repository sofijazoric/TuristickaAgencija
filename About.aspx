<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TuristickaAgencija.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Prikaz podataka</h2>

    <p> Unesite JMBG putnika: </p>
    <asp:TextBox ID="txtJMBG" runat="server"> </asp:TextBox>
   
    <br />
    <asp:Button ID="btnTrazi" runat="server" Text="Trazi" OnClick="btnTrazi_Click" />
    <br />

    Ime: <asp:Label ID="lblIme" runat="server" Text=""></asp:Label>
    Prezime: <asp:Label ID="lblPrezime" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuristickaAgencijaConnectionString %>" SelectCommand="SELECT * FROM [Mesto]"></asp:SqlDataSource>

</asp:Content>

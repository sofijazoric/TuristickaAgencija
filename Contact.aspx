<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TuristickaAgencija.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
    <h2>Prikaz mesta</h2>

    
    <p> Izaberite mesto: </p>
    <asp:DropDownList ID="ddlMesto" runat="server"></asp:DropDownList>

    <asp:Button ID="btnTrazi" runat="server" Text="Trazi" OnClick="btnTrazi_Click" />
    <br /> <br />

    <table style="text-align: left;">
        <tr>
            <td>Ime: </td>
            <td class="boja"> <asp:Label ID="lblIme" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Prezime:  </td>
            <td class="boja"> <asp:Label ID="lblPrezime" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Datum polaska: </td>
            <td class="boja"> <asp:Label ID="lblPolazak" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Datum dolaska:  </td>
            <td class="boja"> <asp:Label ID="lblDolazak" runat="server" Text=""></asp:Label></td>
        </tr>
    </table></div>

    <link href="style.css" rel="stylesheet" />
</asp:Content>

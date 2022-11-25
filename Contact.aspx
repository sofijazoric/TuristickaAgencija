<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TuristickaAgencija.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
    <h1>Prikaz mesta</h1>

    
    <p> Izaberite mesto: </p>
    <asp:DropDownList ID="ddlMesto" runat="server"></asp:DropDownList>

    <asp:Button ID="btnTrazi" runat="server" Text="Trazi" OnClick="btnTrazi_Click" />
    <br /> <br />

    <table style="text-align: center;">
        <tr>
            <td>Ime: </td>
            <td> <asp:Label ID="lblIme" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Prezime:  </td>
            <td> <asp:Label ID="lblPrezime" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Datum polaska: </td>
            <td> <asp:Label ID="lblPolazak" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>Datum dolaska:  </td>
            <td> <asp:Label ID="lblDolazak" runat="server" Text=""></asp:Label></td>
        </tr>
    </table></div>
</asp:Content>

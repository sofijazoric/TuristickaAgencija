<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TuristickaAgencija._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="text-align: center;">
        <h1>Turisticka agencija</h1>
</div>
    <div style="text-align: center;">
        <table style="text-align: center;">
        <tr>
            <td> <asp:Label ID="lblJMBG" runat="server" Text="Unesite JMBG:"></asp:Label> </td>
            <td> <asp:TextBox ID="txtJMBG" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Label ID="lblIme" runat="server" Text="Unesite ime:"></asp:Label> </td>
            <td> <asp:TextBox ID="txtIme" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Label ID="lblPrezime" runat="server" Text="Unesite prezime:"></asp:Label> </td>
            <td> <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox></td>
        </tr>

    </table>
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnUnesi" runat="server" Text="Unesi" OnClick="btnUnesi_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TuristickaAgencijaConnectionString %>" SelectCommand="SELECT * FROM [Putnik]"></asp:SqlDataSource>
        </div>
</asp:Content>


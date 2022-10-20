<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TuristickaAgencija._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Turisticka agencija</h1>
</div>

    <table>
        <tr>
            <td> <asp:Label ID="lblJMBG" runat="server" Text="Label"></asp:Label> </td>
            <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </td>
            <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </td>
            <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>

    </table>
    <asp:Button ID="btnUnesi" runat="server" Text="Unesi" OnClick="btnUnesi_Click" />

</asp:Content>

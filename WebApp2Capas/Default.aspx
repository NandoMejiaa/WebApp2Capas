<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp2Capas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <div class="Row">
        <div class="cold-md-4">
                <p>Ingrese Fecha para validar si es Bisiesto</p>
                &nbsp;
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                <asp:Button ID="btnValidaFecha" runat="server" OnClick="Button1_Click" Text="Validar Fecha" Width="101px" />
                <asp:Label ID="lblfecha" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div>
    <div class="Row">
            <div class="cold-md-4">
                <p>Ingrese Numero para validar si es Primo</p>
                &nbsp;<asp:TextBox ID="txtNumeroPrimo" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnValidaNumeroPrimo" runat="server" OnClick="btnValidaNumeroPrimo_Click" Text="Validar Numero" />
                <asp:Label ID="lblnumeroprimo" runat="server" ForeColor="#0000CC"></asp:Label>
            </div>
    </div>
    <div class="Row">
            <div class="cold-md-4">
                <p>Ingrese Texto para validar el numero de vocales repetidos</p>
                &nbsp;<asp:TextBox ID="txtPalabra" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnValidaLetrasRepetidas" runat="server" OnClick="btnValidaLetrasRepetidas_Click" Text="Validar Letras Repetidas" />
                <asp:Label ID="lblvocalesrepetidas" runat="server" ForeColor="#00CC00"></asp:Label>
            </div>
    </div>
    <div class="Row">
            <div class="cold-md-4">
                <p>Ingrese Texto para validar el correo</p>
                &nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnValidaEmail" runat="server" OnClick="btnValidaEmail_Click" Text="Valida Email" />
                <asp:Label ID="lblemail" runat="server" ForeColor="#FF6600"></asp:Label>
            </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="dashPersona.aspx.cs" Inherits="CentroSalud.dashPersona" %>

<asp:Content ContentPlaceHolderID="lateral" runat="server">
    <a href="Index.aspx" class="btn-RVS ms-2 displayRowCC"><i class="fas fa-power-off me-2"></i>Cerrar Sesión</a>
</asp:Content>
<asp:Content ContentPlaceHolderID="content" runat="server">
    <div style="width: 100%; padding: 0.5rem 2.5rem;" class="displayRowSbC">

        <a href="SolicitarCita.aspx" target="station" class="btn-RVS displayRowCC"><i class="fas fa-calendar-plus me-2"></i>Solicitar cita</a>
        <a href="HistorialCita.aspx" target="station" class="btn-RVS displayRowCC"><i class="fas fa-calendar-check me-2"></i>Historial de citas</a>
        <div class="displayRowCC">
            <i class="fas fa-user"></i>
            <asp:Label CssClass="ms-2" runat="server" ID="LblBienvenido"></asp:Label>
        </div>
    </div>
        <iframe name="station" src="SolicitarCita.aspx" class="mt-3 mb-3" style=" width: 100%; height: 77vh;"></iframe>

</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="dashRepresentante.aspx.cs" Inherits="CentroSalud.dashRepresentante" %>

<asp:Content ContentPlaceHolderID="lateral" runat="server">
    <a href="Index.aspx" class="btn-RVS ms-2 displayRowCC"><i class="fas fa-power-off me-2"></i>Cerrar Sesión</a>
</asp:Content>
<asp:Content ContentPlaceHolderID="content" runat="server">
    <div style="width: 100%; padding: 0.5rem 2.5rem;" class="displayRowSbC">
        <a href="Especialista.aspx" target="station" class="btn-RVS displayRowCC"><i class="fas fa-hospital-user me-2"></i>Registrar especialistas</a>
        <div class="displayRowCC">
            <i class="fas fa-user"></i>
            <asp:Label CssClass="ms-2" runat="server" ID="LblBienvenido"></asp:Label>
        </div>
    </div>
        <iframe name="station" src="Especialista.aspx" class="mt-3 mb-3" style=" width: 100%; height: 77vh;"></iframe>

</asp:Content>

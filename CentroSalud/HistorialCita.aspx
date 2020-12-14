<%@ Page Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="HistorialCita.aspx.cs" Inherits="CentroSalud.HistorialCita" %>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <div class="container mb-4">
        <form runat="server">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <asp:GridView CssClass="table" ID="GvCitas" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="dia" HeaderText="Fecha" />
                            <asp:BoundField DataField="hora" HeaderText="Hora" />
                            <asp:BoundField DataField="espe" HeaderText="Especialista" />
                            <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />
                            <asp:BoundField DataField="entidad" HeaderText="Entidad de salud" />
                            <asp:BoundField DataField="city" HeaderText="Ciudad" />
                            <asp:BoundField DataField="cal" HeaderText="Calificación" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

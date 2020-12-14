<%@ Page Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="EntidadesAdmin.aspx.cs" Inherits="CentroSalud.EntidadesAdmin" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container mb-3">
        <form runat="server">
            <div class="row justify-content-between">
                <div class="col-md-12 mb-3">
                    <div class="card">
                        <div class="card-header">
                            <div class=" row justify-content-between displayRowCC">
                                <div class="col-md-2">
                                    <div class="card-text">Asignar entidad</div>
                                </div>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <span class="input-group-text border-success" id="entidad-8"><i class="fas fa-user-md"></i></span>
                                        <asp:DropDownList ID="ddlEspecialistas" aria-describedby="entidad-8" runat="server" CssClass="form-control border-success"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <span class="input-group-text border-success" id="entidad-9"><i class="fas fa-hospital"></i></span>
                                        <asp:DropDownList ID="ddlEntidad" aria-describedby="entidad-9" runat="server" CssClass="form-control border-success">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <asp:Button ID="btnAsign" CssClass="btn-RVS" runat="server" Text="Asignar >" OnClick="btnAsign_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <asp:GridView CssClass="table" ID="GvEntidades" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="nit" HeaderText="NIT" />
                            <asp:BoundField DataField="razon" HeaderText="Razón social" />
                            <asp:BoundField DataField="repre" HeaderText="Representante" />
                            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                            <asp:BoundField DataField="capacidad" HeaderText="Capacidad" />
                            <asp:BoundField DataField="sitio" HeaderText="Sitio web" />
                            <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-md-5">
                    <asp:GridView CssClass="table" ID="GvEspecialistas" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Identificación" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre completo" />
                            <asp:BoundField DataField="espe" HeaderText="Especialidad" />
                            <asp:BoundField DataField="entidad" HeaderText="Entidad de salud" />
                            <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

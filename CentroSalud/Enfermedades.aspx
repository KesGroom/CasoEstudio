<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Enfermedades.aspx.cs" Inherits="CentroSalud.Enfermedades" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container mt-4">
        <form runat="server">
            <div class="row justify-content-between">
                <div class="col-md-4">
                    <div class="card border-success">
                        <div class="card-header bg-success text-light">
                            Enfermedades registradas
                        </div>
                        <div class="card-body">
                            <div class="input-group mt-1">
                                <span class="input-group-text border-success"><i class="fas fa-disease"></i></span>
                                <asp:DropDownList ID="ddlEnfermedad" runat="server" CssClass="form-control border-success">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="card-footer border-success text-end">
                            <asp:Button ID="btnCita" CssClass="btn-RVS" runat="server" Text="Consultar información >" OnClick="btnConsultar_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card border-success">
                        <div class="card-header bg-success text-light">
                            Información obtenida
                        </div>
                        <div class="card-body">
                            <div class="card border-success">
                                <div class="card-header border-success">
                                    Descripción: <asp:Label ID="TextDescription" runat="server"></asp:Label>
                                </div>
                                <div class="row justify-content-between">
                                    <div class="col-md-6">
                                        <asp:GridView CssClass="table" ID="GvSintoma" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="sin" HeaderText="Sintomas" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:GridView CssClass="table" ID="GvRecomendacion" runat="server" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="nmb" HeaderText="Recomendaciones" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

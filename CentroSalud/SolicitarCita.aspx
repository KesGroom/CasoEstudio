<%@ Page Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="SolicitarCita.aspx.cs" Inherits="CentroSalud.SolicitarCita" %>

<asp:Content ContentPlaceHolderID="content" runat="server">
    <div class="container mb-4">
        <form runat="server">
            <div class="row justify-content-between">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card border-success">
                                <div class="card-header bg-success text-light">
                                    Solicitar citas
                                </div>
                                <div class="card-body">
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-calendar-day"></i></span>
                                        <asp:TextBox ID="TextFecha" runat="server" type="date" placeholder="Fecha cita" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-clock"></i></span>
                                        <asp:TextBox ID="TextHora" runat="server" type="time" placeholder="Hora cita" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text border-success"><i class="fas fa-user-md"></i></span>
                                        <asp:DropDownList ID="ddlEspecialista" runat="server" CssClass="form-control border-success">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="card-footer border-success text-end">
                                    <asp:Button ID="btnCita" CssClass="btn-RVS" runat="server" Text="Solicitar >" OnClick="btnSolicitar_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 mt-2">
                            <div class="card border-success">
                                <div class="card-header bg-success text-light">
                                    Calificar citas (Debe seleccionar una cita primero)
                                </div>
                                <div class="card-body">
                                    <div class="input-group mt-1">
                                        <span class="input-group-text  border-success"><i class="fas fa-hashtag"></i></span>
                                        <asp:TextBox ID="TextCita" ReadOnly="true" runat="server" placeholder="ID de la cita" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text border-success"><i class="fas fa-smile"></i></span>
                                        <asp:DropDownList ID="ddlCalificacion" runat="server" CssClass="form-control border-success">
                                            <asp:ListItem Value="1" Text="☻ ☺ ☺ ☺ ☺"></asp:ListItem>
                                            <asp:ListItem Value="2" Text="☻ ☻ ☺ ☺ ☺"></asp:ListItem>
                                            <asp:ListItem Value="3" Text="☻ ☻ ☻ ☺ ☺"></asp:ListItem>
                                            <asp:ListItem Value="4" Text="☻ ☻ ☻ ☻ ☺"></asp:ListItem>
                                            <asp:ListItem Value="5" Text="☻ ☻ ☻ ☻ ☻"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="card-footer border-success text-end">
                                    <asp:Button ID="BtnCalificar" CssClass="btn-RVS" runat="server" Text="Registrar calificación >" OnClick="btnCalificar_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-7">
                    <asp:GridView CssClass="table" ID="GvCitas" runat="server" AutoGenerateColumns="False" OnRowCommand="GvCitas_RowCommand1">
                        <Columns>
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button runat="server" Text="Calificar" CssClass="btn-RVS" CommandName="Calificar" ID="btnCalificar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="dia" HeaderText="Fecha" />
                            <asp:BoundField DataField="hora" HeaderText="Hora" />
                            <asp:BoundField DataField="espe" HeaderText="Especialista" />
                            <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />
                            <asp:BoundField DataField="entidad" HeaderText="Entidad de salud" />
                            <asp:BoundField DataField="city" HeaderText="Ciudad" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

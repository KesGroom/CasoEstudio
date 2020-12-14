<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="Especialista.aspx.cs" Inherits="CentroSalud.Especialista" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container mb-3">
        <form runat="server">
            <div class="row justify-content-between">
                <div class="col-md-5">
                    <div class="card border-success">
                        <div class="card-header bg-success text-light">
                            Registrar nuevo Especialista
                        </div>
                        <div class="card-body">
                            <div class="input-group">
                                <span class="input-group-text  border-success"><i class="far fa-id-card"></i></span>
                                <asp:TextBox ID="TextID" runat="server" placeholder="Número de identificación" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group mt-3">
                                <span class="input-group-text  border-success"><i class="fas fa-user"></i></span>
                                <asp:TextBox ID="TextName" runat="server" placeholder="Nombre" CssClass="form-control border-success"></asp:TextBox>
                                <asp:TextBox ID="TextLastname" runat="server" placeholder="Apellido" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group mt-3">
                                <span class="input-group-text  border-success"><i class="fas fa-envelope-open-text"></i></span>
                                <asp:TextBox ID="TextMail" runat="server" placeholder="Correo electrónico" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group mt-3">
                                <span class="input-group-text  border-success"><i class="fas fa-phone"></i></span>
                                <asp:TextBox ID="TextPhone" runat="server" placeholder="Celular" CssClass="form-control border-success"></asp:TextBox>
                            </div>

                            <div class="input-group mt-3">
                                <span class="input-group-text border-success"><i class="fas fa-lock"></i></span>
                                <asp:TextBox ID="TextPassword" type="password" CssClass="form-control border-success" placeholder="Contraseña" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="card border-success mt-2">
                        <div class="card-header bg-success text-light">
                            Datos de la especialización
                        </div>
                        <div class="card-body">
                            <div class="input-group mt-3">
                                <span class="input-group-text  border-success"><i class="fas fa-user-md"></i></span>
                                <asp:TextBox ID="TextEspcialidad" runat="server" placeholder="Especialidad" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group mt-3">
                                <span class="input-group-text  border-success"><i class="fas fa-hashtag"></i></span>
                                <asp:TextBox ID="TextNumeroLicencia" runat="server" placeholder="Número de licencia" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group mt-3">
                                <span class="input-group-text  border-success"><i class="fas fa-calendar"></i></span>
                                <asp:TextBox ID="TextFechaExpe" runat="server" type="date" placeholder="Fecha de expedición" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group mt-3" id="contEntidad">
                                <span class="input-group-text border-success" id="entidad-9"><i class="fas fa-hospital"></i></span>
                                <asp:DropDownList ID="ddlEntidad" aria-describedby="entidad-9" runat="server" CssClass="form-control border-success">
                                    <asp:ListItem Value="0" Text="Entidad no asignada" Enabled="true" Selected="True"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="input-group mt-3">
                                <span class="input-group-text border-success" id="entidad-8"><i class="fas fa-map-marked-alt"></i></span>
                                <asp:DropDownList ID="ddlCiudadEspe" aria-describedby="entidad-8" runat="server" CssClass="form-control border-success"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="card-footer border-success text-end">
                            <asp:Button ID="btnRegistrar" CssClass="btn-RVS" runat="server" Text="Registrar >" OnClick="btnRegister_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-md-7">
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

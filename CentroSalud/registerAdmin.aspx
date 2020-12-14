<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="registerAdmin.aspx.cs" Inherits="CentroSalud.registerAdmin" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <div class="container mb-3">
        <form runat="server" id="adminForm">
            <div class="row justify-content-between">
                <div class="col-md-6">
                    <asp:GridView CssClass="table" ID="GvUsuarios" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="niup" HeaderText="NIUP" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre completo" />
                            <asp:BoundField DataField="correo" HeaderText="Correo electrónico" />
                            <asp:BoundField DataField="celular" HeaderText="Celular" />
                            <asp:BoundField DataField="pass" HeaderText="Constraseña" />
                            <asp:BoundField DataField="rol" HeaderText="Rol" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-md-5">
                    <div class="card border-success">
                        <div class="card-header bg-success text-light">
                            Registrar nuevo usuario
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
                        <div class="card-footer border-success displayRowSbC">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="paciente">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Paciente
                                </label>
                            </div>
                            <asp:Button ID="btnRegister" CssClass="btn-RVS oculto" runat="server" Text="Registrar >" OnClick="btnRegister_Click" />
                        </div>
                    </div>
                    <style>
                        .nav-item a:not(.active) {
                            color: #fff;
                        }
                    </style>

                    <div class="card border-success mt-2">
                        <div class="card-header bg-success">
                            <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Entidad de salud</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Especialista</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content mt-2" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="card-body">
                                    <div class="alert alert-warning" role="alert">
                                        Para registrar el representante o generador de contenido debe ingresar los datos personales de este en el formulario de arriba.
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-hashtag"></i></span>
                                        <asp:TextBox ID="TextNIT" runat="server" placeholder="NIT" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-hashtag"></i></span>
                                        <asp:TextBox ID="TextRazonSocial" runat="server" placeholder="Razón social" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-hashtag"></i></span>
                                        <asp:TextBox ID="TextTelefono" runat="server" placeholder="Teléfono" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-hashtag"></i></span>
                                        <asp:TextBox ID="TextSitio" runat="server" placeholder="Sitio web" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text  border-success"><i class="fas fa-users"></i></span>
                                        <asp:TextBox ID="TextPacientes" runat="server" placeholder="Capacidad de pacientes" CssClass="form-control border-success"></asp:TextBox>
                                    </div>
                                    <div class="input-group mt-3">
                                        <span class="input-group-text border-success" id="entidad-7"><i class="fas fa-map-marked-alt"></i></span>
                                        <asp:DropDownList ID="ddlCiudad" aria-describedby="entidad-7" runat="server" CssClass="form-control border-success"></asp:DropDownList>
                                    </div>

                                </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="card-body">
                                    <div class="alert alert-warning" role="alert">
                                        Se puede asignar la entidad inmediatamente o realizar esta vinculación luego.
                                    </div>
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
                                    <div class="input-group mt-3">
                                        <span class="input-group-text border-success" id="entidad-10"><i class="fas fa-question-circle me-1"></i>Asignar entidad</span>
                                        <asp:DropDownList ID="ddlQuestion" aria-describedby="entidad-10" runat="server" CssClass="form-control border-success">
                                            <asp:ListItem Text="No" Value="No" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Si" Value="Si" ></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="input-group mt-3 oculto" id="contEntidad">
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

                            </div>

                        </div>
                        <div class="card-footer border-success text-end">
                            <asp:Button ID="btnEntidad" CssClass="btn-RVS" runat="server" Text="Registrar >" OnClick="btnRegister_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>

</asp:Content>
<asp:Content ContentPlaceHolderID="script" runat="server">
    <script>
        var check = document.getElementById('paciente');

        check.addEventListener('change', function () {
            document.getElementById('content_btnRegister').classList.toggle('oculto');
        });

        var ddl = document.getElementById('content_ddlQuestion');

        ddl.addEventListener('change', function () {
            if (ddl.value == 'No') {
                document.getElementById('contEntidad').classList.add('oculto');
            } else {
                document.getElementById('contEntidad').classList.remove('oculto');
            }
        });
    </script>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="Index.aspx.cs" Inherits="CentroSalud.Index" %>

<asp:Content ContentPlaceHolderID="content" runat="server">

    <form id="form1" runat="server">

        <div class="container mt-4">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <iframe src="register.aspx" style="width: 100%; height: 60vh;"></iframe>
                </div>
                
                <div class="col-md-4 offset-md-1">
                    <div class="card border-success">
                        <div class="card-header bg-success text-light">
                            Iniciar sesión
                        </div>
                        <div class="card-body">
                            <div class="input-group">
                                <span class="input-group-text  border-success"><i class="far fa-id-card"></i></span>
                                <asp:TextBox ID="TextIdentidad" runat="server" placeholder="Número de identificación" CssClass="form-control border-success"></asp:TextBox>
                            </div>
                            <div class="input-group border-success mt-3">
                                <span class="input-group-text border-success"><i class="fas fa-lock"></i></span>
                                <asp:TextBox ID="TextPass" type="password" CssClass="form-control border-success" placeholder="Contraseña" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="card-footer border-success text-end ">
                            <asp:Button ID="btnLogin" CssClass="btn-RVS" runat="server" Text="Ingresar >" OnClick="btnLogin_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</asp:Content>

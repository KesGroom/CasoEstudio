<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sites.Master" CodeBehind="register.aspx.cs" Inherits="CentroSalud.register" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <form runat="server" id="form1">
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
            <div class="card-footer border-success text-end ">
                <asp:Button ID="btnRegister" CssClass="btn-RVS" runat="server" Text="Registrar >" OnClick="btnRegister_Click" />
            </div>
        </div>
    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperacionPassword.aspx.cs" Inherits="Facturacion.Formulario_web17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Recuperacion de Contraseña</h2>

    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnSendingMail="PasswordRecovery1_SendingMail">
        <MailDefinition BodyFileName="~/Account/Email.txt" From="juanantonio_calero@hotmail.com" Subject="Recuperación de contraseña">
        </MailDefinition>
    </asp:PasswordRecovery>

</asp:Content>

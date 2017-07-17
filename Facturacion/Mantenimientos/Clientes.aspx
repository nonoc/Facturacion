<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Facturacion.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Clientes</h2>  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDCliente" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IDCliente" HeaderText="ID Cliente" ReadOnly="True" SortExpression="IDCliente" />
                <asp:BoundField DataField="NombreComercial" HeaderText="Nombre Comercial" SortExpression="NombreComercial" />
                <asp:BoundField DataField="NombresContacto" HeaderText="NombresContacto" SortExpression="NombresContacto" />
                <asp:BoundField DataField="ApellidosContacto" HeaderText="ApellidosContacto" SortExpression="ApellidosContacto" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Telefono1" HeaderText="Telefono1" SortExpression="Telefono1" />
                <asp:BoundField DataField="Telefono2" HeaderText="Telefono2" SortExpression="Telefono2" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="Notas" HeaderText="Notas" SortExpression="Notas" />
                <asp:BoundField DataField="Aniversario" HeaderText="Aniversario" SortExpression="Aniversario" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Cliente] WHERE [IDCliente] = @IDCliente" InsertCommand="INSERT INTO [Cliente] ([NombreComercial], [NombresContacto], [ApellidosContacto], [Direccion], [Telefono1], [Telefono2], [Correo], [Notas], [Aniversario]) VALUES (@NombreComercial, @NombresContacto, @ApellidosContacto, @Direccion, @Telefono1, @Telefono2, @Correo, @Notas, @Aniversario)" ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" SelectCommand="SELECT [IDCliente], [NombreComercial], [NombresContacto], [ApellidosContacto], [Direccion], [Telefono1], [Telefono2], [Correo], [Notas], [Aniversario] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [NombreComercial] = @NombreComercial, [NombresContacto] = @NombresContacto, [ApellidosContacto] = @ApellidosContacto, [Direccion] = @Direccion, [Telefono1] = @Telefono1, [Telefono2] = @Telefono2, [Correo] = @Correo, [Notas] = @Notas, [Aniversario] = @Aniversario WHERE [IDCliente] = @IDCliente">
            <DeleteParameters>
                <asp:Parameter Name="IDCliente" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NombreComercial" Type="String" />
                <asp:Parameter Name="NombresContacto" Type="String" />
                <asp:Parameter Name="ApellidosContacto" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono1" Type="String" />
                <asp:Parameter Name="Telefono2" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Notas" Type="String" />
                <asp:Parameter DbType="Date" Name="Aniversario" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NombreComercial" Type="String" />
                <asp:Parameter Name="NombresContacto" Type="String" />
                <asp:Parameter Name="ApellidosContacto" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Telefono1" Type="String" />
                <asp:Parameter Name="Telefono2" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Notas" Type="String" />
                <asp:Parameter DbType="Date" Name="Aniversario" />
                <asp:Parameter Name="IDCliente" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>

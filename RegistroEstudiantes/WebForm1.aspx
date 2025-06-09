<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegistroEstudiantes._Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
    <title>Sistema de Registro de Estudiantes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Registro de Estudiantes</h1>
            <div class="form-section">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre:" AssociatedControlID="txtNombre" />
                <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese el nombre"></asp:TextBox>

                <asp:Label ID="lblCorreo" runat="server" Text="Correo Electrónico:" AssociatedControlID="txtCorreo" />
                <asp:TextBox ID="txtCorreo" runat="server" placeholder="Ingrese el correo electrónico"></asp:TextBox>

                <asp:Label ID="lblCurso" runat="server" Text="Curso:" AssociatedControlID="txtCurso" />
                <asp:TextBox ID="txtCurso" runat="server" placeholder="Ingrese el curso"></asp:TextBox>

                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
            </div>
            <hr />
            <div class="list-section">
                <asp:GridView ID="gvEstudiantes" runat="server" AutoGenerateColumns="false" OnRowCommand="gvEstudiantes_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="CorreoElectronico" HeaderText="Correo Electrónico" />
                        <asp:BoundField DataField="Curso" HeaderText="Curso" />
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
                                    CommandName="Eliminar" CommandArgument='<%# Eval("ID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>


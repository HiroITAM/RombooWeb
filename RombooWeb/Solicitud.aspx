<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solicitud.aspx.cs" Inherits="RombooWeb.Solicitud" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Solicitud - Romboo</title>
    <!-- Incluyendo Tailwind CSS para un diseño moderno y responsivo -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Estilos personalizados para el logo y la fuente -->
    <style>
        /* Agregamos fuentes básicas de Microsoft y un fallback */
        body {
            font-family: 'Segoe UI', 'Calibri', 'Yu Gothic UI Light', sans-serif;
        }

        /* Estilos para aplicar el gradiente de color al texto del logo */
        .ramboo-gradient-text {
            color: #5ECADA; 
            background-image: linear-gradient(to right, #6EECFF 0%, #5ECADA 36.6%, #639EFE 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            display: inline-block;
        }
    </style>
</head>
<body class="bg-white flex flex-col min-h-screen">
    <form id="form1" runat="server" class="flex flex-col flex-grow">
        <!-- Encabezado Principal (Idéntico al ejemplo) -->
        <header class="bg-black shadow-lg">
            <div class="container mx-auto px-6 py-4 flex justify-start items-center">
                <!-- Logo como LinkButton de texto estilizado -->
                <div class="flex items-center">
                    <asp:ImageButton ID="btnLogo0" runat="server" ImageUrl="Romboo logo.png" OnClick="btnLogo_Click" AlternateText="Romboo Logo" CssClass="h-12 w-auto mr-3" ToolTip="Ir a la página principal" />
                    <br />
                    <asp:LinkButton ID="btnLogo" runat="server" OnClick="btnLogo_Click" CssClass="text-4xl font-light ramboo-gradient-text" Text="Romboo" ToolTip="Ir a la página principal" Width="158px"></asp:LinkButton>
                </div>
            </div>
        </header>

        <!-- Contenido Principal: Formulario de Solicitud Centrado -->
        <main class="flex-grow container mx-auto px-6 flex items-center justify-center py-12"> 
            <div class="w-full max-w-xl mx-auto">
                <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">Crear Nueva Solicitud</h2>
                
                <!-- Campos de Dirección en un grid responsivo -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
                    <!-- Calle (Ocupa 2 columnas en desktop) -->
                    <div class="md:col-span-2">
                        <asp:TextBox ID="txtCalle" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Calle"></asp:TextBox>
                    </div>
                    <!-- Número (Ocupa 1 columna en desktop) -->
                    <div>
                        <asp:TextBox ID="txtNumero" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Número"></asp:TextBox>
                    </div>
                </div>

                <!-- Campos de Colonia y CP en un grid responsivo -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                    <!-- Colonia -->
                    <div>
                        <asp:TextBox ID="txtColonia" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Colonia"></asp:TextBox>
                    </div>
                    <!-- Código Postal -->
                    <div>
                        <asp:TextBox ID="txtCodigoPostal" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Código Postal" TextMode="Number"></asp:TextBox>
                    </div>
                </div>

                <!-- Campo de Municipio (Ancho completo) -->
                <div class="mb-4">
                    <asp:TextBox ID="txtMunicipio" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Municipio / Alcaldía"></asp:TextBox>
                </div>
                
                <!-- Campo de Descripción (Ancho completo y multi-línea) -->
                <div class="mb-6">
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Descripción de la solicitud..." TextMode="MultiLine" Rows="5"></asp:TextBox>
                </div>
                
                <!-- Botón de Enviar Solicitud (Estilo principal) -->
                <div class="mb-4">
                    <asp:Button ID="btnEnviarSolicitud" runat="server" Text="Enviar Solicitud" OnClick="btnEnviarSolicitud_Click" CssClass="w-full bg-black hover:bg-gray-800 text-white font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" />
                </div>

                <!-- Botón de Cancelar (Estilo secundario, como "Crear Cuenta") -->
                <div class="mb-6">
                    <!-- CAMBIO: Se eliminó OnClick y se corrigió PostBackUrl -->
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="w-full bg-white hover:bg-gray-100 text-black border border-gray-400 font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" PostBackUrl="~/Dashboard_Cliente.aspx" CausesValidation="false" />
                </div>
            </div>
        </main>
    </form>
</body>
</html>


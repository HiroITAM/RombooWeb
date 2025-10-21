<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_Cliente.aspx.cs" Inherits="RombooWeb.Dashboard_Cliente" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard de Cliente - Romboo</title>
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
<body class="bg-gray-100 flex flex-col min-h-screen">
    <form id="form1" runat="server" class="flex flex-col flex-grow">
        <!-- Encabezado Principal -->
        <header class="bg-black shadow-lg sticky top-0 z-50">
            <div class="container mx-auto px-6 py-4 flex justify-start items-center">
                <!-- Logo con el estilo de gradiente y fuente específica -->
                <div class="flex items-center">
                    <h1 class="text-4xl font-light ramboo-gradient-text" style="font-family: 'Yu Gothic UI Light', sans-serif;">
                    <asp:ImageButton ID="btnLogo0" runat="server" ImageUrl="Romboo logo.png" OnClick="btnLogo_Click" AlternateText="Romboo Logo" CssClass="h-12 w-auto mr-3" ToolTip="Ir a la página principal" />
                        Romboo
                    </h1>
                </div>
            </div>
        </header>

        <!-- Contenido Principal -->
        <main class="flex-grow container mx-auto p-6">
            <h1 class="text-3xl font-bold text-gray-800 mb-6">Dashboard de Cliente</h1>
            <div class="flex flex-col md:flex-row gap-8">
                <!-- Columna Izquierda: Lista de Solicitudes -->
                <div class="md:w-1/3 w-full bg-white p-6 rounded-lg shadow-md">
                    <h2 class="text-2xl font-bold mb-4 text-gray-800">Mis Solicitudes</h2>
                    <asp:ListBox ID="lstSolicitudes" runat="server" CssClass="w-full h-96 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 p-2"
                        AutoPostBack="True" OnSelectedIndexChanged="lstSolicitudes_SelectedIndexChanged"></asp:ListBox>
                </div>

                <!-- Columna Derecha: Detalles de la Solicitud y Propuestas -->
                <div class="md:w-2/3 w-full">
                    <asp:Panel ID="pnlDetalles" runat="server" Visible="false" CssClass="bg-white p-6 rounded-lg shadow-md">
                        <h2 class="text-2xl font-bold mb-4 text-gray-800">Detalles de la Propuesta</h2>
                        
                        <asp:Label ID="lblSeleccionarPropuesta" runat="server" Text="Ver propuesta:" AssociatedControlID="ddlPropuestas" CssClass="block text-gray-700 font-bold mb-2"></asp:Label>
                        <asp:DropDownList ID="ddlPropuestas" runat="server" CssClass="w-full border border-gray-300 rounded-md py-2 px-3 text-gray-700 focus:outline-none focus:ring-2 focus:ring-blue-500 mb-4"
                            AutoPostBack="True" OnSelectedIndexChanged="ddlPropuestas_SelectedIndexChanged">
                        </asp:DropDownList>
                        
                        <div class="bg-gray-50 p-6 rounded-lg border border-gray-200">
                            <div class="mb-4">
                                <strong class="text-gray-600">Cotización:</strong>
                                <asp:Label ID="lblCotizacion" runat="server" Text="N/A" CssClass="ml-2 text-gray-800"></asp:Label>
                            </div>
                            <div class="mb-4">
                                <strong class="text-gray-600">Tiempo estimado:</strong>
                                <asp:Label ID="lblTiempo" runat="server" Text="N/A" CssClass="ml-2 text-gray-800"></asp:Label>
                            </div>
                            <div>
                                <strong class="block text-gray-600 mb-2">Descripción:</strong>
                                <asp:Label ID="lblDescripcion" runat="server" Text="Seleccione una solicitud y una propuesta para ver los detalles." CssClass="text-gray-800"></asp:Label>
                            </div>
                            
                            <div class="text-right mt-6">
                                <asp:Button ID="btnAceptarPropuesta" runat="server" Text="Aceptar Propuesta" CssClass="bg-green-600 hover:bg-green-700 text-white font-bold py-2 px-4 rounded transition duration-300" />
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlPlaceholder" runat="server" CssClass="bg-white p-8 rounded-lg shadow-md text-center text-gray-600">
                        <p>Por favor, seleccione una solicitud de la lista de la izquierda para ver sus detalles.</p>
                    </asp:Panel>
                </div>
            </div>
            
            <!-- Sección de Botones Inferiores -->
            <div class="text-center mt-10 py-6 border-t border-gray-200">
                <asp:Button ID="btnCrearResena" runat="server" Text="Crear Reseña" CssClass="bg-gray-600 hover:bg-gray-700 text-white font-bold py-3 px-6 rounded-lg focus:outline-none focus:shadow-outline transition duration-300 mx-2" />
                <asp:Button ID="btnCrearSolicitud" runat="server" Text="Crear Solicitud" CssClass="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg focus:outline-none focus:shadow-outline transition duration-300 mx-2" />
            </div>
        </main>
    </form>
</body>
</html>


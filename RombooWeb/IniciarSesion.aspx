<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="RombooWeb.IniciarSesion" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Romboo</title>
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
        <!-- Encabezado Principal -->
        <header class="bg-black shadow-lg sticky top-0 z-50">
            <div class="container mx-auto px-6 py-4 flex justify-start items-center">
                <!-- Logo con el estilo de gradiente y fuente específica -->
                <div class="flex items-center">
                    <asp:ImageButton ID="btnLogo" runat="server" ImageUrl="Romboo logo.png" OnClick="btnLogo_Click" AlternateText="Romboo Logo" CssClass="h-12 w-auto mr-3" ToolTip="Ir a la página principal" />
                    <h1 class="text-4xl font-light ramboo-gradient-text" style="font-family: 'Yu Gothic UI Light', sans-serif;">
                        Romboo
                    </h1>
                </div>
            </div>
        </header>

        <!-- Contenido Principal: Formulario de Login Centrado -->
        <main class="flex-grow container mx-auto px-6 flex items-center justify-center"> 
            <div class="w-full max-w-sm mx-auto">
                <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">Iniciar Sesión</h2>
                
                <!-- Campo de Correo Electrónico -->
                <div class="mb-4">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Correo electrónico" TextMode="Email"></asp:TextBox>
                </div>
                
                <!-- Campo de Contraseña -->
                <div class="mb-6">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                </div>
                
                <!-- Botón de Iniciar Sesión -->
                <div class="mb-4">
                    <asp:Button ID="btnContinuar" runat="server" Text="Iniciar Sesión" OnClick="btnContinuar_Click" CssClass="w-full bg-black hover:bg-gray-800 text-white font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" />
                </div>

                <!-- Separador -->
                <div class="flex items-center my-4">
                    <div class="flex-grow border-t border-gray-300"></div>
                    <span class="flex-shrink mx-4 text-gray-500 text-sm">o</span>
                    <div class="flex-grow border-t border-gray-300"></div>
                </div>

                <!-- Botón de Crear Cuenta -->
                <div class="mb-6">
                    <%-- Este botón debería redirigir a una página de registro. --%>
                    <asp:Button ID="btnCrearCuenta" runat="server" Text="Crear tu cuenta" OnClick="btnCrearCuenta_Click" CssClass="w-full bg-white hover:bg-gray-100 text-black border border-gray-400 font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" />
                </div>
            </div>
        </main>
    </form>
</body>
</html>


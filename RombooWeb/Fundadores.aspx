<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fundadores.aspx.cs" Inherits="RombooWeb.Fundadores" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Romboo - Fundadores</title>
    <!-- Incluyendo Tailwind CSS para un diseño moderno y responsivo -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Estilos personalizados para el logo y la fuente -->
    <style>
        /* Agregamos fuentes básicas de Microsoft y un fallback por si no está disponible en el sistema del usuario */
        body {
            font-family: 'Segoe UI', 'Calibri', 'Yu Gothic UI Light', sans-serif;
        }

        /* Estilos para aplicar el gradiente de color al texto del logo */
        .ramboo-gradient-text {
            /* Fallback para navegadores que no soportan background-clip */
            color: #5ECADA; 
            /* Creación del gradiente basado en los colores proporcionados */
            background-image: linear-gradient(to right, #6EECFF 0%, #5ECADA 36.6%, #639EFE 100%);
            /* Recortar el fondo para que solo sea visible a través del texto */
            -webkit-background-clip: text;
            background-clip: text;
            /* Hacer el color del texto transparente para que el fondo (gradiente) sea visible */
            color: transparent;
            /* Se necesita display inline-block para que el background-clip funcione correctamente */
            display: inline-block;
        }
    </style>
</head>
<body class="bg-gray-100 text-gray-800">
    <form id="form1" runat="server">
        <!-- Encabezado Principal -->
        <header class="bg-black shadow-lg sticky top-0 z-50">
            <div class="container mx-auto px-6 py-4 flex justify-between items-center">
                <!-- Logo con el estilo de gradiente y fuente específica -->
                <div class="flex items-center">
                    <asp:ImageButton ID="btnLogo" runat="server" ImageUrl="Romboo logo.png" AlternateText="Romboo Logo" CssClass="h-12 w-auto mr-3" ToolTip="Ir a la página principal" OnClick="btnLogo_Click" />
                    <h1 class="text-4xl font-light ramboo-gradient-text" style="font-family: 'Yu Gothic UI Light', sans-serif;">
                        Romboo
                    </h1>
                </div>
                <!-- Menú de navegación y botones -->
                <div class="hidden md:flex items-center space-x-4">
                    <asp:Button ID="btnFundadores" runat="server" Text="Fundadores" CssClass="bg-gray-800 hover:bg-gray-700 text-gray-300 font-bold py-2 px-4 rounded-md transition duration-300" OnClick="btnFundadores_Click"/>
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar sesión" CssClass="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-md transition duration-300" OnClick="btnIniciarSesion_Click"/>
                </div>
                <!-- Botón para menú en móviles -->
                <button class="md:hidden text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
                    </svg>
                </button>
            </div>
        </header>

        <!-- Contenido Principal de la Página de Fundadores -->
        <main class="container mx-auto px-6 py-12">

            <!-- Sección de Fundadores -->
            <section class="mb-20">
                <h2 class="text-4xl font-bold text-center mb-4">Conoce a Nuestros Fundadores</h2>
                <p class="text-xl text-gray-600 text-center mb-12 max-w-3xl mx-auto">Las mentes creativas y la fuerza impulsora detrás de Romboo.</p>
                
                <div class="grid md:grid-cols-3 gap-10">
                    <!-- Fundador 1 -->
                    <div class="bg-white p-8 rounded-lg shadow-md text-center hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 flex flex-col items-center">
                        <asp:Image ID="imgFounder1" runat="server" 
                             ImageUrl="https://placehold.co/200x200/6EECFF/333333?text=Foto" 
                             AlternateText="Foto del Fundador 1" 
                             CssClass="w-40 h-40 object-cover rounded-full mb-6 border-4 border-gray-200 shadow-sm" />
                        <h3 class="text-2xl font-semibold mb-2">Nombre del Fundador</h3>
                        <p class="text-gray-600 italic">"Una frase inspiradora que define su visión y compromiso con el proyecto."</p>
                    </div>
                    
                    <!-- Fundador 2 -->
                    <div class="bg-white p-8 rounded-lg shadow-md text-center hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 flex flex-col items-center">
                        <asp:Image ID="imgFounder2" runat="server"
                             ImageUrl="https://placehold.co/200x200/5ECADA/333333?text=Foto" 
                             AlternateText="Foto del Fundador 2" 
                             CssClass="w-40 h-40 object-cover rounded-full mb-6 border-4 border-gray-200 shadow-sm" />
                        <h3 class="text-2xl font-semibold mb-2">Nombre del Fundador</h3>
                        <p class="text-gray-600 italic">"Una frase inspiradora que define su visión y compromiso con el proyecto."</p>
                    </div>

                    <!-- Fundador 3 -->
                    <div class="bg-white p-8 rounded-lg shadow-md text-center hover:shadow-2xl hover:-translate-y-2 transition-all duration-300 flex flex-col items-center">
                        <asp:Image ID="imgFounder3" runat="server"
                             ImageUrl="https://placehold.co/200x200/639EFE/333333?text=Foto" 
                             AlternateText="Foto del Fundador 3" 
                             CssClass="w-40 h-40 object-cover rounded-full mb-6 border-4 border-gray-200 shadow-sm" />
                        <h3 class="text-2xl font-semibold mb-2">Nombre del Fundador</h3>
                        <p class="text-gray-600 italic">"Una frase inspiradora que define su visión y compromiso con el proyecto."</p>
                    </div>
                </div>
            </section>

        </main>
    </form>
</body>
</html>


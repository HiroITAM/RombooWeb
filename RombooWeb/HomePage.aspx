<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RombooWeb.HomePage" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Romboo - Página Principal</title>
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
                    <asp:ImageButton ID="btnLogo" runat="server" ImageUrl="https://hiroitam.github.io/Ramboo-Imagenes/Imagenes/Romboo_logo.png" OnClick="btnLogo_Click" AlternateText="Romboo Logo" CssClass="h-12 w-auto mr-3" ToolTip="Ir a la página principal" />
                    <h1 class="text-4xl font-light ramboo-gradient-text" style="font-family: 'Yu Gothic UI Light', sans-serif;">
                        Romboo
                    </h1>
                </div>
                <!-- Menú de navegación y botones -->
                <div class="hidden md:flex items-center space-x-4">
                    <asp:Button ID="btnCasosDeUso" runat="server" Text="Fundadores" OnClick="btnFundadores_Click" CssClass="bg-gray-800 hover:bg-gray-700 text-gray-300 font-bold py-2 px-4 rounded-md transition duration-300" />
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar sesión" OnClick="btnIniciarSesion_Click" CssClass="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-md transition duration-300" />
                </div>
                <!-- Botón para menú en móviles -->
                <button class="md:hidden text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
                    </svg>
                </button>
            </div>
        </header>

    <!-- Contenido Principal de la Página -->
    <main class="container mx-auto px-6 py-12">

        <!-- Sección de Héroe -->
        <section class="text-center mb-20">
            <h2 class="text-5xl font-bold mb-4">Bienvenido a Nuestra Plataforma</h2>
            <p class="text-xl text-gray-600 mb-8 max-w-3xl mx-auto">Una descripción atractiva y concisa sobre el propósito principal de tu aplicación o sitio web.</p>
            <!-- IMAGEN MODIFICADA -->
            <img src="https://hiroitam.github.io/Ramboo-Imagenes/Imagenes/Imagen_Inicial.png" 
                 alt="Imagen principal de la sección de héroe" 
                 class="max-w-4xl mx-auto h-auto rounded-lg shadow-xl object-cover">
        </section>

        <!-- Sección de Características -->
        <section class="mb-20">
            <h3 class="text-4xl font-bold text-center mb-12">¿Como funciona?</h3>
            <div class="grid md:grid-cols-3 gap-10">
                <!-- Característica 1 -->
                <div class="bg-white p-8 rounded-lg shadow-md text-center hover:shadow-2xl transition-shadow duration-300">
                    <img src="https://hiroitam.github.io/Ramboo-Imagenes/Imagenes/Main_Usuario.png" 
                         alt="Ilustración de Usuario con dudas" 
                         class="w-full h-48 object-cover rounded-md mb-6">
                    <h4 class="text-2xl font-semibold mb-2">¿Necesitas una mano?</h4>
                    <p class="text-gray-600">Cualquier necesedidad que tengas y no conozcas a alguien que te ayude.</p>
                </div>
                <!-- Característica 2 -->
                <div class="bg-white p-8 rounded-lg shadow-md text-center hover:shadow-2xl transition-shadow duration-300">
                    <img src="https://hiroitam.github.io/Ramboo-Imagenes/Imagenes/Main_App.png" 
                         alt="Ilustración de la característica 2" 
                         class="w-full h-48 object-cover rounded-md mb-6">
                    <h4 class="text-2xl font-semibold mb-2">Usa nuestra app</h4>
                    <p class="text-gray-600">Crea una solicitud y alguno de nuestros asociados presentará una propuesta.</p>
                </div>
                <!-- Característica 3 -->
                <div class="bg-white p-8 rounded-lg shadow-md text-center hover:shadow-2xl transition-shadow duration-300">
                    <img src="https://hiroitam.github.io/Ramboo-Imagenes/Imagenes/Main_Tecnico.png" 
                         alt="Ilustración de la característica 3"
                         class="w-full h-48 object-cover rounded-md mb-6">
                    <h4 class="text-2xl font-semibold mb-2">Recibe la ayuda</h4>
                    <p class="text-gray-600">Un asociado llegará a tu hogar listo para ayudarte.</p>
                </div>
            </div>
        </section>

        <!-- Sección de Galería o Proyectos -->
        <section class="mb-20">
            <h3 class="text-4xl font-bold text-center mb-12">Proyectos Destacados</h3>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
                <!-- Proyecto 1 -->
                <div class="group relative overflow-hidden rounded-lg shadow-md cursor-pointer">
                    <img src="https://placehold.co/600x400/639EFE/white?text=Proyecto+A" alt="Proyecto A" class="w-full h-auto transform group-hover:scale-110 transition-transform duration-500 ease-in-out">
                    <div class="absolute inset-0 bg-black bg-opacity-70 flex items-end opacity-0 group-hover:opacity-100 transition-opacity duration-500 ease-in-out">
                        <div class="text-white p-4">
                            <h5 class="font-bold text-lg">Hogar</h5>
                            <p class="text-sm">Pide ayuda para cualquier necesidad del hogar.</p>
                        </div>
                    </div>
                </div>
                <!-- Proyecto 2 -->
                <div class="group relative overflow-hidden rounded-lg shadow-md cursor-pointer">
                    <img src="https://placehold.co/600x400/5ECADA/white?text=Proyecto+B" alt="Proyecto B" class="w-full h-auto transform group-hover:scale-110 transition-transform duration-500 ease-in-out">
                    <div class="absolute inset-0 bg-black bg-opacity-70 flex items-end opacity-0 group-hover:opacity-100 transition-opacity duration-500 ease-in-out">
                        <div class="text-white p-4">
                            <h5 class="font-bold text-lg">Escolar</h5>
                            <p class="text-sm">Desde asesorías hasta mentoria para proyectos.</p>
                        </div>
                    </div>
                </div>
                <!-- Proyecto 3 -->
                <div class="group relative overflow-hidden rounded-lg shadow-md cursor-pointer">
                    <img src="https://placehold.co/600x400/6EECFF/333?text=Proyecto+C" alt="Proyecto C" class="w-full h-auto transform group-hover:scale-110 transition-transform duration-500 ease-in-out">
                    <div class="absolute inset-0 bg-black bg-opacity-70 flex items-end opacity-0 group-hover:opacity-100 transition-opacity duration-500 ease-in-out">
                        <div class="text-white p-4">
                            <h5 class="font-bold text-lg">Salud</h5>
                            <p class="text-sm">Para una consulta pequeña o apoyo.</p>
                        </div>
                    </div>
                </div>
                <!-- Proyecto 4 -->
                <div class="group relative overflow-hidden rounded-lg shadow-md cursor-pointer">
                    <img src="https://placehold.co/600x400/cccccc/333?text=Proyecto+D" alt="Proyecto D" class="w-full h-auto transform group-hover:scale-110 transition-transform duration-500 ease-in-out">
                    <div class="absolute inset-0 bg-black bg-opacity-70 flex items-end opacity-0 group-hover:opacity-100 transition-opacity duration-500 ease-in-out">
                        <div class="text-white p-4">
                            <h5 class="font-bold text-lg">Otros</h5>
                            <p class="text-sm">Propone y alguien te ayudará.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>

    <!-- Pie de Página -->
    </form>
</body>
</html>


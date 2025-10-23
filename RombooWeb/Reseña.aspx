<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reseña.aspx.cs" Inherits="RombooWeb.Reseña" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Reseña - Romboo</title>
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

        /* Estilos para el rating de estrellas */
        .star-rating {
            display: flex;
            flex-direction: row-reverse; /* Pone las estrellas en orden inverso (5 a 1) */
            justify-content: start; /* Alinea las estrellas a la izquierda */
        }

        .star-rating input[type="radio"] {
            display: none; /* Oculta el radio button real */
        }

        .star-rating label {
            font-size: 2.5rem; /* Tamaño de la estrella */
            color: #CBD5E0; /* Color de estrella inactiva (slate-300 de Tailwind) */
            cursor: pointer;
            transition: color 0.2s;
            padding: 0 0.125rem; /* Pequeño espacio entre estrellas */
        }

        /* Colorea estrellas al pasar el mouse (hover) */
        .star-rating:hover label,
        .star-rating label:hover,
        .star-rating label:hover ~ label {
            color: #FBBF24; /* Color de estrella activa (amber-400 de Tailwind) */
        }
        
        /* Mantiene el color de la estrella seleccionada y las anteriores */
        .star-rating input[type="radio"]:checked ~ label {
            color: #FBBF24;
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

        <!-- Contenido Principal: Formulario de Reseña Centrado -->
        <main class="flex-grow container mx-auto px-6 flex items-center justify-center py-12"> 
            <div class="w-full max-w-xl mx-auto">
                <h2 class="text-3xl font-bold mb-6 text-gray-800 text-center">Escribir Reseña</h2>
                
                <!-- Campo de Nombre del Asesor (Solo lectura) -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="lblAsesor">Nombre del Asesor*</label>
                    <asp:Label ID="lblAsesor" runat="server" Text="Nombre del Asesor (Cargado)" CssClass="border border-gray-300 bg-gray-100 rounded w-full py-3 px-4 text-gray-500 leading-tight block"></asp:Label>
                </div>

                <!-- Campo de Descripción de la Solicitud (Solo lectura) -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="lblDescripcionSolicitud">Descripción de la solicitud*</label>
                    <asp:Label ID="lblDescripcionSolicitud" runat="server" Text="Descripción de la solicitud (Cargada)..." CssClass="border border-gray-300 bg-gray-100 rounded w-full py-3 px-4 text-gray-500 leading-tight block min-h-[6rem]"></asp:Label>
                </div>

                <!-- Calificación de 5 Estrellas -->
                <div class="mb-6">
                    <label class="block text-gray-700 text-sm font-bold mb-2">Calificación</label>
                    <!-- 
                        NOTA: Se usan inputs de HTML estándar para facilitar el estilo CSS de estrellas.
                        En el CodeBehind (C#), puedes obtener el valor usando:
                        string calificacion = Request.Form["Calificacion"]; // Devolverá "5", "4", "3", "2" o "1"
                    -->
                    <div class="star-rating">
                        <input type="radio" id="star5" name="Calificacion" value="5" /><label for="star5" title="5 estrellas">&#9733;</label>
                        <input type="radio" id="star4" name="Calificacion" value="4" /><label for="star4" title="4 estrellas">&#9733;</label>
                        <input type="radio" id="star3" name="Calificacion" value="3" /><label for="star3" title="3 estrellas">&#9733;</label>
                        <input type="radio" id="star2" name="Calificacion" value="2" /><label for="star2" title="2 estrellas">&#9733;</label>
                        <input type="radio" id="star1" name="Calificacion" value="1" /><label for="star1" title="1 estrella">&#9733;</label>
                    </div>
                </div>

                <!-- Campo de Comentarios (Ancho completo y multi-línea) -->
                <div class="mb-6">
                     <label class="block text-gray-700 text-sm font-bold mb-2" for="txtComentarios">Comentarios</label>
                    <asp:TextBox ID="txtComentarios" runat="server" CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black" placeholder="Escribe tus comentarios adicionales aquí..." TextMode="MultiLine" Rows="5"></asp:TextBox>
                </div>
                
                <!-- Botón de Enviar Reseña (Estilo principal) -->
                <div class="mb-4">
                    <asp:Button ID="btnEnviarReseña" runat="server" Text="Enviar Reseña" OnClick="btnEnviarReseña_Click" CssClass="w-full bg-black hover:bg-gray-800 text-white font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" />
                </div>

                <!-- Botón de Cancelar (Estilo secundario) -->
                <div class="mb-6">
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="w-full bg-white hover:bg-gray-100 text-black border border-gray-400 font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" CausesValidation="false" OnClick="btnCancelar_Click" />
                </div>
            </div>
        </main>
    </form>
</body>
</html>

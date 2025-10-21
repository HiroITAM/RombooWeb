<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="RombooWeb.Registro" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF--8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Cuenta - Romboo</title>
    <!-- Incluyendo Tailwind CSS para un diseño moderno y responsivo -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Estilos personalizados para el logo y la fuente -->
    <style>
        /* Agregamos fuentes de la familia Segoe UI y un fallback */
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

        /* Estilo para mostrar/ocultar contraseña */
        .password-container {
            position: relative;
        }
        .toggle-password {
            position: absolute;
            right: 1rem; /* Ajustado para el nuevo padding del input */
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
        }
    </style>
</head>
<body class="bg-white flex flex-col min-h-screen">
    <form id="form1" runat="server" class="flex flex-col flex-grow">
    
        <!-- Encabezado Principal -->
        <header class="bg-black shadow-lg sticky top-0 z-50">
            <div class="container mx-auto px-6 py-4 flex justify-start items-center">
                <div class="flex items-center">
                    <h1 class="text-4xl font-light ramboo-gradient-text" style="font-family: 'Yu Gothic UI Light', sans-serif;">
                    <asp:ImageButton ID="btnLogo" runat="server" ImageUrl="Romboo logo.png" OnClick="btnLogo_Click" AlternateText="Romboo Logo" CssClass="h-12 w-auto mr-3" ToolTip="Ir a la página principal" />
                        Romboo
                    </h1>
                </div>
            </div>
        </header>

        <!-- Contenido Principal: Formulario de Registro Centrado -->
        <main class="flex-grow container mx-auto px-6 flex items-center justify-center py-12">
            <div class="w-full max-w-2xl mx-auto">
                <div class="text-center mb-8">
                    <h2 class="text-3xl font-bold text-gray-800">Crear una Cuenta</h2>
                    <p class="text-gray-500 mt-2">Completa el formulario para registrarte.</p>
                </div>

                <!-- Formulario de Registro -->
                <div class="space-y-6">
                    <!-- CURP -->
                    <div>
                        <label for="<%=txtCurp.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">CURP</label>
                        <asp:TextBox ID="txtCurp" runat="server" MaxLength="18" placeholder="Ingresa tu CURP de 18 caracteres"
                            CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black uppercase"></asp:TextBox>
                        <p id="curpError" class="text-red-500 text-xs mt-1 hidden">Por favor, ingresa una CURP válida (18 caracteres).</p>
                    </div>

                    <!-- Nombre y Apellidos en una fila -->
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        <div>
                            <label for="<%=txtNombre.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Nombre(s)</label>
                            <asp:TextBox ID="txtNombre" runat="server" placeholder="Tu nombre"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black"></asp:TextBox>
                        </div>
                        <div>
                            <label for="<%=txtApellidoPaterno.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Apellido Paterno</label>
                            <asp:TextBox ID="txtApellidoPaterno" runat="server" placeholder="Tu apellido paterno"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black"></asp:TextBox>
                        </div>
                        <div>
                            <label for="<%=txtApellidoMaterno.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Apellido Materno</label>
                            <asp:TextBox ID="txtApellidoMaterno" runat="server" placeholder="Tu apellido materno"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Correo y Teléfono -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label for="<%=txtEmail.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Correo Electrónico</label>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="ejemplo@correo.com"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black"></asp:TextBox>
                        </div>
                        <div>
                            <label for="<%=txtTelefono.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Teléfono</label>
                            <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone" placeholder="10 dígitos" MaxLength="10"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Contraseña y Estado -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="password-container">
                            <label for="<%=txtPassword.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Contraseña</label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Crea una contraseña segura"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black"></asp:TextBox>
                            <span class="toggle-password" id="togglePassword">
                                <svg id="eyeIcon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 text-gray-400">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.432 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                </svg>
                                <svg id="eyeSlashedIcon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 text-gray-400 hidden">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M3.98 8.223A10.477 10.477 0 001.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.45 10.45 0 0112 4.5c4.756 0 8.773 3.162 10.065 7.498a10.523 10.523 0 01-4.293 5.774M6.228 6.228L3 3m3.228 3.228l3.65 3.65m7.894 7.894L21 21m-3.228-3.228l-3.65-3.65m0 0a3 3 0 10-4.243-4.243m4.243 4.243L6.228 6.228" />
                                </svg>
                            </span>
                        </div>
                        <div>
                            <label for="<%=ddlEstado.ClientID%>" class="block text-sm font-medium text-gray-700 mb-1">Estado</label>
                            <asp:DropDownList ID="ddlEstado" runat="server"
                                CssClass="border border-gray-400 rounded w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:border-black bg-white">
                                <asp:ListItem Value="" Disabled="true" Selected="True">Selecciona tu estado</asp:ListItem>
                                <asp:ListItem Value="AGS">Aguascalientes</asp:ListItem>
                                <asp:ListItem Value="BC">Baja California</asp:ListItem>
                                <asp:ListItem Value="BCS">Baja California Sur</asp:ListItem>
                                <asp:ListItem Value="CAM">Campeche</asp:ListItem>
                                <asp:ListItem Value="COA">Coahuila</asp:ListItem>
                                <asp:ListItem Value="COL">Colima</asp:ListItem>
                                <asp:ListItem Value="CHP">Chiapas</asp:ListItem>
                                <asp:ListItem Value="CHH">Chihuahua</asp:ListItem>
                                <asp:ListItem Value="CMX">Ciudad de México</asp:ListItem>
                                <asp:ListItem Value="DUR">Durango</asp:ListItem>
                                <asp:ListItem Value="GTO">Guanajuato</asp:ListItem>
                                <asp:ListItem Value="GRO">Guerrero</asp:ListItem>
                                <asp:ListItem Value="HGO">Hidalgo</asp:ListItem>
                                <asp:ListItem Value="JAL">Jalisco</asp:ListItem>
                                <asp:ListItem Value="MEX">México</asp:ListItem>
                                <asp:ListItem Value="MIC">Michoacán</asp:ListItem>
                                <asp:ListItem Value="MOR">Morelos</asp:ListItem>
                                <asp:ListItem Value="NAY">Nayarit</asp:ListItem>
                                <asp:ListItem Value="NL">Nuevo León</asp:ListItem>
                                <asp:ListItem Value="OAX">Oaxaca</asp:ListItem>
                                <asp:ListItem Value="PUE">Puebla</asp:ListItem>
                                <asp:ListItem Value="QRO">Querétaro</asp:ListItem>
                                <asp:ListItem Value="ROO">Quintana Roo</asp:ListItem>
                                <asp:ListItem Value="SLP">San Luis Potosí</asp:ListItem>
                                <asp:ListItem Value="SIN">Sinaloa</asp:ListItem>
                                <asp:ListItem Value="SON">Sonora</asp:ListItem>
                                <asp:ListItem Value="TAB">Tabasco</asp:ListItem>
                                <asp:ListItem Value="TAM">Tamaulipas</asp:ListItem>
                                <asp:ListItem Value="TLX">Tlaxcala</asp:ListItem>
                                <asp:ListItem Value="VER">Veracruz</asp:ListItem>
                                <asp:ListItem Value="YUC">Yucatán</asp:ListItem>
                                <asp:ListItem Value="ZAC">Zacatecas</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <!-- Botón de Envío -->
                    <div class="pt-4">
                        <asp:Button ID="btnCrearCuenta" runat="server" Text="Crear Cuenta" OnClick="btnCrearCuenta_Click"
                            OnClientClick="return validateForm()"
                            CssClass="w-full bg-black hover:bg-gray-800 text-white font-bold py-3 px-4 rounded focus:outline-none focus:shadow-outline transition duration-300" />
                    </div>
                </div>
            </div>
        </main>
        
        <script>
            // Referencias a los controles de ASP.NET usando ClientID
            const curpInput = document.getElementById('<%= txtCurp.ClientID %>');
            const passwordInput = document.getElementById('<%= txtPassword.ClientID %>');

            // --- Lógica de UI que se ejecuta al cargar la página ---
            document.addEventListener('DOMContentLoaded', function () {
                const curpError = document.getElementById('curpError');
                const togglePassword = document.getElementById('togglePassword');
                const eyeIcon = document.getElementById('eyeIcon');
                const eyeSlashedIcon = document.getElementById('eyeSlashedIcon');

                // --- Validación de CURP en tiempo real ---
                if (curpInput) {
                    curpInput.addEventListener('input', function () {
                        this.value = this.value.toUpperCase();
                        if (this.value.length > 0 && this.value.length < 18) {
                            curpError.classList.remove('hidden');
                            this.classList.add('border-red-500');
                            this.classList.remove('border-gray-400');
                        } else {
                            curpError.classList.add('hidden');
                            this.classList.remove('border-red-500');
                            this.classList.add('border-gray-400');
                        }
                    });
                }
                
                // --- Lógica para mostrar/ocultar contraseña ---
                if (togglePassword && passwordInput && eyeIcon && eyeSlashedIcon) {
                    togglePassword.addEventListener('click', function () {
                        // Cambia el tipo de input entre 'password' y 'text'
                        const isPassword = passwordInput.getAttribute('type') === 'password';
                        passwordInput.setAttribute('type', isPassword ? 'text' : 'password');
                        
                        // Alterna la visibilidad de los íconos SVG
                        eyeIcon.classList.toggle('hidden');
                        eyeSlashedIcon.classList.toggle('hidden');
                    });
                }
            });

            // --- Función de validación del cliente antes del PostBack ---
            function validateForm() {
                let isValid = true;
                const requiredFields = [
                    document.getElementById('<%= txtCurp.ClientID %>'),
                    document.getElementById('<%= txtNombre.ClientID %>'),
                    document.getElementById('<%= txtApellidoPaterno.ClientID %>'),
                    document.getElementById('<%= txtEmail.ClientID %>'),
                    document.getElementById('<%= txtTelefono.ClientID %>'),
                    document.getElementById('<%= txtPassword.ClientID %>'),
                    document.getElementById('<%= ddlEstado.ClientID %>'),
                ];

                // Resetea estilos de error
                requiredFields.forEach(field => {
                    if (field) {
                        field.classList.remove('border-red-500');
                        field.classList.add('border-gray-400');
                    }
                });
                document.getElementById('curpError').classList.add('hidden');

                // Validación de CURP
                if (curpInput && curpInput.value.length !== 18) {
                    document.getElementById('curpError').classList.remove('hidden');
                    curpInput.classList.add('border-red-500');
                    curpInput.classList.remove('border-gray-400');
                    isValid = false;
                }

                // Validación de campos requeridos
                requiredFields.forEach(field => {
                    if (field && !field.value.trim()) {
                        field.classList.add('border-red-500');
                        field.classList.remove('border-gray-400');
                        isValid = false;
                    }
                });

                if (!isValid) {
                    console.log('Formulario inválido. PostBack cancelado.');
                }

                // Devuelve true para permitir el PostBack si es válido, false para cancelarlo
                return isValid;
            }
        </script>
    </form>
</body>
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Registro</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #1b1d31;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #edf0f0;
            padding: 20px;
        }
        
        form {
            background-color: #24253c;
            display: flex;
            flex-direction: column;
            padding: 40px;
            width: 100%;
            max-width: 420px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
        }
        
        h1 {
            font-size: 24px;
            color: #edf0f0;
            margin-bottom: 20px;
        }
        
        input {
            padding: 12px;
            border-radius: 8px;
            background-color: #333;
            border: 2px solid #603452;
            margin-bottom: 20px;
            outline: none;
            color: #ffffff;
            font-size: 16px;
        }
        
        label {
            font-size: 16px;
            color: #edf0f0;
            margin-bottom: 8px;
            display: block;
        }
        
        .button {
            background-color: #e53854;
            border: none;
            padding: 12px 20px;
            color: #ffffff;
            font-size: 16px;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }
        
        .button:hover {
            background-color: #f33f5a;
            transform: scale(1.05);
        }
        
        form img {
            border-radius: 50%;
            border: 2px solid #f33f5a;
            margin-bottom: 20px;
            width: 100px;
            height: 100px;
        }
        
        @media (max-width: 991px) {
            form {
                width: 100%;
                max-width: 340px;
            }
        }
    </style>
</head>
<body>
    <form id="usuarios">
        <img src="imagenes/IMG 7.PNG" alt="Logo" />
        <h1>Registrar Cliente</h1>
        <label for="nombre">Nombre de Cliente:</label>
        <input type="text" id="nombre" required>
        
        <label for="direccion">Nueva Dirección:</label>
        <input type="text" id="direccion" required>
        
        <label for="correo">Correo:</label>
        <input type="email" id="correo" required>
        
        <label for="fecha">Fecha de Compromiso:</label>
        <input type="date" id="fecha" required>
        
        <label for="valor">Valor de Compromiso:</label>
        <input type="number" id="valor" required>
        
        <button type="button" class="button" onclick="guardarDatos()">Registrar</button>
    </form>
    <script>
        function guardarDatos() {
            const nombre = document.getElementById('nombre').value;
            const direccion = document.getElementById('direccion').value;
            const correo = document.getElementById('correo').value;
            const fecha = document.getElementById('fecha').value;
            const valor = document.getElementById('valor').value;
            
            const datosCliente = {
                nombre: nombre,
                direccion: direccion,
                correo: correo,
                fecha: fecha,
                valor: valor
            };

            localStorage.setItem('usuarios', JSON.stringify(usuarios));
            window.location.href = 'mostrarDatos.jsp';
        }
    </script>    
    
</body>
</html>

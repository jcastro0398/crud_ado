<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulario</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-color: #1b1d31;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
       
        
        form{
            background-color: #24253c;
            display: flex;
            flex-direction: column;
            padding: 50px;
            width: 420px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h1 {
            font-size: 30px;
            color: #edf0f0;
            margin-bottom: 50px;
        }
        input{
            padding: 17px;
            border-radius: 25px;
            background-color: transparent;
            border: 2px solid #603452;
            margin-bottom: 30px;
            outline: none;
            color: #ffffff;
            font-size: 16px;
        }
        
        
        .button {
            background-color: #e53854;
            border: 2px solid #e53854;
            cursor: pointer;
        }
        .button :hover {
            background-color: #f33f5a;
            border: 5px solid #f33f5a;
        }
        label {
            font-size: 30px;
            color: #edf0f0;
            margin-bottom: 0px;
        }
        
        @media (max-width: 991px) {
            body {
                padding: 30px;
            }
            form {
                width: 340px;
            }
        }
        form img {
            background-image: url(imagenes/IMG 7.PNG); 
            align-self: center;
            margin-bottom: 10px;
            border: 2px solid #f33f5a;
        }
        
          #form img {
            height: 90%;
            margin-right: 200px;
        }
        .correo 
        {color: #89879b;}
    </style>
</head>
<body>
   
   
    <h1>Registrar Cliente</h1>
    
    <form id="registroForm">
        <img src="imagenes/IMG 7.PNG" alt="" width ="100px" height="100px"/>
        <label for="nombre">Nombre de Cliente:</label>
        <input type="text" id="nombre" required><br><br>

        <label for="direccion">Nueva Dirección:</label>
        <input type="text" id="direccion" required><br><br>

        <label for="correo">Correo:</label>
        <input type="email" id="correo" required><br><br>

        <label for="fecha">Fecha de Compromiso:</label>
        <input type="date" id="fecha" required><br><br>

        <label for="valor">Valor de Compromiso:</label>
        <input type="number" class="cuerpo" id="valor" required><br><br>

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

            localStorage.setItem('datosCliente', JSON.stringify(datosCliente));
            window.location.href = 'mostrarDatos.jsp';
        }
    </script>
    
</body>
</html>

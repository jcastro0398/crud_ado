<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenida</title>
    
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
            flex-direction: column; /* Cambiado a columna para alinear los contenedores verticalmente */
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #edf0f0;
            margin: 0;
            gap: 20px; /* Espacio entre los contenedores */
        }
        .container {
            width: 90%;
            max-width: 600px;
            background-color: #24253c;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            padding: 40px;
            text-align: center;
        }
        .container h1 {
            font-size: 28px;
            margin-bottom: 15px;
        }
        .container p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .btn {
            background-color: #e53854;
            border: 2px solid #e53854;
            padding: 12px 24px;
            color: #ffffff;
            font-size: 16px;
            border-radius: 25px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .btn:hover {
            background-color: #f33f5a;
            border-color: #f33f5a;
        }
    </style>
    
</head>
<body>
    <div class="container">
        <h1>¡Bienvenido!</h1>
        <p>Has iniciado sesión exitosamente.</p>
        <p>Para comenzar con el registro de visitas presiona.</p>
        <a href="registro_visita.jsp" class="btn">Registro</a>
    </div>
    
    <div class="container">
        <h1>¡Conoce de nosotros!</h1>
        <a href="history.jsp" class="btn">Historia</a>
    </div>
</body>
</html>
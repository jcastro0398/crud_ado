
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
        form h2 {
            font-size: 30px;
            color: #edf0f0;
            margin-bottom: 35px;
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
        ::placeholder {
            color: #89879b;
        }
        .btn {
            background-color: #e53854;
            border: 2px solid #e53854;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #f33f5a;
            border: 2px solid #f33f5a;
        }
        
         .button {
            background-color: #e53854;
            border: 5px solid #e53854;
            cursor: pointer;
            color: whitesmoke
        }
        .button :hover {
            background-color: #f33f5a;
            border: 5px solid #f33f5a;
        }
        
         .error-message {
            color: #e53854;
            background-color: #f8d7da;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 16px;
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
            align-self: center;
            margin-bottom: 10px;
            border: 2px solid #f33f5a;
        }
    </style>
</head>
<body>
    
    <form action="Svingreso" method="post">
        <h2>Registro de usuario</h2>
         <% 
            // Verifica si hay un parámetro de error en la URL
            String error = request.getParameter("error");
            if ("1".equals(error)) {
        %>
            <div class="error-message">Usuario o clave incorrectos</div>
        <% 
            }
        %>
        
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="password" name="clave" placeholder="Contraseña">
        <input type="submit" class="btn" value="ingresar">
    </form>    
</body>
</html>

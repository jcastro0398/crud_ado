<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datos del Cliente</title>
    <style>
        /* Estilo general del cuerpo */
body {
    font-family: Arial, Helvetica, sans-serif;
           background-color: #1b1d31;
           display: flex;
           justify-content: center;
           align-items: center;
           min-height: 100vh;
}

/* Estilo del título */
h1 {
    font-size: 30px;
    color: #edf0f0;
    margin-bottom: 50px;
}

/* Estilo de la tabla */
table {
    width: 100%;
    border-collapse: collapse;
    box-shadow: 0 2px 10px rgba(229, 56, 84, 1.0);
}

/* Estilo de las celdas de la tabla */
th, td {
    padding: 12px;
    text-align: left;
}

/* Color de fondo de las cabeceras */
th {
    background-color: #e53854;
    color: #fff;
}

/* Color de fondo de las filas */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Estilo de la fila que indica ausencia de datos */
#filaDatos {
    background-color: #ffeeba;
    text-align: center;
}

td[colspan="5"] {
    font-weight: bold;
    color: #856404;
}
    </style>
</head>
<body>
    <h1>Datos Registrados del Cliente</h1>
    <table border="1">
        <tr>
            <th>Nombre de Cliente</th>
            <th>Nueva Dirección</th>
            <th>Correo</th>
            <th>Fecha de Compromiso</th>
            <th>Valor de Compromiso</th>
        </tr>
        <tr id="filaDatos">
            <td colspan="5">No hay datos registrador</td>
        </tr>
    </table>

    <script>
        const datosCliente = JSON.parse(localStorage.getItem('datosCliente'));

        if (datosCliente) {
            document.getElementById('filaDatos').innerHTML = `
                <td>${datosCliente.nombre}</td>
                <td>${datosCliente.direccion}</td>
                <td>${datosCliente.correo}</td>
                <td>${datosCliente.fecha}</td>
                <td>${datosCliente.valor}</td>
            `;
        }
    </script>
</body>
</html>

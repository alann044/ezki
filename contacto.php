<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Contacto</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Formulario de Contacto</h1>

    <form action="guardar_mensaje.php" method="POST">
        <label>Nombre:</label><br>
        <input type="text" name="nombre" required><br><br>

        <label>Correo:</label><br>
        <input type="email" name="correo" required><br><br>

        <label>Asunto:</label><br>
        <input type="text" name="asunto"><br><br>

        <label>Mensaje:</label><br>
        <textarea name="mensaje" rows="4" required></textarea><br><br>

        <button type="submit">Enviar</button>
    </form>
</body>
</html>

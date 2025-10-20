<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Testimonio</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Agregar Testimonio de Cliente</h1>

    <form action="guardar_testimonio.php" method="POST" enctype="multipart/form-data">
        <label>Nombre del cliente:</label><br>
        <input type="text" name="nombre" required><br><br>

        <label>Empresa (opcional):</label><br>
        <input type="text" name="empresa"><br><br>

        <label>Comentario:</label><br>
        <textarea name="comentario" rows="4" required></textarea><br><br>

        <label>Imagen del cliente (opcional):</label><br>
        <input type="file" name="imagen"><br><br>

        <button type="submit">Guardar Testimonio</button>
    </form>

    <br>
    <a href="testimonios.php">Ver testimonios</a>
</body>
</html>

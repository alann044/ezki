<?php
include("conexion.php");
$query = "SELECT * FROM Testimonios ORDER BY Fecha DESC";
$resultado = mysqli_query($conexion, $query);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Testimonios de Clientes</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Testimonios de Clientes</h1>

    <?php while($fila = mysqli_fetch_assoc($resultado)) { ?>
        <div style="border: 1px solid #ccc; padding: 10px; margin: 10px;">
            <h3><?php echo htmlspecialchars($fila['NombreCliente']); ?></h3>
            <p><strong>Empresa:</strong> <?php echo htmlspecialchars($fila['Empresa']); ?></p>
            <p><?php echo htmlspecialchars($fila['Comentario']); ?></p>
            <p><em><?php echo $fila['Fecha']; ?></em></p>
        </div>
    <?php } ?>
</body>
</html>

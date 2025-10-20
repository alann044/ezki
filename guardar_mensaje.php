<?php
include("conexion.php");

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$asunto = $_POST['asunto'];
$mensaje = $_POST['mensaje'];

$query = "INSERT INTO MensajesContacto (Nombre, Correo, Asunto, Mensaje)
          VALUES ('$nombre', '$correo', '$asunto', '$mensaje')";

if (mysqli_query($conexion, $query)) {
    echo "<h2>Mensaje enviado correctamente ✅</h2>";
    echo "<a href='contacto.php'>Volver al formulario</a>";
} else {
    echo "Error: " . mysqli_error($conexion);
}

mysqli_close($conexion);
?>

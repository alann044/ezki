<?php
include("conexion.php");

$nombre = $_POST['nombre'];
$empresa = $_POST['empresa'];
$comentario = $_POST['comentario'];
$imagenRuta = null;

$carpetaDestino = "assets/clientes/";
if (!file_exists($carpetaDestino)) {
    mkdir($carpetaDestino, 0777, true);
}


if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] === UPLOAD_ERR_OK) {
    $nombreArchivo = basename($_FILES['imagen']['name']);
    $rutaDestino = $carpetaDestino . $nombreArchivo;
    if (move_uploaded_file($_FILES['imagen']['tmp_name'], $rutaDestino)) {
        $imagenRuta = $rutaDestino;
    }
}

$query = "INSERT INTO Testimonios (NombreCliente, Empresa, Comentario, ImagenCliente)
          VALUES ('$nombre', '$empresa', '$comentario', '$imagenRuta')";

if (mysqli_query($conexion, $query)) {
    echo "<h2>✅ Testimonio guardado correctamente</h2>";
    echo "<a href='agregar_testimonio.php'>Agregar otro</a> | ";
    echo "<a href='testimonios.php'>Ver testimonios</a>";
} else {
    echo "Error: " . mysqli_error($conexion);
}

mysqli_close($conexion);
?>

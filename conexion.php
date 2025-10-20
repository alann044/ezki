<?php
$servidor = "localhost:3307";
$usuario = "root";     
$clave = "";           
$baseDatos = "EzkiStudiosDB";

$conexion = mysqli_connect($servidor, $usuario, $clave, $baseDatos);

if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}
?>

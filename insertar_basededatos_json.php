<?php
$bd = "registro";
$server = "localhost";
$user = "root";
$pass = "";

$conexion = mysqli_connect($server, $user, $pass, $bd);

if(!$conexion)die("Error de conexión" . mysqli_connect_error());

$data = json_decode(file_get_contents("php://input"));
$nombre = mysqli_real_escape_string($conexion ,$data->nombre);
$correo = mysqli_real_escape_string($conexion ,$data->correo);

$sql = "INSERT INTO usuarios(id, nombre, correo) VALUES (NULL, '".$nombre."', '".$correo."')";

$resultado = mysqli_query($conexion, $sql);



 ?>

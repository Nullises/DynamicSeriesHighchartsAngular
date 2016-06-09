<?php
$bd = "registro";
$server = "localhost";
$user = "root";
$pass = "";

$conexion = mysqli_connect($server, $user, $pass, $bd);

if(!$conexion)die("Error de conexión" . mysqli_connect_error());

$sql = "SELECT id_consumibles, articulo, cant_consumible  FROM consumibles";

$resultado = mysqli_query($conexion, $sql);

$array_usuarios = array();

while($data = mysqli_fetch_assoc($resultado)){
  $array_usuarios[] = $data;
}

echo json_encode($array_usuarios);


 ?>

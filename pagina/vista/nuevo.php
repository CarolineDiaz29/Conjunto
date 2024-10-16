<!DOCTYPE html>
 
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="45.jpg">
        <title>CONJUNTO RESIDENCIAL SANTA SOFIA</title> 
        </head>
    <body>
        <form action="nuevo.php" method="POST"> 
            <input name="idUsuario" type="text" placeholder="DOCUMENTO" >
<div>TIPO DE DOCUMENTO
    <select name="tipoDocUsuario">
        <option value="cc">CC</option>
        <option value="tp">TP</option>
        <option value="pa">PA</option>
    </select>
</div>
            <input name="nombresUsuario" type="text" placeholder="NOMBRE">
             <input name="apellidosUsuario" type="text" placeholder="APELLIDO">
             <input name="telefijoUsuario" type="text" placeholder="TELEFONO">
             <input name="telcelularUsuario" type="text" placeholder="CELULAR">
            <input name="correoUsuario" type="email" placeholder="&#128272;USUARIO" >
            <input name="contrasenaUsuario" type="password" placeholder="&#128272;CONTRASENA" >
<div>TIPO RESIDENTE
    <select name="tipoResidente">
        <option value="arrendatario">ARRENDATARIO</option>
        <option value="propietario">PROPIETARIO</option>
    </select>
</div>
<div> TIPO DE USUARIO
    <select name="tipoUsuario">
        <option value="residente">RESIDENTE</option>
        <option value="visitante">VISITANTE</option>
        <option value="empleado">EMPLEADO</option>
    </select>
</div>
          <input name="apartamentoUsuario" type="text" placeholder="EJEMPLO=1A505">
          <input name="direccionUsuario" type="text" placeholder="DIRECCION">
          
<center>
    <button name="REGISTRAR" type="submit" value=insertar > REGISTRAR</button>
    <button name="ACTUALIZAR"type="submit" value=actualizar >ACTUALIZAR</button>
    <button name="INACTIVAR"type="submit" value=consultar >CONSULTAR</button>
    <button name="CONSULTAR"type="submit" value=eliminar>INACTIVAR</button></center>
      </form>
    </body>
    
<?php
    
error_reporting(E_ALL ^ E_NOTICE);	
	if ($_REQUEST){
		require_once ('../controlador/usuario.controller.php');//Aquí cambió
		$usuarioControlador = new usuarioController();//Aquí cambió
		
		if ($_REQUEST["REGISTRAR"])
			$usuarioControlador->insertar();
     }
?>
</html>   
<!DOCTYPE html>
 
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="45.jpg">
        <title>CONJUNTO RESIDENCIAL SANTA SOFIA</title> 
        <link rel="stylesheet" href="index.css" type="text/css" />
        </head>
    <body>
      <form action="usuarios.php" method="POST"> 
          <center><img src=45.jpg><img src="nit.jpg"></center>
<div> TIPO DE USUARIO
    <select name="tipoUsuario" ><option>RESIDENTE</option>
        <option>VISITANTE</option>
        <option>EMPLEADO</option>
    </select>
</div>
          <input name="correoUsuario" type="email" placeholder="&#128272;USUARIO" required maxlength="50" >
          <input name="contraseñaUsuario" type="password" placeholder="&#128272;CONTRASENA" required maxlength="8" minlength="8">
          <input name="nombresUsuario" type="text" placeholder="NOMBRE" required maxlength="30"  pattern="[a-z A-Z]+">
          <input name="apellidosUsuario" type="text"max-length="20"placeholder="APELLIDO" required maxlength="30"  pattern="[a-z A-Z]+">
          <input name="idUsuario" type="text" placeholder="DOCUMENTO" required maxlength="10" pattern="[0-9]{10}" step="number">
<div>TIPO DE DOCUMENTO
    <select name="tipoDocUsuario"><option>CC</option>
        <option>TP</option>
        <option>PA</option>
    </select>
</div>
          <input name="telefijoUsuario" type="text" placeholder="TELEFONO"required maxlength="7"  minlength="7" pattern="[0-9]{7}" step="number">
          <input name="telcelularUsuario" type="text" placeholder="CELULAR"required maxlength="10"  minlength="10" pattern="[0-9]{10}" step="number">
          <input name="direccionUsuario" type="text" placeholder="DIRECCION"required maxlength="30">
<div>TIPO RESIDENTE
    <select name="tipoResidente"><option>ARRENDATARIO</option>
        <option>PROPIETARIO</option>
    </select>
</div>
<div>TORRE
    <select name="apartamentoUsuario"><option>TORRE 1</option>
        <option>TORRE 2</option>
        <option>TORRE 3</option>
        <option>TORRE 4</option>
        <option>TORRE 5</option>
        <option>TORRE 6</option>
        <option>TORRE 7</option>
    </select>
</div>
<div>APARTAMENTO
    <select name="apartamentoUsuario"><option>101</option>
        <option>102</option>
        <option>103</option>
        <option>104</option>
        <option>201</option>
        <option>202</option>
        <option>203</option>
        <option>204</option>
        <option>301</option>
        <option>302</option>
        <option>303</option>
        <option>304</option>
        <option>401</option>
        <option>402</option>
        <option>403</option>
        <option>404</option>
        <option>501</option>
        <option>502</option>
        <option>503</option>
        <option>504</option>
        <option>601</option>
        <option>602</option>
        <option>603</option>
        <option>604</option>
    </select>
</div>
<center>
    <button name="REGISTRAR" type="submit" value=insertar class="registrar"> REGISTRAR</button>
    <button name="ACTUALIZAR"type="submit" value=actualizar class="actualizar">ACTUALIZAR</button>
    <button name="INACTIVAR"type="submit" value=consultar class="consultar">CONSULTAR</button>
    <button name="CONSULTAR"type="submit" value=eliminar class="eliminar">INACTIVAR</button></center>
      </form>
        <div class="button">
           <button type="button"><a href="menu-1.php">ATRAS</a></button>
        </div>
        <footer class="footer">
            <img src="https://img.icons8.com/dusk/48/000000/gmail.png"><p>santasofiasur1@hotmail.com</p>
            <img src="https://img.icons8.com/color/48/000000/pittsburgh-map.png"><p>Cll 42 sur #12-55</p>
        <p class="copy">&copy; CONJUNTO RESIDENCIAL SANTA SOFIA I ETAPA </p>
    </footer>
          </body>
<?php
	error_reporting(E_ALL ^ E_NOTICE);	
	if ($_REQUEST){
		require_once ('../controlador/usuario.controller.php');//Aquí cambió
		$usuarioControlador = new usuarioController();//Aquí cambió
		
		if ($_REQUEST["REGISTRAR"])
			$usuarioControlador->insertar();
		if ($_REQUEST["ACTUALIZAR"])
			$usuarioControlador->actualizar();
		if ($_REQUEST["INACTIVAR"])
			$usuarioControlador->inactivar();
		if ($_REQUEST["CONSULTAR"]){
			//$usr = new DAOusuario();
			$usr = $usuarioControlador->buscar();
			
			//IMPRIME LOS DATOS DE LA FILA ENCONTRADA
			echo "<br>DATOS DESDE LA VISTA: <br>";
			echo "idUsuario $usr[idUsuario] <br>";
            echo "tipoDocUsuario $usr[tipoDocUsuario] <br>";
            echo "nombresUsuario $usr[nombresUsuario] <br>";
            echo "apellidosUsuario $usr[apellidosUsuario] <br>";
            echo "telefijoUsuario $usr[telefijoUsuario] <br>";
            echo "telcelularUsuario $usr[telcelularUsuario] <br>";
            echo "correoUsuario $usr[correoUsuario] <br>";
            echo "contraseñaUsuario $usr[contraseñaUsuario] <br>";
            echo "tipoResidente $usr[tipoResidente] <br>";
            echo "tipoUsuario $usr[tipoUsuario] <br>";
            echo "apartamentoUsuario $usr[apartamentoUsuario] <br>";
            echo "direccionUsuario $usr[direccionUsuario] <br>";
            
		}
	}
?>
</html>
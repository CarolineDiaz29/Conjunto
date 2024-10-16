<?php 
    require_once('../configuracion/conectar.php');
$conectar=new conectar();
$db=$conectar->conexion();

    $usuario= $_REQUEST["usuario"];
    $contrasena= $_REQUEST["clave"];

      if (isset($_REQUEST['usuario']) && !empty($_REQUEST['usuario']) && isset($_REQUEST['clave']) && 
        !empty($_REQUEST['clave']))
      {               
         echo "<br><br><b>Usuario: </b>". $usuario . "<br>";
         echo "<b>Contrasena:</b> " . $contrasena . "<br>";
         // 2. CONSULTA SELECT A TABLA USUARIOS PARA OBTENER EL TIPO DE USUARIO
         $query=$db->query("SELECT tipoUsuario FROM usuario WHERE correoUsuario='$usuario' and contrasenaUsuario='$contrasena'");
         if($row = $query->fetch_object()) {
            echo "<br>Fila exitosamente encontrada!!!<br><br>";
           $tusuario = $row->tipoUsuario;
           echo "<br><b>Tipo de usuario:</b> " . $tusuario;         
            /*
                3. REDIRECCIONAMIENTO A LA PÁGINA CON EL MENÚ ACORDE AL PERFIL DEL USUARIO
                DETERMINA EL TIPO DE MENU A CARGAR PARA EL USUARIO
            */
            switch ($tusuario){
                case 'administrador':
                    header ('location:../vista/menu-1.php');
                    break;
                case 'Vigilante':
                    echo '<br>Esta a punto de cargar la página con el menú del vigilante...';
                    header ('location:../vista/menu-1.php');
                    break;
                case 'Propietario':
                    echo '<br>Esta a punto de cargar la página con el menú del residente...';
                    header ('location:../vista/menu-1.php');
                    break;
                default:
                    echo "<br>No existe ese tipo de usuario en la base de datos";
                    break;
            }
         }
         else{
            echo "<br><font color=red>El usuario no existe en la base de datos, por favor corrija los datos en el formulario de sesión!!!</font>";
         }
 
      }
      else{
            echo "<br><font color=red>La variable de formulario no existe o faltan datos del usuario!!!</font>";
      }
?>
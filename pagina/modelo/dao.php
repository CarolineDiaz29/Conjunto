<?php
class DAOusuario{
    
		public $idUsuario;
		public $tipoDocUsuario;
		public $nombresUsuario;
		public $apellidosUsuario;
		public $telefijoUsuario;
        public $telcelularUsuario;
		public $correoUsuario;
		public $contrasenaUsuario;
        public $tipoResidente;
		public $tipoUsuario; 
		public $apartamentoUsuario;
        public $dirrecionUsuario;
    
        public function __construct() {
			require_once ('../configuracion/conectar.php');
        	$this->conectar=new Conectar();
        	$this->db=$this->conectar->conexion();
   		 }
		public function db(){
        	return $this->db;
    	}
       public function buscar($idUsuario){
	        $statement = $this->db->query("CALL pa_buscar_usuario('$idUsuario')");

	        if($fila = $statement->fetch_assoc()) {
	           $resultSet=$fila; // Resultset traduce conjunto de resultados
	           echo "<br>Fila exitosamente encontrada...<br><br>";
	           echo "DATOS DESDE EL MODELO:<BR>";
	           echo "idUsuario: " . $fila['idUsuario']."<BR>";
               echo "tipoDocUsuario: " . $fila['tipoDocUsuario']."<BR>";
               echo "nombresUsuario: " . $fila['nombresUsuario']."<BR>";
               echo "apellidosUsuario: " . $fila['apellidosUsuario']."<BR>";
               echo "telefijoUsuario: " . $fila['telefijoUsuario']."<BR>";
               echo "telcelularUsuario: " . $fila['telcelularUsuario']."<BR>";
               echo "correoUsuario: " . $fila['correoUsuario']."<BR>";
               echo "contrasenaUsuario: " . $fila['contrasenaUsuario']."<BR>";
               echo "tipoResidente: " . $fila['tipoResidente']."<BR>";
	           echo "tipoUsuario: " . $fila['tipoUsuario']."<BR>";
               echo "apartamentoUsuario: " . $fila['apartamentoUsuario']."<BR>";
               echo "direccionUsuario: " . $fila['direccionUsuario']."<BR>";
                
	        }
	        else
	        	echo "<br>No se encontró el usuario...<br><br>";	

	        //$statement->free_result();	// Libera memoria utilizada por el objeto
	        //$this->db->close(); // Cierra la conexión a la base de datos
	        
	        return $resultSet;
	    }
    public function insertar(DAOusuario $usuario){
	    	//VARIABLES AUXILIARES
            $idUsuario_aux=$usuario->$idUsuario;
            $tipoDocUsuario_aux=$usuario->$tipoDocUsuario;
            $nombresUsuario_aux=$usuario->$nombresUsuario;
            $apellidosUsuario_aux=$usuario->$apellidosUsuario;
            $telefijoUsuario_aux=$usuario->$telefijoUsuario;
            $telcelularUsuario_aux=$usuario->$telcelularUsuario;
            $correoUsuario_aux=$usuario->$correoUsuario;
            $contrasenaUsuario_aux=$usuario->$contrasenaUsuario;
            $tipoResidente_aux=$usuario->$tipoResidente;
            $tipoUsuario_aux=$usuario->$tipoUsuario; 
            $apartamentoUsuario_aux=$usuario->$apartamentoUsuario;
            $direccionUsuario_aux=$usuario->$direccionUsuario;
            
        echo "DATOS DESDE EL DAO <BR>";
                echo "idUsuario ". $idUsuario_aux ."<BR>";
                 echo "tipoDocUsuario ". $tipoDocUsuario_aux ."<BR>";
                 echo "nombresUsuario ". $nonbresUsuario_aux ."<BR>";
                 echo "apellidosUsuario ". $apellidosUsuario_aux. "<BR>";
                 echo "telefijoUsuario " .$telefijoUsuario_aux ."<BR>";
                 echo "telcelularUsuario " .$tecelularUsuario_aux ."<BR>";
                 echo "correoUsuario " .$correoUsuario_aux ."<BR>";
                 echo "contrasenaUsuario " .$contrasenaUsuario_aux ."<BR>";
                 echo "tipoResidente ".$tipoResidenteUsuario. "<BR>";
                 echo "tipoUsuario ".$tipoUsuario_aux ."<BR>";
                 echo "apartamentoUsuario " .$apartamentoUsuario_aux ."<BR>";
                 echo "direccionUsuario ".$direccionUsuario_aux ."<BR>";
        
	        $statement = $this->db->query("CALL pa_insertar_usuario('$usuario->$idUsuario','$usuario->$tipoDocUsuario','$usuario->$nombresUsuario',
            '$usuario->$apellidosUsuario','$usuario->$telefijoUsuario','$usuario->$telcelularUsuario','$usuario->$correoUsuario','$usuario->$contrasenaUsuario',
            '$usuario->$tipoResidente','$usuario->$tipoUsuario', '$usuario->$apartamentoUsuario','$usuario->$direccionUsuario')");
	        if ($this->db->error){
                echo "<br>Fallo al insertar la fila en MYSQL: (" . $this->db->error . ") "."<br>";
                exit;
            }
	        else
	        	echo "<br>Registro insertado exitosamente...<br>";

	        //$statement->free_result();	// Libera memoria utilizada por el objeto
	        $this->db->close(); // Cierra la conexión a la base de datos
	    }

	    public function actualizar(DAOusuario $usuario){
	    	//VARIABLES AUXILIARES
	        $idUsuario_aux=$usuario->$idUsuario;
            $tipoDocUsuario_aux=$usuario->$tipoDocUsuario;
            $nombresUsuario_aux=$usuario->$nombresUsuario;
            $apellidosUsuario_aux=$usuario->$apellidosUsuario;
            $telefijoUsuario_aux=$usuario->$telefijoUsuario;
            $telcelularUsuario_aux=$usuario->$telcelularUsuario;
            $correoUsuario_aux=$usuario->$correoUsuario;
            $contraseñaUsuario_aux=$usuario->$contrasenaUsuario;
            $tipoResidente_aux=$usuario->$tipoResidenteUsuario;
            $tipoUsuario_aux=$usuario->$tipoUsuario; 
            $apartamentoUsuario_aux=$usuario->$apartamentoUsuario;
            $direccionUsuario_aux=$usuario->$direccionUsuario;

	        $statement = $this->db->query("CALL pa_actualizar_usuario('$idUsuario_aux','$tipoDocUsuario_aux','$nombresUsuario_aux',
            '$apellidosUsuario_aux','$telefijoUsuario_aux','$telcelularUsuario_aux','$correoUsuario_aux','$contrasenaUsuario_aux',
            '$tipoResidente_aux','$tipoUsuario_aux', '$apartamentoUsuario_aux','$direccionUsuario_aux')");

	        if ($this->db->error){
                echo "<br>Fallo al actualizar la fila en MYSQL: (" . $this->db->error . ") "."<br>";
                exit;
            }
	        else
	        	echo "<br>Registro actualizado exitosamente...<br>";

	        //$statement->free_result();	// Libera memoria utilizada por el objeto
	        $this->db->close(); // Cierra la conexión a la base de datos
	    }

	    public function eliminar($idUsuario){
	        $statement = $this->db->query("CALL pa_eliminar_usuario('$idUsuario')");
	        if ($this->db->error){
                echo "<br>Fallo al eliminar la fila en MYSQL: (" . $this->db->error . ") "."<br>";
                exit;
            }
	        else
	        	echo "<br>Registro eliminado exitosamente...<br>";
	        //$statement->free_result();	// Libera memoria utilizada por el objeto
	        $this->db->close(); // Cierra la conexión a la base de datos
	    }

	    public function inactivar($idUsuario){
	        $statement = $this->db->query("CALL pa_inactivar_usuario('$idusuario')");

	        if ($this->db->error){
                echo "<br>Fallo al eliminar la fila en MYSQL: (" . $this->db->error . ") "."<br>";
                exit;
            }
	        else
	        	echo "<br>Registro eliminado exitosamente...<br>";
	        //$statement->free_result();	// Libera memoria utilizada por el objeto
	        $this->db->close(); // Cierra la conexión a la base de datos
	    }
	}

?>

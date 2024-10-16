<?php
    class Conectar{
        public $host = 'localhost';
        public $user = 'root';
        public $pass = '';
        public $database = 'bd_santasofiaietapa';
        public $charset = 'utf8';
       
         public function conexion(){
            $con=new mysqli($this->host, $this->user, $this->pass, $this->database);
            $con->query("SET NAMES '".$this->charset."'");
            if ($con->connect_errno) {
                echo "<font color=red>";
                echo "Fallo al conectar a MySQL: (" . $con->connect_errno . ") " . $con->connect_error;
                echo "</font>";
                exit;
            }
            else
                echo "<font color=blue><b>Conexión a la base de datos conjunto exitosa...<br></b></font>";
            return $con;
        }
    }// fin clase
?>

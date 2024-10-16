<?php
    require_once '../modelo/dao.php'; 

    class usuarioController{
        
        private $modelo;
        
        public function __CONSTRUCT(){
            $this->modelo = new DAOusuario();
        }
        
        public function buscar(){
            $usr = new DAOusuario(); 
            
            if(isset($_REQUEST['idUsuario']) && !empty($_REQUEST['idUsuario'])){
                $usr = $this->modelo->buscar($_REQUEST['idUsuario']);
                return $usr;
            }
            else{
                echo "Error: no existe la variable o no se asignó un código al usuario...!";
            }
         }

        public function insertar(){
            $usr = new DAOusuario(); //Aquí cambió

            if (isset($_REQUEST['idUsuario']) && isset($_REQUEST['tipoDocUsuario']) && isset($_REQUEST['nombresUsuario']) &&  isset($_REQUEST['apellidosUsuario'])
            && isset($_REQUEST['telefijoUsuario'])  && isset($_REQUEST['telcelularUsuario'])
            && isset($_REQUEST['correoUsuario']) && isset($_REQUEST['contrasenaUsuario'])
            && isset($_REQUEST['tipoResidente']) && isset($_REQUEST['tipoUsuario'])
            && isset($_REQUEST['apartamentoUsuario']) && isset($_REQUEST['direccionUsuario'])
            ){

                $usr->idUsuario = $_REQUEST['idUsuario'];
                $usr->tipoDocUsuario = $_REQUEST['tipoDocUsuario'];
                $usr->nombresUsuario = $_REQUEST['nombresUsuario'];
                $usr->apellidosUsuario = $_REQUEST['apellidosUsuario'];
                $usr->telefijoUsuario = $_REQUEST['telefijoUsuario'];
                $usr->telcelularUsuario = $_REQUEST['telcelularUsuario'];
                $usr->correoUsuario = $_REQUEST['correoUsuario'];
                $usr->contrasenaUsuario = $_REQUEST['contrasenaUsuario'];
                $usr->tipoResidente = $_REQUEST['tipoResidente'];
                $usr->tipoUsuario = $_REQUEST['tipoUsuario'];
                $usr->apartamentoUsuario = $_REQUEST['apartamentoUsuario'];
                $usr->direccionUsuario = $_REQUEST['direccionUsuario'];
                
                echo "DATOS DESDE EL CONTROLADOR <BR>";
                echo "idUsuario ". $usr->idUsuario. "<BR>";
                 echo "tipoDocUsuario ". $usr->tipoDocUsuario. "<BR>";
                 echo "nombresUsuario ". $usr->nombresUsuario. "<BR>";
                 echo "apellidosUsuario ". $usr->apellidosUsuario. "<BR>";
                 echo "telefijoUsuario " .$usr->telefijoUsuario. "<BR>";
                 echo "telcelularUsuario " .$usr->telcelularUsuario. "<BR>";
                 echo "correoUsuario " .$usr->correoUsuario. "<BR>";
                 echo "contrasenaUsuario " .$usr->contrasenaUsuario. "<BR>";
                 echo "tipoResidente ".$usr->tipoResidente. "<BR>";
                 echo "tipoUsuario ".$usr->tipoUsuario. "<BR>";
                 echo "apartamentoUsuario " .$usr->apartamentoUsuario. "<BR>";
                 echo "direccionUsuario ".$usr->direccionUsuario. "<BR>";
                    
            
                $this->modelo->insertar($usr);

            }
            else{
                echo "Error controlador: variables del formulario usuario sin definir...!";
            }
       }

        public function actualizar(){
            $usr = new DAOusuario();//Aquí cambio

            if (isset($_REQUEST['idUsuario']) && isset($_REQUEST['tipoDocUsuario']) && isset($_REQUEST['nombresUsuario']) && isset($_REQUEST['apellidosUsuario'])
            && isset($_REQUEST['telefijoUsuario'])  && isset($_REQUEST['telcelularUsuario'])
            && isset($_REQUEST['correoUsuario']) && isset($_REQUEST['contrasenaUsuario'])
            && isset($_REQUEST['tipoResidente']) && isset($_REQUEST['tipoUsuario'])
            && isset($_REQUEST['apartamentoUsuario']) && isset($_REQUEST['direccionUsuario'])
            ){
        
                $usr->idUsuario = $_REQUEST['idUsuario'];
                $usr->tipoDocUsuario = $_REQUEST['tipoDocUsuario'];
                $usr->nombresUsuario = $_REQUEST['nombresUsuario'];
                $usr->apellidoUsuario = $_REQUEST['apellidosUsuario'];
                $usr->telefijoUsuario = $_REQUEST['telefijoUsuario'];
                $usr->celularUsuario = $_REQUEST['telcelularUsuario'];
                $usr->correoUsuario = $_REQUEST['correoUsuario'];
                $usr->contraseñaUsuario = $_REQUEST['contrasenaUsuario'];
                $usr->tipoResidente = $_REQUEST['tipoResidente'];
                $usr->tipoUsuario = $_REQUEST['tipoUsuario'];
                $usr->apartamentoUsuario = $_REQUEST['apartamentoUsuario'];
                $usr->direccionUsuario = $_REQUEST['direccionUsuario'];

                $this->modelo->actualizar($usr);
            }
            else
                echo "Error: variables del formulario usuario sin definir...!";
        }

        public function eliminar(){
            if(isset($_REQUEST['idUsuario']) && !is_null($_REQUEST['idUsuario'])){           
                $this->modelo->eliminar($_REQUEST['idUsuario']);
            }
            else{
                echo "Error: no existe la variable del formulario o no se asignó un código al usuario...!";
            }
        }

        public function inactivar(){
            if(isset($_REQUEST['idUsuario']) && !is_null($_REQUEST['idUsuario'])){           
                $this->modelo->inactivar($_REQUEST['idUsuario']);
            }
            else{
                echo "Error: no existe la variable del formulario o no se asignó un código al usuario...!";
            }
        }

    }
?>
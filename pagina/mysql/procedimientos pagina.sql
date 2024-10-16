-- activa la base de datos
use bd_santasofiaietapa;
-- PROCEDIMIENTOS ALMACENADOS PARA LA CRUD CON LA TABLA USUARIO
-- Crea una función que consulta un usuario en la base de datos por el código y retorna la fila encontrada o nulo en caso de no existir
DELIMITER $$
CREATE PROCEDURE pa_buscar_usuario ( IN param_idUsuario VARCHAR(15) )
BEGIN
  SELECT*FROM usuario WHERE idUusuario = param_idUsuario;
END; $$
DELIMITER ;

-- Procedimiento almacenado que inserta una fila de usuario en la tabla correspondiente
DELIMITER $$
CREATE PROCEDURE pa_insertar_usuario (
								IN param_idUsuario VARCHAR(15), 
								IN param_tipoDocUsuario VARCHAR(2),
								IN param_nombresUsuario  VARCHAR(30),
								IN param_apellidosUsuario VARCHAR(30),
                                IN param_telefijoUsuario VARCHAR(7),
                                IN param_telcelularUsuario VARCHAR(10),
                                IN param_correoUsuario VARCHAR(50),
                                IN param_contraseñaUsuario VARCHAR(8),
                                IN param_tipoResidente VARCHAR(13),
                                IN param_tipoUsuario VARCHAR(13),
                                IN param_apartamentoUsuario VARCHAR(5),
                                IN param_direccionUsuario VARCHAR(30)
                                )
BEGIN
	INSERT INTO usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,telefijoUsuario,telcelularUsuario,correoUsuario,contraseñaUsuario,
	tipoResidente,tipoUsuario,apartamentoUsuario,direccionUsuario)
		VALUES (param_idUsuario,param_tipoDocUsuario,param_nombresUsuario,param_apellidosUsuario,param_telefijoUsuario,param_telcelularUsuario,
		param_correoUsuario,param_contraseñaUsuario,param_tipoResidente,param_tipoUsuario,param_apartamentoUsuario,param_direccionUsuario);
END $$
DELIMITER ;

-- Modifica los datos del usuario en la tabla según los datos enviados desde el formulario
DELIMITER $$
CREATE PROCEDURE pa_actualizar_usuario (
								IN param_idUsuario VARCHAR(15), 
								IN param_tipoDocUsuario VARCHAR(2),
								IN param_nombresUsuario  VARCHAR(30),
								IN param_apellidosUsuario VARCHAR(30),
                                IN param_telefijoUsuario VARCHAR(7),
                                IN param_telcelularUsuario VARCHAR(10),
                                IN param_correoUsuario VARCHAR(50),
                                IN param_contraseñaUsuario VARCHAR(8),
                                IN param_tipoResidente VARCHAR(13),
                                IN param_tipoUsuario VARCHAR(13),
                                IN param_apartamentoUsuario VARCHAR(5),
                                IN param_direccionUsuario VARCHAR(30)
                                )
BEGIN
	UPDATE usuario SET idUsuario=param_idUsuario,tipoDocUsuario=param_tipoDocUsuario,nombresUsuario=param_nombresUsuario,apellidosUsuario=param_apellidosUsuario,
    telefijoUsuario=param_telefijoUsuario,telcelularUsuario=param_telcelularUsuario,correoUsuario=param_correoUsuario,contraseñaUsuario=param_contraseñaUsuario,
    tipoResidente=param_tipoResidente,tipoUsuario=param_tipoUsuario,apartamentoUsuario=param_apartamentoUsuario,direccionUsuario=param_direccionUsuario WHERE idUsuario = param_idUsuario;
END $$
DELIMITER ;

-- Procedimiento almacenado que elimina una fila de la tabla usuario según el código enviado desde el formulario
DELIMITER $$
CREATE PROCEDURE pa_eliminar_usuario (IN param_idUsuario VARCHAR(15))
BEGIN
	DELETE FROM usuario WHERE idUsuario = param_idUsuario;
END $$
DELIMITER ;

-- procedimiento almacenado que inactiva un usuario en la tabla según el código enviado desde el formulario
DELIMITER $$
CREATE PROCEDURE pa_inactivar_usuario (IN param_idUsuario VARCHAR(15))
BEGIN
	UPDATE usuario SET estado = "inactivo" WHERE idUsuario = param_idUsuario;
END $$
DELIMITER ;

select  apellidosUsuario,nombresUsuario from usuario where idUsuario >(select avg(idUsuario)from usuario);
select idParqueadero,tipoParqueadero from parqueadero where idParqueadero <(select avg (idParqueadero) from parqueadero);
select  placaVehiculo,tipoVehiculo from vehiculo where placaVehiculo =(select avg(placaVehiculo)from vehiculo);


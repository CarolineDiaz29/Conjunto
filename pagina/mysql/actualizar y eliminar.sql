SET SQL_SAFE_UPDATES = 0;
 
 use bd_santasofiaietapa;
 (--Replace) 
update vehiculo set marcaVehiculo= replace(marcaVehiculo, 'honda', 'chevrolet') where placaVehiculo='BRL099';
update vehiculo set marcaVehiculo= replace(marcaVehiculo, 'honda', 'chevrolet') where placaVehiculo='DDO779';
update vehiculo set marcaVehiculo= replace(marcaVehiculo, 'honda', 'chevrolet') where placaVehiculo='RCR676';
update vehiculo set marcaVehiculo= replace(marcaVehiculo, 'chevrolet', 'honda') where placaVehiculo='OSD986';
update vehiculo set marcaVehiculo= replace(marcaVehiculo, 'honda', 'toyota') where placaVehiculo='OSD986';

update vehiculo set colorVehiculo='rojo'where placaVehiculo='OSD986';
update vehiculo set colorVehiculo='gris'where placaVehiculo='DDO779';
update usuario set contraseñaUsuario='rst123'where idUsuario='5';
update controlvehicular set tipoNovedad='leve'where idNovedad='1';
update registrovisitas set tipoVehiculoVisita='moto'where idRegistroVisitas='5';
update vehiculo set lineaVehiculo='privado'where placaVehiculo='RCR676';
update vehiculo set colorVehiculo='blanco'where placaVehiculo='NOS777';
update vehiculo set modeloVehiculo='2004/00/00'where placaVehiculo='BRL099';
update usuario set nombresUsuario='Sara'where idUsuario='4';
update parqueadero set idParqueadero='17C'where idParqueadero='1C';

set foreign_key_checks=0;


delete from parqueadero where idParqueadero='1M';
delete from vehiculo where placaVehiculo='BRL099';
delete from registrovisitas where idRegistroVisitas='5';
delete from usuario where idUsuario='10';
delete from controlvehicular where idNovedad='5';

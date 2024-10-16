DELIMITER //

create procedure usuarioxparqueadero (in id int)
begin 
select*from usuario where idUsuario='';
end 
;

DELIMITER //

create procedure cuentacobroxparqueadero (in fecha int)
begin 
select*from cuentacobro where fechaCuenta='' ;
end 
;

DELIMITER //

create procedure anuncioxparqueadero (in mensaje int)
begin 
select*from anuncio where mensajeAnuncio='' ;
end 
;

DELIMITER //

create procedure vehiculoxregistrovisitas (in hora int)
begin 
select*from vehiculo where horaIngresoVista='' ;
end 
;

DELIMITER //

create procedure apartamentoxdetallecuenta (in id int)
begin 
select*from apartamento where idApartamento='' ;
end 
;
DELIMITER //

create procedure controlvehicularxcuentacobro (in tipo int)
begin 
select*from controlvehicular where tipoNovedad='' ;
end 
;
DELIMITER //

create procedure detallecuentaxregistrovisitas (in id int)
begin 
select*from detallecuenta where idDetalleCuenta='' ;
end 
;
DELIMITER //

create procedure rubroxregistrovisitas (in id int)
begin 
select*from rubro where idRubro='' ;
end 
;

DELIMITER //
create procedure visitantexregistrovisitas (in id int)
begin 
select*from visitante where idVisitante='' ;
end 
;
DELIMITER //
create procedure registrovisitasxvisitante (in id int)
begin 
select*from registrovisitas where idRegistroVisitas='' ;
end 
;
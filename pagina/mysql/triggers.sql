DELIMITER //

create trigger usuariotrigger before insert on  usuario
 for each row begin 
insert into temp(nombresUsuario) values (new.nombresUsuario);
end ;

DELIMITER //

create trigger parqueaderotrigger before insert on  parqueadero
 for each row begin 
insert into temp(idParqueadero) values (new.idParqueadero);
end ;

DELIMITER //

create trigger cuentacobrotrigger before insert on  cuentacobro
 for each row begin 
insert into temp(idCuenta) values (new.idCuenta);
end ;

DELIMITER //

create trigger anunciotrigger before insert on  anuncio
 for each row begin 
insert into temp(idAnuncio) values (new.idAnuncio);
end ;


DELIMITER //

create trigger vehiculotrigger before insert on  vehiculo
 for each row begin 
insert into temp(placaVehiculo) values (new.placaVehiculo);
end ;

DELIMITER //

create trigger cuentacobrotrigger before insert on  cuentacobro
 for each row begin 
insert into temp(idCuenta) values (new.idCuenta);
end ;

DELIMITER //

create trigger detallecuentatrigger before insert on  detallecuenta
 for each row begin 
insert into temp(idDetalleCuenta) values (new.idDetalleCuenta);
end ;

DELIMITER //

create trigger apartamentotrigger before insert on  apartamento
 for each row begin 
insert into temp(idApartamento) values (new.idApartamento);
end ;

DELIMITER //

create trigger rubrotrigger before insert on  rubro
 for each row begin 
insert into temp(idRubro) values (new.idRubro);
end ;

DELIMITER //

create trigger vehiculotrigger before insert on  vehiculo
 for each row begin 
insert into temp(placaVehiculo) values (new.placaVehiculo);
end ;

DELIMITER //

create trigger visitantetrigger before insert on  visitante
 for each row begin 
insert into temp(idVisitante) values (new.idVisitante);
end ;

DELIMITER //

create trigger registrovisitastrigger before insert on  registrovisitas
 for each row begin 
insert into temp(idRegistroVisitas) values (new.idRegistroVisitas);
end ;

use bd_santasofiaietapa;
 /*inner join*/
SELECT u.idUsuario, u.nombresUsuario,u.apellidosUsuario, c.idCuenta, c.fechaCuenta
FROM usuario AS u inner join cuentacobro as c 
on u.idUsuario=c.idCuenta;
 
SELECT u.idUsuario, u.nombresUsuario,u.apellidosUsuario,a.idAnuncio,a.tituloAnuncio  
FROM usuario AS u inner join anuncio as a 
on u.idUsuario=a.idAnuncio
where a.idAnuncio='1';

SELECT v.idvisitante, v.apellidovisitante,v.nombrevisitante, c.idCuenta, c.fechaCuenta
 FROM visitante AS v inner join cuentacobro as c 
 on v.idVisitante=c.idCuenta
 where v.idVisitante='5';
 
 SELECT p.idParqueadero, p.tipoParqueadero,p.usoParqueadero, c.idCuenta, c.fechaCuenta
 FROM parqueadero AS p inner join cuentacobro as c 
 on p.idParqueadero=c.idCuenta
 where p.idParqueadero ='1M';
 
 /*left join*/
SELECT u.idUsuario, u.nombresUsuario, c.idCuenta, c.fechaCuenta 
FROM usuario AS u left join cuentacobro as c 
on u.idUsuario=c.idCuenta;

SELECT u.idUsuario,u.nombresUsuario,u.apellidosUsuario,r.idRegistroVisitas,r.fechaIngresoVisita, r.horaIngresoVista 
FROM usuario AS u left join registrovisitas as r
on u.idUsuario=r.idRegistroVisitas
where r.idRegistroVisitas='3';

SELECT v.idvisitante, v.nombrevisitante, c.idCuenta, c.fechaCuenta 
FROM visitante AS v left join cuentacobro as c 
on v.idvisitante=c.idCuenta
where c.idCuenta='4';

SELECT p.idParqueadero, p.tipoParqueadero, c.idCuenta, c.fechaCuenta 
FROM parqueadero AS p left join cuentacobro as c 
on p.idParqueadero=c.idCuenta
where p.idParqueadero='1C';

/*right join*/
SELECT u.idUsuario, u.nombresUsuario, c.idCuenta, c.fechaCuenta 
FROM usuario AS u right join cuentacobro as c 
on u.idUsuario=c.idCuenta;

SELECT u.idUsuario, u.nombresUsuario,u.apellidosUsuario,a.idApartamento,a.interiorApartamento,a.numeroApartamento
FROM usuario AS u right join apartamento as a 
on u.idUsuario=a.idApartamento
where a.idApartamento='1';

SELECT v.idvisitante, v.nombrevisitante, c.idCuenta, c.fechaCuenta 
FROM visitante AS v right join cuentacobro as c 
on v.idvisitante=c.idCuenta
where c.idCuenta='3';

SELECT p.idParqueadero, p.tipoParqueadero, c.idcuenta, c.fechaCuenta 
FROM parqueadero AS p right join cuentacobro as c 
on p.idParqueadero=c.idCuenta;
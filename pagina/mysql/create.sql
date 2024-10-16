/*CREAR*/
create database bd_santasofiaIetapa;
use bd_santasofiaIetapa;

create table usuario (
idUsuario varchar(15) primary key not null,
tipoDocUsuario varchar(2) not null,
nombresUsuario varchar(30) not null,
apellidosUsuario varchar(30) not null,
telefijoUsuario varchar(7) not null,
telcelularUsuario varchar(10) not null,
correoUsuario varchar(50) not null,
contraseñaUsuario varchar(8) not null,
tipoResidente varchar (13) null,
tipoUsuario varchar(13) not null,
apartamentoUsuario varchar(5) null,
direccionUsuario varchar(30)null
);
 
 create table cuentacobro (
idCuenta int primary key not null,
fechaCuenta date ,
periodoCuenta varchar(9) not null,
estadoCuenta varchar(8) not null,
totalCuenta double,
idUsuarioFK varchar(15) not null,
fechaPagoOportunoCuenta date not null,
fechaConsignacionCuentas date null,
foreign key (idUsuarioFK) references usuario (idUsuario)
);

create table detallecuenta(
idDetalleCuenta int primary key not null auto_increment,
descripcionDetalleCuenta varchar(30) not null,
valorDetalleCuenta double not null,
 idCuentaFK int not null,
 foreign key (idCuentaFK) references cuentacobro (idCuenta)
);
 
 create table parqueadero(
 idParqueadero varchar(4) primary key not null,
 tipoParqueadero varchar(7) not null,
 usoParqueadero varchar(8) not null,
 estadoParqueadero varchar(13) not null,
  idUsuarioFK varchar(15) not null,
 foreign key (idUsuarioFK) references usuario (idUsuario),
 placaVehiculoFK varchar (6) not null,
 foreign key (placaVehiculoFK) references vehiculo (placaVehiculo)
 );

create table registrovisitas (
idRegistroVisitas int primary key not null,
idUsuarioFk varchar (15) not null,
foreign key (idUsuarioFk) references usuario (idUsuario),
idVisitanteFK varchar(15) not null,
foreign key (idVisitanteFK) references visitante (idVisitante),
fechaIngresoVisita date not null,
horaIngresoVista time not null,
fechaSalidaVisita date not null,
horaSalidaVisita time not null,
tipoVehiculoVisita varchar(5) not null,
placaVehiculoVisita varchar(6) not null
);

create table anuncio(
idAnuncio int primary key not null,
tituloAnuncio varchar(30) not null,
mensajeAnuncio varchar(200) null,
fechainicioAnuncio date not null,
fechaFinAnuncio date not null,
 idUsuarioFK varchar(15) not null,
 foreign key (idUsuarioFK) references usuario (idUsuario),
 imagenAnuncio Blob null
);

create table vehiculo (
placaVehiculo varchar(6) primary key not null,
tipoVehiculo varchar(7) not null,
marcaVehiculo varchar(15) not null,
modeloVehiculo date not null,
colorVehiculo varchar(15) not null,
lineaVehiculo varchar(15),
cilindrajeVehiculo varchar(4)
);

create table controlvehicular(
idNovedad int primary key not null,
tipoNovedad varchar(7) not null,
fechaNovedad date not null,
horaNovedad time(6) not null,
placaVehiculoFK varchar(6) not null,
foreign key (placaVehiculoFK) references vehiculo (placaVehiculo),
idParqueaderoFk varchar(7) not null,
foreign key (idParqueaderoFk) references parqueadero (idParqueadero)
);

create table visitante(
idVisitante varchar(15) primary key not null,
tipoVisitante varchar(2) not null,
nombreVisitante varchar(30) not null,
apellidoVisitante varchar(30) not null
);

create table apartamento(
idApartamento varchar(5) primary key not null,
interiorApartamento varchar(2) not null,
numeroApartamento varchar(3) not null,
idUsuarioFK varchar(15) not null,
 foreign key (idUsuarioFK) references usuario (idUsuario)
 );
 
 create table rubro (
 idRubro int primary key not null,
 nombreRubro varchar(30) not null,
 descripcionRubro varchar(60) not null,
 valorRubro double not null
 );
 
 /*Insertar*/
 /*USUARIO*/
insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario)values ('1','CC','Ingrid','Sarmiento','Propietario','3193734543','3936759','IngridSarmiento','Ingrid12',
'1A404','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario) values ('2','PA','Camila','Villalobos','Arrendatario','3107894123','8960257','FelipeDIaz14','felipe12',
'5A504','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario) values ('3','CC','Laura','Contreras','Vigilante','3143561479','3689012','LauraContreras45','laura123',
0,'Calle-12-sur-98-30');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario) values ('4','CC','Gloria','Garzon','Propietario','3204588796','9865471','GloriaGarzon','gloria12',
'5A601','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario) values ('5','PA','Ruben','Salazar','aseo','3175640123','5201479',0,0,
0,'Calle-12-sur-25-64');


/*PARQUEADERO*/
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('1M','moto','Prop','Disponible','4','NOS777');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('28C','carro','Visit','Disponible','3','RCR676');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('10C','carro','Prop','Ocupado','5','DDO779');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('8M','moto','visit','Disponible','2','OSD986');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('1C','carro','prop','Disponible','1','BRL099');

/*REGISTRO DE VISITAS*/

insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('1','2','1','2020/07/14','8:37','2020/07/14','15:14','moto','IDS35P');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('2','4','2','2020/03/15','7:30','2020/03/16','15:14','carro','DDO758');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('3','5','4','2020/10/10','15:00','2020/10/10','16:00','moto','YRT478');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('4','1','5','2020/08/2','9:30','2020/08/14','19:02','moto','QWE987');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('5','3','3','2020/05/18','11:50','2020/05/18','14:02 ','carro','NRT012');

/*VISITANTES*/
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('1','ma','caroline','diaz');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('2','ma','Patricia','Reyes');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('3','ma','Leidy','Franco');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('4','ma','Luis','Diaz');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('5','ma','Pablo','Rojas');

/*VEHICULO*/
insert into vehiculo (placaVehiculo,tipoVehiculo,marcaVehiculo,modeloVehiculo,colorVehiculo,lineaVehiculo,cilindrajeVehiculo)
values('OSD986','moto','chevrolet','2005/00/00','negro','particular','alto');
insert into vehiculo (placaVehiculo,tipoVehiculo,marcaVehiculo,modeloVehiculo,colorVehiculo,lineaVehiculo,cilindrajeVehiculo)
values('DDO779','carro','chevrolet','2010/00/00','negro','particular','alto');
insert into vehiculo (placaVehiculo,tipoVehiculo,marcaVehiculo,modeloVehiculo,colorVehiculo,lineaVehiculo,cilindrajeVehiculo)
values('NOS777','moto','Suzuki','2011/00/00','negro','particular','bajo');
insert into vehiculo (placaVehiculo,tipoVehiculo,marcaVehiculo,modeloVehiculo,colorVehiculo,lineaVehiculo,cilindrajeVehiculo)
values('BRL099','carro','chevrolet','2005/00/00','azul','particular','alto');
insert into vehiculo (placaVehiculo,tipoVehiculo,marcaVehiculo,modeloVehiculo,colorVehiculo,lineaVehiculo,cilindrajeVehiculo)
values('RCR676','carro','chevrolet','2005/00/00','blanco','particular','alto');

/*CONTROL VEHICULAR*/
insert into controlvehicular (idNovedad,tipoNovedad,fechaNovedad,horaNovedad,placaVehiculoFK,idParqueaderoFk)
values ('1','urgente','2020/07/14','6:14','RCR676','28C');
insert into controlvehicular (idNovedad,tipoNovedad,fechaNovedad,horaNovedad,placaVehiculoFK,idParqueaderoFk)
values ('2','urgente','2020/06/23','5:06','BRL099','1C');
insert into controlvehicular (idNovedad,tipoNovedad,fechaNovedad,horaNovedad,placaVehiculoFK,idParqueaderoFk)
values ('3','urgente','2020/03/17','9:15','NOS777','1M');
insert into controlvehicular (idNovedad,tipoNovedad,fechaNovedad,horaNovedad,placaVehiculoFK,idParqueaderoFk)
values ('4','leve','2020/05/01','11:14','DDO779','10C');
insert into controlvehicular (idNovedad,tipoNovedad,fechaNovedad,horaNovedad,placaVehiculoFK,idParqueaderoFk)
values ('5','urgente','2020/07/08','6:14','OSD986','8M');

/*ANUNCIO*/

insert into anuncio (idAnuncio,tituloAnuncio,mensajeAnuncio ,fechainicioAnuncio ,fechaFinAnuncio ,idUsuarioFK,imagenAnuncio)
values ('1','CELEBRACION DE HALLOWEN','Dia 31 de octubre','2019/10/20','2019/11/01','1','comunal.jpg');
insert into anuncio (idAnuncio,tituloAnuncio,mensajeAnuncio ,fechainicioAnuncio ,fechaFinAnuncio ,idUsuarioFK,imagenAnuncio)
values ('2','ENTRADA VISITANTES','Prohibido visitas','2020/3/16','2020/12/31','2','menu.JPG');
insert into anuncio (idAnuncio,tituloAnuncio,mensajeAnuncio ,fechainicioAnuncio ,fechaFinAnuncio ,idUsuarioFK,imagenAnuncio)
values ('3','COMETAS DIA LUNES MES AGOSTO','T 1 2:00 pm a 4:00pm','2020/08/01','2020/08/31','3','comunal.jpg');
insert into anuncio (idAnuncio,tituloAnuncio,mensajeAnuncio ,fechainicioAnuncio ,fechaFinAnuncio ,idUsuarioFK,imagenAnuncio)
values ('4','Dia de la madre ','Amor para mamá ','2020/05/12','2020/05/14','5','comunal.jpg');
insert into anuncio (idAnuncio,tituloAnuncio,mensajeAnuncio ,fechainicioAnuncio ,fechaFinAnuncio ,idUsuarioFK,imagenAnuncio)
values ('5','AMOR Y AMISTAD','16 de septiembre','2020/09/16','2020/09/16','4','comunal.jpg');

/*CUENTA DE COBRO*/
insert into cuentacobro (idCuenta,fechaCuenta,periodoCuenta,estadoCuenta,totalCuenta,idUsuarioFK,fechaPagoOportunoCuenta,fechaConsignacionCuentas)
values ('1','2012/05/14','8 años','al dia','0','1','2020/07/04','2020/07/04');
insert into cuentacobro (idCuenta,fechaCuenta,periodoCuenta,estadoCuenta,totalCuenta,idUsuarioFK,fechaPagoOportunoCuenta,fechaConsignacionCuentas)
values ('2','2019/08/14','1 año','sinpagar','1958000','3','0000/00/00','0000/00/00');
insert into cuentacobro (idCuenta,fechaCuenta,periodoCuenta,estadoCuenta,totalCuenta,idUsuarioFK,fechaPagoOportunoCuenta,fechaConsignacionCuentas)
values ('3','2018/03/23','2 años','sinpagar','10000','2','2020/08/05','2020/08/05');
insert into cuentacobro (idCuenta,fechaCuenta,periodoCuenta,estadoCuenta,totalCuenta,idUsuarioFK,fechaPagoOportunoCuenta,fechaConsignacionCuentas)
values ('4','2003/05/14','3 años','al dia','35000','5','2020/07/04','2020/04/23');
insert into cuentacobro (idCuenta,fechaCuenta,periodoCuenta,estadoCuenta,totalCuenta,idUsuarioFK,fechaPagoOportunoCuenta,fechaConsignacionCuentas)
values ('5','2019/11/14','6 meses','sinpagar','40000','4','2020/08/02','2020/08/06');

/*APARTAMENTO*/
insert into apartamento (idApartamento,interiorApartamento,numeroApartamento,idUsuarioFK)
values ('1','1','404','1');
insert into apartamento (idApartamento,interiorApartamento,numeroApartamento,idUsuarioFK)
values ('2','5','504','2');
insert into apartamento (idApartamento,interiorApartamento,numeroApartamento,idUsuarioFK)
values ('3','5','601','4');


use bd_santasofiaietapa;
 /*replace*/ 
update vehiculo set marcaVehiculo= replace(marcaVehiculo, 'chevrolet', 'honda') where placaVehiculo='OSD986';
update usuario set tipoResidente= replace(tipoResidente, '', 'arrendatario') where idUsuario='1';
update usuario set tipoResidente= replace(tipoResidente, '', 'propietario') where idUsuario='1';
update usuario set tipoResidente= replace(tipoResidente, '', 'arrendatario') where idUsuario='2';
update usuario set tipoResidente= replace(tipoResidente, '', 'propietario') where idUsuario='3';

/*modificar*/
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

/*eliminar*/
delete from parqueadero where idParqueadero='1M';
delete from vehiculo where placaVehiculo='BRL099';
delete from registrovisitas where idRegistroVisitas='5';
delete from usuario where idUsuario='10';
delete from controlvehicular where idNovedad='5';

use bd_santasofiaietapa;
/*WHERE*/
select*from visitante;
select*from visitante where idVisitante='1';
select*from usuario where idUsuario='5';
select*from usuario where nombresUsuario='carlos';
select*from usuario where contraseñaUsuario='leidy';
select*from parqueadero where idParqueadero='28C';
select*from usuario where contraseñaUsuario='10';
select*from usuario where contraseñaUsuario='10';
select*from visitante where idvisitante='1';
select*from usuario where tipousuario='propietario';
select*from controlvehicular;
select*from controlvehicular where tipoNovedad='leve';
select*from vehiculo where tipovehiculo='moto';
select*from vehiculo where marcaVehiculo='toyota';
select*from parqueadero where idParqueadero='1C';
select*from usuario where apartamentoUsuario='1A104';
select*from registrovisitas;
select*from usuario where apartamentoUsuario='5A604';
select*from parqueadero;
select*from usuario;

/*OPERADORES RELACIONALES*/
select idUsuario,tipoDocUsuario from usuario where idUsuario<'5';
select tipoVisitante from visitante where tipoVisitante ='moto';
select idParqueadero from parqueadero where idParqueadero <='2';
select apartamentoUsuario from usuario where apartamentoUsuario>'1A404';
select idParqueadero from parqueadero where idParqueadero<>'2';
select idRegistroVisitas from registrovisitas where idRegistroVisitas <>'2';
select placaVehiculo,tipoVehiculo from vehiculo where tipoVehiculo>'carro';

/*OPERADORES LOGICOS*/
select*from usuario where idUsuario and nombresUsuario ='ingrid';
select*from parqueadero  where idParqueadero or tipoParqueadero ='carro';
select*from usuario where idUsuario XOR nombresUsuario ='julian';
select*from vehiculo where marcaVehiculo and placaVehiculo ='chevrolet';
select*from usuario where tipousuario and apartamentoUsuario='2A303';
select*from parqueadero where tipoparqueadero and idparqueadero ='5';
select*from controlvehicular where idNovedad XOR tipoNovedad='urgente';

/*COLUMNAS CALCULADORAS*/
select idUsuario*telcelularUsuario from usuario; 
select placaVehiculo*modeloVehiculo from vehiculo; 
select idusuario*tipoDocUsuario from usuario;

 /*like--notlike*/
 
select*from usuario where idUsuario like'1%';
select*from usuario where idUsuario not like '5%';
select*from vehiculo where tipovehiculo like'1%';

/*HAVING*/

select idUsuario from usuario having idUsuario;
select idParqueadero from parqueadero having idParqueadero='2';
select contraseñaUsuario from usuario having contraseñaUsuario;


/*groupby*/

select idVisitante from visitante group by  idVisitante;
select placaVehiculo from vehiculo group by  placaVehiculo;
select idUsuario from usuario group by  idUsuario;

/*order--by*/
select idVisitante from visitante order by  idVisitante;
select idUsuario from usuario order by  idUsuario;
select placaVehiculo from vehiculo order by  placaVehiculo;
select idNovedad from controlvehicular order by  idNovedad;
select idParqueadero from parqueadero order by  idParqueadero;
select idRegistroVisitas from registrovisitas order by idRegistroVisitas;

/*consultamultitablas*/
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

/*subconsultas*/
select  apellidosUsuario,nombresUsuario from usuario where idUsuario >(select avg(idUsuario)from usuario);
select idParqueadero,tipoParqueadero from parqueadero where idParqueadero <(select avg (idParqueadero) from parqueadero);
select  placaVehiculo,tipoVehiculo from vehiculo where placaVehiculo =(select avg(placaVehiculo)from vehiculo);

/*procedimiento almacenados*/
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

/*trigger*/
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

create trigger visitantetrigger before insert on  visitante
 for each row begin 
insert into temp(idVisitante) values (new.idVisitante);
end ;

DELIMITER //

create trigger registrovisitastrigger before insert on  registrovisitas
 for each row begin 
insert into temp(idRegistroVisitas) values (new.idRegistroVisitas);
end ;


/*vistas*/
select * from usuario ;
create view v_usuario as 
select idUsuario,nombresUsuario,apellidosUsuario from usuario;
select*from v_usuario;

select * from registrovisitas;
create view v_registrovisitas as 
select idRegistroVisitas,fechaIngresoVisita,fechaSalidaVisita from registrovisitas;
select*from v_registrovisitas;

select * from parqueadero ;
create view v_parqueadero as 
select idparqueadero,tipoparqueadero,usoParqueadero from parqueadero;
select*from v_parqueadero;



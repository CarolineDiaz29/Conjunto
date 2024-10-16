USUARIO
insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario,idParqueaderoFK) values ('1','CC','Ingrid','Sarmiento','Propietario','3193734543','3936759','IngridSarmiento','Ingrid12',
'1A404','Calle-42-sur-12-55','8M');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario,idParqueaderoFK) values ('2','PA','Camila','Villalobos','Arrendatario','3107894123','8960257','FelipeDIaz14','felipe12',
'5A504','Calle-42-sur-12-55','1C');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario,idParqueaderoFK) values ('3','CC','Laura','Contreras','Vigilante','3143561479','3689012','LauraContreras45','laura123',
0,'Calle-12-sur-98-30','28C');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario,idParqueaderoFK) values ('4','CC','Gloria','Garzon','Propietario','3204588796','9865471','GloriaGarzon','gloria12',
'5A601','Calle-42-sur-12-55','1M');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
apartamentoUsuario,direccionUsuario,idParqueaderoFK) values ('5','PA','Ruben','Salazar','aseo','3175640123','5201479',0,0,
0,'Calle-12-sur-25-64','10C');


PARQUEADERO
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

REGISTRO DE VISITAS

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

VISITANTES 
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('1','ma','caroline','diaz');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('2','ma','Patricia','Reyes');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('3','ma','Leidy','Franco');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('4','ma','Luis','Diaz');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('5','ma','Pablo','Rojas');

VEHICULO
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

CONTROL VEHICULAR
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

ANUNCIO

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

CUENTA DE COBRO
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

APARTAMENTO
insert into apartamento (idApartamento,interiorApartamento,numeroApartamento,idUsuarioFK)
values ('1','1','404','1');
insert into apartamento (idApartamento,interiorApartamento,numeroApartamento,idUsuarioFK)
values ('2','5','504','2');
insert into apartamento (idApartamento,interiorApartamento,numeroApartamento,idUsuarioFK)
values ('3','5','601','4');








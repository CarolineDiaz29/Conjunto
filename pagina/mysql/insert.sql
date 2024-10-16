USUARIO

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('1','CC','Carlos','Rojas','Propietario','3186596030','4785115','carlosrojas18','carlos12','Empleado',
'2A301','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('2','PA','Camila','Villalobos','Arrendatario','3107894123','8960257','FelipeDIaz14','felipe12',
'Empleado','5A504','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('3','CC','Laura','Contreras','Vigilante','3143561479','3689012','LauraContreras45','laura123',
'Empleado',0,'Calle-12-sur-98-30');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('4','CC','Gloria','Garzon','Propietario','3204588796','9865471','GloriaGarzon','gloria12',
'Amacasa','5A601','Calle-42-sur-12-55');


insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('5','PA','Ruben','Salazar','aseo','3175640123','5201479',0,0,'Empleado',
0,'Calle-12-sur-25-64');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('6','CC','Ingrid','Sarmiento','Propietario','3193734543','3936759','IngridSarmiento','Ingrid12',
'Vendedor','1A404','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('7','CC','Sandra','Peña','Arrendatario','3165048974','2458317','PabloRodriguez','pablo123',
'Empleado','4A202','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('8','PA','julian','Mora','Arrendatario','3154200111','2387012','Analondoño','home2344',
'Empleado','3A603','Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('9','CC','Clara','López','vigilante','3125411023','7896421','claritaloz1','home8794',
'Empleado',0,'Calle-42-sur-12-55');

insert into usuario (idUsuario,tipoDocUsuario,nombresUsuario,apellidosUsuario,tipoUsuario,telcelularUsuario,telefijoUsuario,correoUsuario,contraseñaUsuario,
ocupacionUsuario,apartamentoUsuario,direccionUsuario) values ('10','CC ','Ana','Londoño','Propietario','3186534655','4765791','Analondoño','londoñoA',
'Empleado','2A404','Calle-42-sur-12-55');

PARQUEADERO
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('1M','moto','Prop','Disponible','6','NOS777');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('28C','carro','Visit','Disponible','10','RCR676');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('10C','carro','Prop','Ocupado','5','DDO779');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('8M','moto','Prop','Disponible','9','OSD986');
insert into parqueadero (idParqueadero,tipoParqueadero,usoParqueadero,estadoParqueadero,idUsuarioFK,placaVehiculoFK) 
values ('1C','carro','Visit','Disponible','6','BRL099');

REGISTRO DE VISITAS

insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('1','7','1','2020/07/14','8:37','2020/07/14','15:14','moto','IDS35P');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('2','4','2','2020/03/15','7:30','2020/03/16','15:14','carro','DDO758');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('3','8','4','2020/10/10','15:00','2020/10/10','16:00','moto','YRT478');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('4','9','5','2020/08/2','9:30','2020/08/14','19:02','moto','QWE987');
insert into registrovisitas (idRegistroVisitas,idUsuarioFk,idVisitanteFK,fechaIngresoVisita,horaIngresoVista,fechaSalidaVisita,horaSalidaVisita,
tipoVehiculoVisita,placaVehiculoVisita) values ('5','5','3','2020/05/18','11:50','2020/05/18','14:02 ','carro','NRT012');

VISITANTES 
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('1','ma','caroline','diaz');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('2','ma','Patricia','Reyes');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('3','ma','Leidy','Franco');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('4','ma','Luis','Diaz');
insert into visitante (idVisitante,tipoVisitante,nombreVisitante,apellidoVisitante)values('5','ma','Pablo','Rojas');

VEHICULO
insert into vehiculo (placaVehiculo,tipoVehiculo,marcaVehiculo,modeloVehiculo,colorVehiculo,lineaVehiculo,cilindrajeVehiculo)
values('OSD986','moto','honda','2005/00/00','negro','particular','alto');
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
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

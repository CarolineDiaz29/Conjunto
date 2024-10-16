use bd_santasofiaietapa;
(--WHERE)
select*from visitante;
select*from visitante where idVisitante='1';
select*from usuario where idUsuario='6';
select*from usuario where nombresUsuario='carlos';
select*from usuario where contraseñaUsuario='leidy';
select*from parqueadero where idParqueadero='28C';
select*from usuario where contraseñaUsuario='10';
select*from usuario where contraseñaUsuario='10';
 select*from visitante where idvisitante='8';
select*from usuario where tipousuario='propietario';
select*from controlvehicular;
select*from controlvehicular where tipoNovedad='leve';
select*from vehiculo where tipovehiculo='moto';
select*from vehiculo where marcaVehiculo='toyota';
select*from parqueadero where idParqueadero='1C';
select*from usuario where apartamentoUsuario='1A104';
select*from registrovisitas;
select*from usuario where apartamentoUsuario='2A203';
select*from parqueadero;
select*from usuario;

(--OPERADORES RELACIONALES)
select idUsuario,tipoDocUsuario from usuario where idUsuario<'5';
select tipoVisitante from visitante where tipoVisitante ='moto';
select idParqueadero from parqueadero where idParqueadero <='2';
select apartamentoUsuario from usuario where apartamentoUsuario>'1A404';
select idParqueadero from parqueadero where idParqueadero<>'2';
select idRegistroVisitas from registrovisitas where idRegistroVisitas <>'2';
select placaVehiculo,tipoVehiculo from vehiculo where tipoVehiculo>'carro';

(--OPERADORES LOGICOS) 
select*from usuario where idUsuario and nombresUsuario ='ingrid';
select*from parqueadero  where idParqueadero or tipoParqueadero ='carro';
select*from usuario where idUsuario XOR nombresUsuario ='julian';
select*from vehiculo where marcaVehiculo and placaVehiculo ='chevrolet';
select*from usuario where tipousuario and apartamentoUsuario='2A303';
select*from parqueadero where tipoparqueadero and idparqueadero ='5';
select*from controlvehicular where idNovedad XOR tipoNovedad='urgente';

(--COLUMNAS CALCULADORAS) 
select idUsuario*telcelularUsuario from usuario; 
select placaVehiculo*modeloVehiculo from vehiculo; 
select idusuario*tipoDocUsuario from usuario;

 (--like--notlike)
 
select*from usuario where idUsuario like'1%';
select*from usuario where idUsuario not like '5%';
select*from vehiculo where tipovehiculo like'1%';

(--HAVING) 

select idUsuario from usuario having idUsuario;
select idParqueadero from parqueadero having idParqueadero='2';
select contraseñaUsuario from usuario having contraseñaUsuario;


(--groupby)

select idVisitante from visitante group by  idVisitante;
select placaVehiculo from vehiculo group by  placaVehiculo;
select idUsuario from usuario group by  idUsuario;

(--order--by )
select idVisitante from visitante order by  idVisitante;
select idUsuario from usuario order by  idUsuario;
select placaVehiculo from vehiculo order by  placaVehiculo;
select idNovedad from controlvehicular order by  idNovedad;
select idParqueadero from parqueadero order by  idParqueadero;
select idRegistroVisitas from registrovisitas order by idRegistroVisitas;

create table vuelos (
	id int,
	destino varchar(255),
	nro_vuelo varchar(255)
);
insert into vuelos (id,destino, nro_vuelo) values (1,'MEXICO','3012');
insert into vuelos (id,destino, nro_vuelo) values (2,'HOLANDA','29182');
insert into vuelos (id,destino, nro_vuelo) values (3,'COLOMBIA','2434');
insert into vuelos (id,destino, nro_vuelo) values (4,'PERU','2324');
insert into vuelos (id,destino, nro_vuelo) values (5,'BELGICA','5677');
insert into vuelos (id,destino, nro_vuelo) values (6,'TURQUIA','6789');
insert into vuelos (id,destino, nro_vuelo) values (7,'ALEMANIA','5789');
insert into vuelos (id,destino, nro_vuelo) values (8,'DINAMARCA','6790');
insert into vuelos (id,destino, nro_vuelo) values (9,'ESPAÑA','1238');
insert into vuelos (id,destino, nro_vuelo) values (10,'DUBAI','8909');

create table vuelospasajetos (
	id int,
	vuelo_id int,
	identificacion_pasajero varchar(50),
	primer_nombre varchar(50),
	segundo_nombre varchar(50),
	primer_apellido varchar(50),
	segundo_apellido varchar(50)
);

insert into vuelos (vuelos_id , nro_vuelo) values (1,'MEXICO','3012');

insert into vuelospasajetos values (1,1,'1036615515','ANDRES','FELIPE','PELAEZ','ALVAREZ');

insert into vuelospasajetos values (2,2,'1017209555','Kevin',NULL,'Montoya','Ardila');

insert into vuelospasajetos values (3,3,'1167890478','Alexander',NULL,'Vargas ','Muños');

insert into vuelospasajetos values (4,4,'4357890777','Laura','Maria','Tobon','Arenas');

insert into vuelospasajetos values (5,5,'2345097898','Juan','Jose','Tobon','Arenas');

insert into vuelospasajetos values (6,6,'1234567890','Juan','Carlos','Montoya','Gusman');

insert into vuelospasajetos values (7,7,'1018465378','Cristian','David','Rico','Durango');

insert into vuelospasajetos values (8,8,'1789573828','Marian','Andrea','Lopez','Tabares');

insert into vuelospasajetos values (9,9,'2345789670','Samuel','Andres','Echeberri','Montoya');

insert into vuelospasajetos values (10,10,'10850696','Diana','Maria','Sierra','Lopez');

SELECT  * FROM vuelos

select v.nro_vuelo, vl.identificacion_pasajero, vl.primer_nombre,segundo_nombre,primer_apellido,segundo_apellido
from vuelospasajetos vl, vuelos v
where vl.vuelo_id = v.id
and   v.nro_vuelo = '29182';




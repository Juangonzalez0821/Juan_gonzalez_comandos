drop table- if exists

DROP DATABASE DBLIBROS;

CREATE database DBLIBROS;

USE DBLIBROS;

CREATE TABLE LIBROS(
IDLIBRO INT auto_increment PRIMARY KEY,
TITULO VARCHAR (100) NOT NULL, 
AUTOR VARCHAR (100) NOT NULL,
EDITORIAL VARCHAR (100) NOT NULL);

SHOW TABLES;

DESCRIBE LIBROS;

insert into LIBROS(IDLIBRO,TITULO,AUTOR,EDITORIAL)
values 
(1,'100 AÑOS DE SOLEDAD','GABRIEL GARCIA MARQUEZ','PLANETA'),
(2,'EL TUNEL','ERNESTO SABATO','EMECE'),
(3,'’50 sombras de Grey','E. L. James','EMECE'),
(4,'SATANAS','MARIO MENDOZA','Seix Barral'),
(5,'EL RUIDO DE LAS COSAS AL CAER ','JUAN GABRIEL VASQUEZ','ALFAGUARA'),
(6,'EL AMOR EN LOS TIEMPOS DEL COLERA ','GABRIEL GARCIA MARQUEZ','PEGUIN RANDOM HOUSE'),
(7,'LA CASA DE LOS ESPIRITUS','ISABEL ALLENDE','SUDAMERICANA'),
(8,'Veinte poemas de amor y una canción desesperada','Pablo Neruda','Editorial Nascimento');

select*from LIBROS;




 create table peliculas( 
 idpeliculas int auto_increment primary key,
 titulo varchar(25), 
 actor varchar(25), 
 duracion integer, 
 cantidad integer);

describe peliculas; 

insert into peliculas (idpeliculas,titulo, actor, duracion, cantidad) 
 values
 (1,'Mision imposible','Tom Cruise',120,3),
 (2,'Mision imposible 2','Tom Cruise',180,2),
 (3,'Mujer bonita','Julia R.',90,3),
(4,'guason','Todd Phillips',122,3),
(5,'Heal','Kelly Noonan Gores',106,3),
(6,'Vivo','Il Cho',99,3),
(7,'Hacker amenaza en la redn','Michael Mann',135,3),
(8,'Aves de presa','Cathy Yan',109,3);

select titulo,actor
from peliculas;

select titulo,duracion
from peliculas;

select titulo,cantidad
from peliculas;





create table empleados( 
idempleados int (10) auto_increment primary key,
  nombre varchar(20), 
  documento varchar(8),  
  sexo varchar(1), 
  domicilio varchar(30), 
  sueldobasico float); 

 describe empleados; 
 
  insert into empleados (idempleados,nombre, documento, sexo, domicilio, sueldobasico) 
 values (1,'Juan Perez','22345678','m','Sarmiento 123',200),
 (2,'Ana Melo','24345678','f','Colon 134',400),
(3,'Marcos Torres','27345678','m','Urquiza 479',700),
(4,'carlos Torres','21345678','m','bogota',350),
(5,'camilo Torres','23345678','m','medellin',680),
(6,'david Torres','25345678','m','cali',540),
(7,'luis Torres','26345678','m','barranquilla',720),
(8,'juan Torres','28345678','m','cartajena',360);

select*
from empleados;

select nombre,documento
from empleados;

select nombre,documento,sueldobasico
from empleados;

create table articulos(
codigoarticulo int auto_increment primary key,
nombre varchar (20),
descripcion varchar (30),
precio float);

describe articulos;

 insert into articulos (codigoarticulo, nombre, descripcion, precio) 
 values (1,'impresora','Epson Stylus C45',400.80),
 (2,'impresora','Epson Stylus C85',500),
 (3,'monitor','Samsung 14',800), 
(4,'teclado','HyperX',220),
(5,'mouse','HyperX',120),
(6,'ventilador','intel',60),
(7,'procesador','amd',1200),
(8,'memoria','Samsung',30);

select*
from articulos;

select nombre,descripcion,precio
from articulos;

drop table agenda;

create table  agenda(
idagenda int auto_increment primary key ,
nombre varchar (30) ,
domicilio varchar (30),
telefono int);

describe agenda;

insert into agenda (idagenda,nombre,domicilio,telefono)
values
(1,'alberto mores','colon 123',4234567),
(2,'juan paez','avellaneda 135',4234567),
(3,'mariana lopez','urquiza 333',4234567),
(4,'fernando lopez','urquiza 333',4234567);

select*
from agenda;

insert into agenda (idagenda,nombre,domicilio,telefono)
values
(5,'juan paez','colon 123',4234567),
(6,'juan paez','avellaneda 135',4234567),
(7,'juan gonzalez','urquiza 333',4234567);

Select * 
from agenda 
where nombre="juan paez";

Select * 
from agenda 
where domicilio="colon 123";

Select * 
from agenda 
where telefono="4545454";

drop table libros;

create table libros ( 
idlibro int auto_increment primary key,
 titulo varchar(20), 
 autor varchar(30), 
 editorial varchar(15) 
); 

describe libros;

insert into libros (idlibro,titulo,autor,editorial)
values
(1,'El aleph','Borges','Planeta'),
(2,'Martin Fierro','Jose Hernandez','Emece'),
 (3,'Aprenda PHP','Mario Molina','Emece'),
 (4,'Cervantes','Borges','Paidos');

select * from libros;

insert into libros (idlibro,titulo,autor,editorial)
values
(5,'SATANAS','MARIO MENDOZA','Seix Barral'),
(6,'EL RUIDO DE LAS COSAS AL CAER ','JUAN GABRIEL VASQUEZ','ALFAGUARA'),
(7,'EL AMOR EN LOS TIEMPOS DEL COLERA ','GABRIEL GARCIA MARQUEZ','PEGUIN RANDOM HOUSE'),
(8,'LA CASA DE LOS ESPIRITUS','ISABEL ALLENDE','SUDAMERICANA'),
(9,'Veinte poemas de amor y una canción desesperada','Pablo Neruda','Editorial Nascimento');

Select * 
from libros 
where autor="Borges";

Select * 
from libros 
where editorial="emece";

Select * 
from libros 
where titulo="Martin Fierro";

drop table articulos;

create table articulos( 
  codigo int auto_increment primary key, 
  nombre varchar(20), 
  descripcion varchar(30), 
  precio float 
 ); 

describe articulos;

 insert into articulos (codigo, nombre, descripcion, precio) 
  values (1,'impresora','Epson Stylus C45',400.80),
  (2,'impresora','Epson Stylus C85',500),
  (3,'monitor','Samsung 14',800),
   (4,'teclado','ingles Biswal',100),
   (5,'teclado','español Biswal',90);

Select * 
from articulos 
where nombre="impresora";

Select codigo,descripcion
from articulos 
where nombre="teclado";

drop table medicamentos;

create table medicamentos( 
  codigo int unsigned auto_increment, 
  nombre varchar(20), 
  laboratorio varchar(20), 
  precio decimal(5,2) unsigned, 
  cantidad int unsigned, 
  primary key(codigo) 
 ); 
 
 describe medicamentos;
 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values (1,'omeprazol','roche',12,120),
(2,'Simvastatina ','bayer',3,100),
(3,'Aspirina ','bayer',56,100),
(4,'Lexotiroxina sódica','roche',64,100),
(5,'Lexotiroxina sódica','bayer',48,220),
(6,'Amlodipina','roche',22,100),
(7,'Paracetamol','roche',2,100);

select codigo,nombre
from madicamentos
where laboratorio='roche' and precio< 5;

select codigo,nombre,laboratorio,precio,cantidad
from madicamentos
where laboratorio not like'%bayer%';

select *
from medicamentos
where laboratorio='bayer' and cantidad=100;

select *
from medicamentos
where laboratorio='bayer' or cantidad=100;


drop table clientes;

 create table clientes ( 
  codigo int unsigned auto_increment, 
  nombre varchar(30) not null, 
  domicilio varchar(30), 
  ciudad varchar(20), 
  provincia varchar (20), 
  telefono varchar(11), 
  primary key(codigo) ); 

 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Lopez Marcos', 'Colon 111', 'Córdoba','Cordoba','null'),
   ('Perez Ana', 'San Martin 222', 'Cruz del Eje','Cordoba','4578585'),
   ('Garcia Juan', 'Rivadavia 333', 'Villa Maria','Cordoba','4578445'),
   ('Perez Luis', 'Sarmiento 444', 'Rosario','Santa Fe',null),
   ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje','Cordoba','4253685'),
   ('Gomez Ines', 'San Martin 666', 'Santa Fe','Santa Fe','0345252525'),
   ('Torres Fabiola', 'Alem 777', 'Villa del Rosario','Cordoba','4554455'),
('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje','Cordoba',null),
   ('Ramos Betina', 'San Martin 999', 'Cordoba','Cordoba','4223366'),
   ('Lopez Lucas', 'San Martin 1010', 'Posadas','Misiones','0457858745');
   
   
drop table medicamentos;

 create table medicamentos( 
  codigo int unsigned auto_increment, 
  nombre varchar(20), 
  laboratorio varchar(20), 
  precio decimal(5,2), 
  cantidad int unsigned, 
  primary key(codigo) 
 ); 

describe medicamentos;

 insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values
  ('Sertal','Roche',5.2,100),
  ('Buscapina','Roche',4.10,200),
  ('Amoxidal 500','Bayer',15.60,100),
  ('Paracetamol 500','Bago',1.90,200),
  ('Bayaspirina','Bayer',2.10,150),
  ('Amoxidal jarabe','Bayer',5.10,250);

select *
from medicamentos 
order by precio desc;

select *
from medicamentos 
order by cantidad asc;

select *
from medicamentos 
order by laboratorio desc

select *
from medicamentos 
order by cantidad asc;
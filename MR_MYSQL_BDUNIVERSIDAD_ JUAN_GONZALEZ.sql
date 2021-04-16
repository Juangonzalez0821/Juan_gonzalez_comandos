create database dbuniversidad;
drop database dbuniversidad;
use  dbuniversidad;

create table facultad(
idfacultad int auto_increment primary key,
nombrefacultad varchar (30) not null,
ubicacionfacultad varchar (30) not null);

create table decano(
iddecano int primary key,
nombredecano varchar (30) not null,
apellidodecano varchar (30) not null,
celulardecano int not null);

create table docente(
iddocente int primary key,
nombredocente varchar (30) not null,
apellidodocente varchar (30) not null,
titulodocente varchar (50) not null,
idfacultadfk int);

create table asignatura(
idasignatura int auto_increment primary key,
nombreasignatura varchar (30) not null,
creditosasignatura varchar (30) not null,
iddocentefk int);

create table detalleseya(
iddetalleseya int auto_increment primary key,
idestudiantesfk int,
idasignaturafk int );

create table estudiante(
idestudiante int primary key,
nombreestudiante varchar (30) not null,
apellidoestudiante varchar (30) not null,
direccionestudiante varchar (30) not null);


create table detallesfyd(
iddetallesfyd int auto_increment primary key,
iddecanofk int,
idfacultadfk int);

ALTER TABLE detallesfyd
ADD CONSTRAINT FKdecanodetallesfyd
FOREIGN KEY (iddecanofk)
REFERENCES decano (iddecano);

ALTER TABLE detallesfyd
ADD CONSTRAINT FKfacultaddetallesfyd
FOREIGN KEY (idfacultadfk)
REFERENCES facultad (idfacultad);

ALTER TABLE docente
ADD CONSTRAINT FKfacultaddocente
FOREIGN KEY (idfacultadfk)
REFERENCES facultad (idfacultad);

ALTER TABLE asignatura
ADD CONSTRAINT FKdocenteasignatura
FOREIGN KEY (iddocentefk)
REFERENCES docente (iddocente);

ALTER TABLE detalleseya
ADD CONSTRAINT FKasignaturadetalleseya
FOREIGN KEY (idasignaturafk)
REFERENCES asignatura (idasignatura);

ALTER TABLE detalleseya
ADD CONSTRAINT FKestudiantedetalleseya
FOREIGN KEY (idestudiantesfk)
REFERENCES estudiante (idestudiante);

describe facultad;

insert into facultad(idfacultad,nombrefacultad,ubicacionfacultad)
values
(1,'arquitectura','bogota'),(2,'ciencias','cali'),
(3,'derecho','medellin') ,
(4,'economia','pereira'),
(5,'contaduria','cartagena') 

select*from facultad;

describe decano;

insert into decano(iddecano,nombredecano,apellidodecano,celulardecano)
values 
(0000000001,'juan','gonzalez',3196584751),
(0000000002,'juan','gonzalez',3116584751),
(0000000003,'juan','gonzalez',3196584721),
(0000000004,'juan','gonzalez',3196583451),
(0000000005,'juan','gonzalez',3196284751)

select*from decano;

describe detallesfyd;

insert into detallesfyd(iddetallesfyd,iddecanofk,idfacultadfk)
values
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5)

select*from detallesfyd;

describe docente;

insert into docente(iddocente,nombredocente,apellidodocente,titulodocente,idfacultadfk)
values
(1,'camilo','garcia','tecnologo',1),
(2,'camilo','garcia','tecnologo',2),
(3,'camilo','garcia','tecnologo',3),
(4,'camilo','garcia','tecnologo',4),
(5,'camilo','garcia','tecnologo',5)

select*from docente;

describe asignatura;

insert into asignatura(idasignatura,nombreasignatura,creditosasignatura,iddocentefk)
values
(1,'lemguaje','ninguno',1),
(2,'matematicas','ninguno',2),
(3,'musica','ninguno',3),
(4,'ingles','ninguno',4),
(5,'religion','ninguno',5)

select*from asignatura;

describe estudiante;

insert into estudiante(idestudiante,nombreestudiante,apellidoestudiante,direccionestudiante)
values 
(1,'jairo','martinez','bogota suba'),
(2,'carlos','martinez','bogota suba'),
(3,'david','martinez','bogota suba'),
(4,'benito','martinez','bogota suba'),
(5,'fernando','martinez','bogota suba')

select*from estudiante;

describe detalleseya;

insert into detalleseya(iddetalleseya,idestudiantesfk,idasignaturafk)
values
(1,01,1),
(2,02,2),
(3,03,3),
(4,04,4),
(5,05,5)

select*from detalleseya;
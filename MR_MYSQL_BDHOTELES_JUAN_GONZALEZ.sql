create database dbhoteles;

use dbhoteles;

create table sucursal(
idsucursal int (10)auto_increment primary key,
direccionsucursal varchar (30) not null,
cuidadsucursal varchar (30) not null,
previnciasucursal varchar (30) not null,
telefonosucursal int (10) not null,
regimenhospedaje varchar (30) not null,
clasevuelo varchar (20) not null,
idvuelofk int, 
idhotelfk int ,
idclientefk int );

create table ciente(
idciente int (10) primary key,
nombrecliente varchar (30)  not null,
apellidociente varchar (30) not null,
telefonociente int (10) not null,
emailciente varchar (30) not null);

create table vuelo(
idvuelo int (10)auto_increment primary key,
fechasalidavuelo date not null,
horasalidavuelo time not null,
fechallegadavuelo date not null,
horallegadavuelo time not null,
origenvuelo varchar (30) not null,
destinovuelo varchar (30) not null,
numplazasvuelo int (10) not null);

create table hotel(
idhotel int (10) auto_increment primary key,
nombrehotel varchar (30) not null,
direccionhotel varchar (30) not null,
cuidadhotel varchar (30) not null,
prvinciahotel varchar (30) not null,
telefonohotel int (10) not null,
numestrellashotel int (10) not null);

ALTER TABLE sucursal
ADD CONSTRAINT FKclientesucursal
FOREIGN KEY (idclientefk)
REFERENCES ciente (idciente);

ALTER TABLE sucursal
ADD CONSTRAINT FKchotelsucursa
FOREIGN KEY (idhotelfk)
REFERENCES hotel (idhotel);

ALTER TABLE sucursal
ADD CONSTRAINT FKvuelosucursal
FOREIGN KEY (idvuelofk)
REFERENCES vuelo (idvuelo);

DROP DATABASE dbhoteles;
SHOW TABLES;
describe ciente;

insert into ciente(idciente,nombrecliente,apellidociente,telefonociente,emailciente)
values 
(1,'Juan Miguel','Alcaraz',220346824,'juamiguel@weepingdragon.net'),
(2,'Elena','Caballero',193078920,'elena@weepingdragon.net'),
(3,'Alejandro','Cristobal',67496728,'alejandro@weepingdragon.net'),
(4,'Marcelino','Zurita',565238498,'marcelino@weepingdragon.net'),
(5,'Jesusa','Ponce',988331435,'jesusa@weepingdragon.net')

select*from ciente;

describe hotel;

insert into hotel(idhotel,nombrehotel,direccionhotel,cuidadhotel,prvinciahotel,telefonohotel,numestrellashotel)
values 
(1,'Tubohotel','mexico','topoztlan','topoztlan',7393953613,5),
(2,'Costa Verde','Quepos Costa Rica','Quepos','Costa Rica',5062770584,5),
(3,'Endémico','Valle de Guadalupe, México','Valle de Guadalupe','mexico',6461552775,5),
(4,'Casa del árbol Nido de Lapa','Barrio Bonito, Costa Rica','Barrio Bonito','Costa Rica',5087140622,5),
(5,'Hotel Único','Sao Paulo, Brasil','Sao Paulo','Brasil',1130554700,5);

select*from hotel

describe vuelo;

insert into vuelo(idvuelo,fechasalidavuelo,horasalidavuelo,fechallegadavuelo,horallegadavuelo,origenvuelo,destinovuelo,numplazasvuelo)
values 
(1,'2021-01-20','2:20','2021-01-20','12:40','colombia','puerto rico',54),
(2,'2021-02-20','2:30','2021-01-20','24:40','cali','bogota',35),
(3,'2021-03-20','4:20','2021-01-20','3:40','canada','colombia',48),
(4,'2021-04-20','6:20','2021-01-20','5:40','venezuela','new york',64),
(5,'2021-05-20','2:10','2021-01-20','9:40','pereira','cartagena',20);

select*from vuelo

describe sucursal;

insert into sucursal(idsucursal,direccionsucursal,previnciasucursal,telefonosucursal,regimenhospedaje,clasevuelo,idvuelofk,idhotelfk,idclientefk)
values 
(1,'colombia','bogota',15676248914,'no aplica','alto',1,1,1),
(2,'colombia','bogota',15676248914,'no aplica','turista',2,2,2),
(3,'colombia','bogota',15676248914,'no aplica','turista',3,3,3),
(4,'colombia','bogota',15676248914,'no aplica','comercial',4,4,4),
(5,'colombia','bogota',15676248914,'no aplica','alto',5,5,5);

select*from sucursal;

select direccionsucursal,previnciasucursal,telefonosucursal,regimenhospedaje
from sucursal;

select *
from sucursal
where clasevuelo='turista';

select *
from sucursal
where clasevuelo='turista' and previnciasucursal='bogota';

select *
from sucursal
order by clasevuelo asc;

select *
from sucursal
group by previnciasucursal;
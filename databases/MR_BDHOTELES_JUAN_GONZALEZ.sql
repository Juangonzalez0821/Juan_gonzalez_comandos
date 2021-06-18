create database dbhoteles;

use dbhoteles;

create table sucursal(
idsucursal int auto_increment primary key,
direccionsucursal varchar (30) not null,
cuidadsucursal varchar (30) not null,
previnciasucursal varchar (30) not null,
telefonosucursal int (10) not null,
idvuelofk int, 
idhotelfk int ,
idclientefk int );

create table ciente(
idciente int primary key,
nombrecliente varchar (30)  not null,
apellidociente varchar (30) not null,
telefonociente int (10) not null,
emailciente varchar (30) not null);

create table vuelo(
idvuelo int auto_increment primary key,
fechasalidavuelo date not null,
horasalidavuelo time not null,
fechallegadavuelo date not null,
horallegadavuelo time not null,
origenvuelo varchar (30) not null,
destinovuelo varchar (30) not null,
numplazasvuelo int (10) not null);

create table hotel(
idhotel int auto_increment primary key,
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


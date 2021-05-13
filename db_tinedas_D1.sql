DROP database BDJYJTechnology;

create database BDJYJTechnology;

USE BDJYJTechnology;

CREATE TABLE HOJADEVIDA(
IDHOJADEVIDA INT AUTO_INCREMENT PRIMARY KEY,
IDEQUIPOFK INT NOT NULL,
IDUSUARIOFK INT NOT NULL);

CREATE TABLE USUARIO(
IDUSUARIO INT PRIMARY KEY,
NOMBRE VARCHAR (20)NOT NULL,
APELLIDO VARCHAR (20) NOT NULL,
TELEFONO VARCHAR (20) NOT NULL,
EMAIL VARCHAR (20) NOT NULL
);

CREATE TABLE DIAGENTRADA(
IDDIAGENTRADA INT AUTO_INCREMENT PRIMARY KEY,
FECHARESIVIDO VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL,
IDEQUIPOFK INT ,
IDUSUARIOFK INT 
);

CREATE TABLE BITACORA(
IDBITACORA INT AUTO_INCREMENT PRIMARY KEY,
FECHARESIVIDO VARCHAR (30) NOT NULL,
FECHAENTREGA VARCHAR (30) NOT NULL,
OBSERVACIONES VARCHAR (30) NOT NULL,
FALLO VARCHAR (30) NOT NULL,
CAUSA VARCHAR (30) NOT NULL,
SOLUCION VARCHAR (30) NOT NULL,
IDEQUIPOFK INT ,
IDUSUARIOFK INT);

CREATE TABLE EQUIPO(
IDEQUIPO INT AUTO_INCREMENT PRIMARY KEY,
TIPO VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL,
IDHARDWAREFK INT,
IDSOFTWAREFK INT);

CREATE TABLE DIAGSALIDA(
IDDIAGSALIDA INT AUTO_INCREMENT PRIMARY KEY,
FECHAENTREGA VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL,
IDEQUIPOFK INT,
IDUSUARIOFK INT);

CREATE TABLE INFTCONECTIVIDAD(
IDINFTCONECTIVIDAD INT AUTO_INCREMENT PRIMARY KEY,
TIPOCONECTIVIDAD VARCHAR (30) NOT NULL,
IPEQUIPO VARCHAR (30) NOT NULL,
ANCHODEBANDA VARCHAR (30) NOT NULL,
IDEQUIPOFK INT,
IDUSUARIOFK INT);

CREATE TABLE HARDWARE(
IDHARDWARE INT AUTO_INCREMENT PRIMARY KEY,
IDBOARDFK INT ,
IDPROCESADORFK INT ,
IDRAMFK INT ,
ID_DDFK INT ,
IDMONITORFK INT ,
IDTECLADOFK INT ,
IDMOUSEFK INT ,
IDCAMARAFK INT ,
IDALIMENTACIONFK INT);

CREATE TABLE BOARD(
IDBOARD INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL,
REFERENCIA VARCHAR (30) NOT NULL);

CREATE TABLE PROCESADOR(
IDPROCESADOR INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
REFERENCIA VARCHAR (30) NOT NULL,
NOMNUCLEO VARCHAR (30) NOT NULL,
ESTADO VARCHAR(30) NOT NULL);

CREATE TABLE RAM(
IDRAM INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
CAPACIDAD VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE DISCODURO(
ID_DD INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
CAPACIDAD VARCHAR (30) NOT NULL,
TIPO VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE MONITOR(
IDMONITOR INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
SERIALES VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE TECLADO(
IDTECLADO INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE MOUSE(
IDMOUSE INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE CAMARA(
IDCAMARA  INT AUTO_INCREMENT PRIMARY KEY,
MARCA VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE ALIMENTACION(
IDALIMENTACION INT AUTO_INCREMENT PRIMARY KEY,
TIPO VARCHAR (30) NOT NULL,
MARCA VARCHAR (30) NOT NULL,
REFERENCIA VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE SOFTWARE(
IDSOFTWARE INT AUTO_INCREMENT PRIMARY KEY,
IDSOFK INT ,
IDSOFTESPECIFICOFK INT);

CREATE TABLE SO(
IDSO INT AUTO_INCREMENT PRIMARY KEY,
NOMBRE VARCHAR (30) NOT NULL,
TIPO VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

CREATE TABLE SOFTESPECIFICO(
IDSOFTESPECIFICO INT AUTO_INCREMENT PRIMARY KEY,
NOMBRE VARCHAR (30) NOT NULL,
TIPO VARCHAR (30) NOT NULL,
VERSIONSOFT VARCHAR (30) NOT NULL,
TIPOLICENCIA VARCHAR (30) NOT NULL,
FECHAACTIVACION VARCHAR (30) NOT NULL,
ESTADO VARCHAR (30) NOT NULL);

ALTER TABLE HOJADEVIDA
ADD CONSTRAINT FKHOJADEVIDAEQUIPO
FOREIGN KEY (IDEQUIPOFK)
REFERENCES EQUIPO (IDEQUIPO);

ALTER TABLE HOJADEVIDA
ADD CONSTRAINT FKHOJADEVIDAUSUARIO
FOREIGN KEY (IDUSUARIOFK)
REFERENCES USUARIO (IDUSUARIO);

ALTER TABLE EQUIPO
ADD CONSTRAINT FKEQUIPOSOFTWARE
FOREIGN KEY (IDSOFTWAREFK)
REFERENCES SOFTWARE (IDSOFTWARE);

ALTER TABLE EQUIPO
ADD CONSTRAINT FKEQUIPOHARDWARE
FOREIGN KEY (IDHARDWAREFK)
REFERENCES HARDWARE (IDHARDWARE);

ALTER TABLE SOFTWARE
ADD CONSTRAINT FKSOFTWARESO
FOREIGN KEY (IDSOFK)
REFERENCES SO (IDSO);

ALTER TABLE SOFTWARE
ADD CONSTRAINT FKSOFTWARESOFTESPECIFICO
FOREIGN KEY (IDSOFTESPECIFICOFK)
REFERENCES SOFTESPECIFICO (IDSOFTESPECIFICO);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWAREBOARD
FOREIGN KEY (IDBOARDFK)
REFERENCES BOARD (IDBOARD);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWAREPROCESADOR
FOREIGN KEY (IDPROCESADORFK)
REFERENCES PROCESADOR(IDPROCESADOR);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWARERAM
FOREIGN KEY (IDRAMFK)
REFERENCES RAM(IDRAM);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWAREDISCODURO
FOREIGN KEY (ID_DDFK)
REFERENCES DISCODURO (ID_DD);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWAREMONITOR
FOREIGN KEY (IDMONITORFK)
REFERENCES MONITOR (IDMONITOR);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWARETECLADO
FOREIGN KEY (IDTECLADOFK)
REFERENCES TECLADO (IDTECLADO);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWAREMOUSE
FOREIGN KEY (IDMOUSEFK)
REFERENCES MOUSE (IDMOUSE);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWARECAMARA
FOREIGN KEY (IDCAMARAFK)
REFERENCES CAMARA (IDCAMARA);

ALTER TABLE HARDWARE
ADD CONSTRAINT FKHARDWAREALIMENTACION
FOREIGN KEY (IDALIMENTACIONFK)
REFERENCES ALIMENTACION (IDALIMENTACION);

ALTER TABLE BITACORA
ADD CONSTRAINT FKBITACORAEQUIPO
FOREIGN KEY (IDEQUIPOFK)
REFERENCES EQUIPO (IDEQUIPO);

ALTER TABLE BITACORA
ADD CONSTRAINT FKBITACORAUSUARIO
FOREIGN KEY (IDUSUARIOFK)
REFERENCES USUARIO (IDUSUARIO);

ALTER TABLE DIAGENTRADA
ADD CONSTRAINT FKDIAGENTRADAEQUIPO
FOREIGN KEY (IDEQUIPOFK)
REFERENCES EQUIPO (IDEQUIPO);

ALTER TABLE DIAGENTRADA
ADD CONSTRAINT FKDIAGENTRADAUSUARIO
FOREIGN KEY (IDUSUARIOFK)
REFERENCES USUARIO (IDUSUARIO);

ALTER TABLE DIAGSALIDA
ADD CONSTRAINT FKDIAGSALIDAEQUIPO
FOREIGN KEY (IDEQUIPOFK)
REFERENCES EQUIPO (IDEQUIPO);

ALTER TABLE DIAGSALIDA
ADD CONSTRAINT FKDIAGSALIDAUSUARIO
FOREIGN KEY (IDUSUARIOFK)
REFERENCES USUARIO (IDUSUARIO);

ALTER TABLE INFTCONECTIVIDAD
ADD CONSTRAINT FKINFTCONECTIVIDADEQUIPO
FOREIGN KEY (IDEQUIPOFK)
REFERENCES EQUIPO (IDEQUIPO);

ALTER TABLE INFTCONECTIVIDAD
ADD CONSTRAINT FKINFTCONECTIVIDADUSUARIO
FOREIGN KEY (IDUSUARIOFK)
REFERENCES USUARIO (IDUSUARIO);

    DESCRIBE MOUSE;

    INSERT INTO MOUSE (IDMOUSE,MARCA,ESTADO)
    VALUES 
    ("","OHG","BUENO"),
    ("","REDRAGON","BUENO");

    select*
    FROM MOUSE;

    DESCRIBE BOARD;

    INSERT INTO BOARD (IDBOARD,MARCA,ESTADO,REFERENCIA)
    VALUES 
    ("","ASUS","BUENO","PRIMEB450M-AII"),
    ("","ASUS","BUENO","M5A97PRO");

    select*
    FROM BOARD;

    DESCRIBE MONITOR;

    INSERT INTO MONITOR (IDMONITOR,MARCA,SERIALES,ESTADO)
    VALUES 
    ("","ASUS","1234","PRIMEB450M-AII"),
    ("","ACER","1235","M5A97PRO");

    SELECT*
    FROM MONITOR;

    DESCRIBE TECLADO;

    INSERT INTO TECLADO (IDTECLADO,MARCA,ESTADO)
    VALUES 
    ("","TECH","BUENO"),
    ("","REGRADON","BUENO");

    DESCRIBE PROCESADOR;

    INSERT INTO PROCESADOR (IDPROCESADOR,MARCA,REFERENCIA,NOMNUCLEO,ESTADO)
    VALUES 
    ("","AMD","3400G","4","BUENO"),
    ("","INTEL","CORE5","4","BUENO");

    DESCRIBE RAM;

    INSERT INTO RAM (IDRAM,MARCA,CAPACIDAD,ESTADO)
    VALUES 
    ("","XPG","8GB","BUENO"),
    ("","SAMSUNG","4GB","BUENO");

    DESCRIBE DISCODURO;

    INSERT INTO DISCODURO (ID_DD,MARCA,CAPACIDAD,TIPO,ESTADO)
    VALUES 
    ("","ADATA","250GB","SDM.2","BUENO"),
    ("","TOHIBA","500GB","HDD","BUENO");

    DESCRIBE CAMARA;

    INSERT INTO CAMARA (IDCAMARA,MARCA,ESTADO)
    VALUES 
    ("","XUE","BUENO"),
    ("","REDRAGON","BUENO");

    DESCRIBE ALIMENTACION;

    INSERT INTO ALIMENTACION (IDALIMENTACION,TIPO,MARCA,REFERENCIA,ESTADO)
    VALUES 
    ("","FUENTE","ADATA","N/A","BUENO"),
    ("","FUENTE","CORSAIR","N/A","BUENO");

    DESCRIBE USUARIO;

    INSERT INTO USUARIO (IDUSUARIO,NOMBRE,APELLIDO,TELEFONO,EMAIL)
    VALUES 
    (100460328,"JUAN MANUEL","GONZALEZ","3196605169","jcsuarez4563@misena.edu.co"),
    (100220225,"JUAN CAMILO","SUAREZ","321 3660387","jcsuarez4563@misena.edu.co");

    DESCRIBE SO;

    INSERT INTO SO (IDSO,NOMBRE,TIPO,ESTADO)
    VALUES 
    ("","WINDOWS","LICENCIADO","BUENO"),
    ("","WINDOWS","LICENCIADO","BUENO");

    DESCRIBE SOFTESPECIFICO;

    INSERT INTO SOFTESPECIFICO (IDSOFTESPECIFICO,NOMBRE,TIPO,VERSIONSOFT,TIPOLICENCIA,FECHAACTIVACION,ESTADO)
    VALUES 
    ("","XAMPP","ABIERTO","8.0.5-5","LIBRE","5/5/21","BUENO"),
    ("","OFICE","CERRADO","16.0","LICENCIADO","4/5/21","BUENO");

    DESCRIBE HARDWARE;

    INSERT INTO HARDWARE (IDHARDWARE,IDBOARDFK,IDPROCESADORFK,IDRAMFK,ID_DDFK,IDMONITORFK,IDTECLADOFK,IDMOUSEFK,IDCAMARAFK,IDALIMENTACIONFK)
    VALUES 
    ("",1,1,1,1,1,1,1,1,1),
    ("",2,2,2,2,2,2,2,2,2);

    DESCRIBE SOFTWARE;

    INSERT INTO SOFTWARE (IDSOFTWARE,IDSOFK,IDSOFTESPECIFICOFK)
    VALUES 
    ("",1,1),
    ("",2,2);

    DESCRIBE EQUIPO;

    INSERT INTO EQUIPO (IDEQUIPO,TIPO,ESTADO,IDHARDWAREFK,IDSOFTWAREFK)
    VALUES 
    ("","MESA","BUENO",1,2),
    ("","MESA","BUENO",2,2);

    DESCRIBE HOJADEVIDA;

    INSERT INTO HOJADEVIDA (IDHOJADEVIDA,IDEQUIPOFK,IDUSUARIOFK)
    VALUES 
    ("",1,100460328),
    ("",2,100220225);

    DESCRIBE DIAGENTRADA;

    INSERT INTO DIAGENTRADA (IDDIAGENTRADA,FECHARESIVIDO,ESTADO,IDEQUIPOFK,IDUSUARIOFK)
    VALUES 
    ("","21/08/2020","BUENO",1,100460328),
    ("","15/05/2020","BUENO",2,100220225);

    DESCRIBE DIAGSALIDA;

    INSERT INTO DIAGSALIDA (IDDIAGSALIDA,FECHAENTREGA,ESTADO,IDEQUIPOFK,IDUSUARIOFK)
    VALUES 
    ("","21/08/2021","BUENO",1,100460328),
    ("","15/05/2021","BUENO",2,100220225);

    DESCRIBE BITACORA;

    INSERT INTO BITACORA (IDBITACORA,FECHARESIVIDO,FECHAENTREGA,OBSERVACIONES,FALLO,CAUSA,SOLUCION,IDEQUIPOFK,IDUSUARIOFK)
    VALUES 
    ("","21/08/2020","21/08/2021","HACER MANTENIMIENTO","N/A","N/A","N/A",1,100460328),
    ("","15/05/2020","15/05/2021","HACER MANTENIMIENTO","N/A","N/A","N/A",2,100220225);

    DESCRIBE INFTCONECTIVIDAD;

    INSERT INTO INFTCONECTIVIDAD (IDINFTCONECTIVIDAD,TIPOCONECTIVIDAD,IPEQUIPO,ANCHODEBANDA,IDEQUIPOFK,IDUSUARIOFK)
    VALUES 
    ("","ETHERNET","192.168.1.18","31MB",1,100460328),
    ("","RED","192.168.1.42","60MB",2,100220225);
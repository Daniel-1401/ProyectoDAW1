CREATE DATABASE Travel2021;

USE Travel2021;



CREATE TABLE Tipo_Usuarios (
  cod_tipo int primary key ,
  nom_Categoria varchar(15) not null
);

INSERT INTO Tipo_Usuarios VALUES('1', 'Administrador');
INSERT INTO Tipo_Usuarios VALUES('2', 'Cliente');


CREATE TABLE Travel_Usuarios (
  cod_Usuario char(6) primary key ,
  nom_Usuario varchar(15) not null,
  ape_Usuario varchar(15) null,
  cod_tipo int NOT NULL,
  usuario varchar(15) not null,
  clave varchar(15) not null,
  tele_usuario char(9) UNIQUE NULL,
  fecha_reg date,
  fecha_nac date,
  FOREIGN key (cod_tipo) references Tipo_Usuarios (cod_tipo)
);

insert into Travel_Usuarios values ('US0001','Ana Maria','Cardenas Llana',2,'an1@gmail.com','123456','945845124','2021/01/19','2000/01/25');
insert into Travel_Usuarios values ('US0002','Ana Maria','Cardenas Llana',2,'an2@gmail.com','123456','945845125','2021/01/19','2000/01/25');
insert into Travel_Usuarios values ('US0003','Ana Maria','Cardenas Llana',2,'an3@gmail.com','123456','945845126','2021/01/19','2000/01/25');
insert into Travel_Usuarios values ('US0004','Ana Maria','Cardenas Llana',2,'an4@gmail.com','123456','945845127','2021/01/19','2000/01/25');
insert into Travel_Usuarios values ('US0005','Ana Maria','Cardenas Llana',2,'an5@gmail.com','123456','945845128','2021/01/19','2000/01/25');
insert into Travel_Usuarios values ('US0006','Ana Maria','Cardenas Llana',2,'an6@gmail.com','123456','945845129','2021/01/19','2000/01/25');
insert into Travel_Usuarios values ('US0007','Ana Maria','Cardenas Llana',2,'an7@gmail.com','123456','945845133','2021/01/19','2000/01/25');



CREATE TABLE TravelTipo_Productos (
  cod_tipo int primary key ,
  nom_Categoria varchar(15) not null
);

INSERT INTO TravelTipo_Productos VALUES(1, 'Promos');
INSERT INTO TravelTipo_Productos VALUES(2, 'Bar');
INSERT INTO TravelTipo_Productos VALUES(3, 'Pizzas');
INSERT INTO TravelTipo_Productos VALUES(4, 'Pastas');
INSERT INTO TravelTipo_Productos VALUES(5, 'Pollos');
INSERT INTO TravelTipo_Productos VALUES(6, 'Parrillas');
INSERT INTO TravelTipo_Productos VALUES(7, 'Piqueos');
INSERT INTO TravelTipo_Productos VALUES(8, 'Peruanitos');



CREATE TABLE Travel_Productos (
  Id_Producto int primary key ,
  Nom_Producto varchar(80) not null,
  Des_Producto text not null,
  PrecioUnidad decimal(10,0) not null,
  Stock_Producto smallint not null,
  UnidadesEnPedido smallint not null,
  imagen varchar(100) not null,
  cod_tipo int NOT NULL,
  foreign key (cod_tipo) references TravelTipo_Productos (cod_tipo)
);

INSERT INTO Travel_Productos VALUES(1, ' Piqueo Chelero (	Piqueo R�stico + 02 cusqueñas personales','Chicharrón de pollo, 7 alitas bbq, 5 teque�os, papas fritas peruanas + 2 cusque�as personales',55.90,30,0,'https://cdn.rusticadelivery.com/images/products/319/319-1613501343-602c139f7c7e1.jpeg',1);
INSERT INTO Travel_Productos VALUES(2, 'Pizza Americana o Chorizo + Gaseosa de 1 L.','Elige entre una pizza 1/2 metro americana o chorizo y llevate una gaseosa de 1L. al mejor precio',19.90,15,0,'https://cdn.rusticadelivery.com/images/products/334/334-1624663864-60d667380086f.jpeg',1);
INSERT INTO Travel_Productos VALUES(3, 'Piqueo Rustico + Gaseosa 1L.','Chicharr�n De Pollo, Alitas , Teque�os, Papas Fritas Peruanas + Gaseosa 1L.',42.90,50,0,'https://cdn.rusticadelivery.com/images/products/218/218-1592690927-5eee88efa2d6a.jpg',1);
INSERT INTO Travel_Productos VALUES(4, '1 Pollo a la Brasa + Gaseosa 1L.','Pollo a la Brasa +  Papas Fritas Peruanas + Bebida 1L.',49.90,50,0,'https://cdn.rusticadelivery.com/images/products/215/215-1594574510-5f0b46ae73527.jpg',1);
INSERT INTO Travel_Productos VALUES(5, 'PORTA AVI�N (MEDIA PARRILLA + 1/4 POLLO A LA BRASA + 5 ALITAS)','Media Parrilla: Chuleta (100gr), Bife (100gr), Filete pollo (100gr), 1 Chorizo, Mollejitas (125gr), 1 anticucho + papas fritas peruanas + ensalada + 1/4 de Pollo + 5 alitas',35.90,50,0,'https://cdn.rusticadelivery.com/images/products/327/327-1618273266-6074e3f2bb1a2.jpeg',1);
INSERT INTO Travel_Productos VALUES(6, 'Promo Poker a lo Alfredo + pan al ajo + gaseosa personal','Poker a lo Alfredo (Lasagna + Fetuccini + Ravioles) + 1/2 porci�n de Pan Al Ajo + Gaseosa personal',29.90,20,0,'https://cdn.rusticadelivery.com/images/products/212/212-1598141673-5f41b4e9ad86a.jpeg',1);

INSERT INTO Travel_Productos VALUES(7, 'CUSQUE�A DOBLE MALTA EDICION RUSTICA 28 A�OS','Cerveza doble malta Cusque�a Edici�n Rustica por sus 28 a�os',9.90,20,0,'https://cdn.rusticadelivery.com/images/products/345/345-1631743142-61426ca62fc50.jpg',2);
INSERT INTO Travel_Productos VALUES(8, 'Pisco Sours 1/2 Litro','Pisco + clara de huevo + jarabe de goma + lim�n + sabor a elegir',18.90,30,0,'https://cdn.rusticadelivery.com/images/products/160/160-1588568799-5eafa2df74a2a.jpg',2);
INSERT INTO Travel_Productos VALUES(9, 'Rusos 1/2 Litro','A base de vodka + sabor a elegir',21.90,10,0,'https://cdn.rusticadelivery.com/images/products/134/134-1602450732-5f83752c38530.jpeg',2);
INSERT INTO Travel_Productos VALUES(10, 'Anti Stress 1/2 Litro','Ron + vodka + tequila + sabor a elegir',24.90,10,0,'https://cdn.rusticadelivery.com/images/products/176/176-1589572914-5ebef5323b144.jpg',2);
INSERT INTO Travel_Productos VALUES(11, 'Chilcanos 1/2 Litro','Pisco + schweppes + hielo + lim�n + sabor a elegir',19.90,10,0,'https://cdn.rusticadelivery.com/images/products/106/106-1589572256-5ebef2a0a9f6d.jpg',2);
INSERT INTO Travel_Productos VALUES(12, 'Mojitos 1/2 Litro','Ron + az�car + hierba buena + zumo de lim�n + sabor a elegir',21.90,10,0,'https://cdn.rusticadelivery.com/images/products/120/120-1588099277-5ea878cd9bc92.jpg',2);	

INSERT INTO Travel_Productos VALUES(13, 'Pizza Chorizo','chorizo espa�ol y mozzarella. Disfr�tala desde 1/4 de mt.',13.90,10,0,'https://cdn.rusticadelivery.com/images/products/7/7-1588566183-5eaf98a7d76fd.jpg',3);
INSERT INTO Travel_Productos VALUES(14, 'Pizza Americana','jam�n, pimiento y mozzarella. Disfr�tala desde 1/4 de mt.',13.90,10,0,'https://cdn.rusticadelivery.com/images/products/6/6-1588566164-5eaf98947b52b.jpg',3);
INSERT INTO Travel_Productos VALUES(15, 'Pizza Hawaiana','jam�n, pi�a, durazno y mozzarella. Disfr�tala desde 1/4 de mt.',16.90,10,0,'https://cdn.rusticadelivery.com/images/products/8/8-1594509471-5f0a489f4f936.jpg',3);
INSERT INTO Travel_Productos VALUES(16, 'Pizza Hawaiana con Pollo','Pi�a, durazno, queso mozzarella, jam�n, trozos de filete de pollo y salsa ranchera',17.90,10,0,'https://cdn.rusticadelivery.com/images/products/307/307-1611174757-60089365894e3.jpeg',3);
INSERT INTO Travel_Productos VALUES(17, 'Pizza 4X4','italiana+ hawaiana+ americana + chorizo. Disfr�tala desde 1/4 de mt.',17.90,10,0,'https://cdn.rusticadelivery.com/images/products/9/9-1595528617-5f19d5a941f06.jpg',3);
INSERT INTO Travel_Productos VALUES(18, 'Pizza Rustica','jam�n, tocino, filete pechuga, carne, mozzarella y salsa ranchera. Disfr�tala desde 1/4 de mt.',20.90,10,0,'https://cdn.rusticadelivery.com/images/products/12/12-1588566365-5eaf995d170e7.jpg',3);

INSERT INTO Travel_Productos VALUES(19, 'Poker en Salsa de Carne','Poker en Salsa de Carne',29.90,10,0,'https://cdn.rusticadelivery.com/images/products/20/20-1588091535-5ea85a8f2c03e.JPG',4);
INSERT INTO Travel_Productos VALUES(20, 'Poker a lo Alfredo',' Lasagna + Fetuccini + Ravioles',29.90,10,0,'https://cdn.rusticadelivery.com/images/products/21/21-1588276263-5eab2c273601f.jpg',4);
INSERT INTO Travel_Productos VALUES(21, 'Lasagna Salsa de Carne','En Salsa de Carne',27.90,10,0,'https://cdn.rusticadelivery.com/images/products/22/22-1588091590-5ea85ac6b7834.jpg',4);
INSERT INTO Travel_Productos VALUES(22, 'Ravioles en Salsa de Carne','Ravioles en Salsa de Carne',26.90,10,0,'https://cdn.rusticadelivery.com/images/products/23/23-1588566996-5eaf9bd4a0edf.jpg',4);
INSERT INTO Travel_Productos VALUES(23, 'Ravioles a lo Alfredo','Ravioles a lo Alfredo',27.90,10,0,'https://cdn.rusticadelivery.com/images/products/24/24-1624464247-60d35b778d3e5.jpeg',4);
INSERT INTO Travel_Productos VALUES(24, 'Fetuccini en Salsa de Carne','Fettucini en Salsa de Carne',26.90,10,0,'https://cdn.rusticadelivery.com/images/products/25/25-1588091698-5ea85b32945d1.jpg',4);

INSERT INTO Travel_Productos VALUES(25, 'Milanesa de Pollo a lo Pobre','Milanesa de filete de pollo + papas fritas + platano frito + huevo frito',28.90,10,0,'https://cdn.rusticadelivery.com/images/products/326/326-1618011303-6070e4a752910.jpeg',5);
INSERT INTO Travel_Productos VALUES(26, 'Milanesa de Pollo ','Milanesa de filete de pollo + papas fritas + arroz',24.90,10,0,'https://cdn.rusticadelivery.com/images/products/325/325-1632850017-6153506131786.jpg',5);
INSERT INTO Travel_Productos VALUES(27, 'Pollo a la Brasa Parrillero','1/4 pollo a la Brasa + mollejitas + chorizo parrillero + papas fritas peruanas + ensalada',27.90,10,0,'https://cdn.rusticadelivery.com/images/products/37/37-1615057357-6043d1cd1bf02.jpeg',5);
INSERT INTO Travel_Productos VALUES(28, 'Filete Parrillero','Filete pechuga + mollejitas + chorizo parrillero + papas fritas peruanas + ensalada',33.90,10,0,'https://cdn.rusticadelivery.com/images/products/42/42-01588010345.jpg',5);
INSERT INTO Travel_Productos VALUES(29, '1  Pollo a la Brasa','1 Pollo a la Brasa + Papas Fritas Peruanas + Ensalada',55.90,10,0,'https://cdn.rusticadelivery.com/images/products/34/34-1591653963-5edeb64b78aa2.jpeg',5);
INSERT INTO Travel_Productos VALUES(30, '1/2 Pollo a la Brasa','1/2 Pollo a la Brasa + Papas Fritas Peruanas + Ensalada',31.90,10,0,'https://cdn.rusticadelivery.com/images/products/33/33-1594574532-5f0b46c47639c.jpg',5);

INSERT INTO Travel_Productos VALUES(31, 'PORTA AVI�N (MEDIA PARRILLA + 1/4 POLLO A LA BRASA + 5 ALITAS)','Media Parrilla: Chuleta (100gr), Bife (100gr), Filete pollo (100gr), 1 Chorizo, Mollejitas (125gr), 1 anticucho + papas fritas peruanas + ensalada + 1/4 de Pollo + 5 alitas',70.80,10,0,'https://cdn.rusticadelivery.com/images/products/327/327-1618273266-6074e3f2bb1a2.jpeg',6);
INSERT INTO Travel_Productos VALUES(32, '1/2 Parrilla','Chuleta (100gr), Bife (100gr), Filete pollo (100gr), 1 Chorizo, Mollejitas (125gr), 1 anticucho + papas fritas peruanas + ensalada',24.90,10,0,'https://cdn.rusticadelivery.com/images/products/55/55-1590419968-5ecbe20045aff.jpeg',6);
INSERT INTO Travel_Productos VALUES(33, 'Parrilla Entera ','Chuleta (200gr), Bife (200gr), Filete pollo (200gr), 2 Chorizo, Mollejitas (250gr), 2 anticuchos + papas fritas peruanas + ensalada',99.90,10,0,'https://cdn.rusticadelivery.com/images/products/56/56-1590419951-5ecbe1ef19b2e.jpeg',6);
INSERT INTO Travel_Productos VALUES(34, 'Anticuchos ','2 palitos de anticuchos y papas fritas peruanas.',23.90,10,0,'https://cdn.rusticadelivery.com/images/products/48/48-1602450609-5f8374b1666d0.jpeg',6);
INSERT INTO Travel_Productos VALUES(35, 'Anticuchos + Mollejitas','2 palitos de anticuchos, papas fritas peruanas y mollejitas.',28.90,10,0,'https://cdn.rusticadelivery.com/images/products/48/48-1602450609-5f8374b1666d0.jpeg',6);
INSERT INTO Travel_Productos VALUES(36, 'Mollejitas','Mollejitas + papas fritas peruanas + ensalada',22.90,10,0,'https://cdn.rusticadelivery.com/images/products/47/47-1588567543-5eaf9df76c2ff.jpg',6);

INSERT INTO Travel_Productos VALUES(37, 'Alitas 4 sabores','7 alitas picantes, 7 alitas broaster, 7 alitas acevichadas, 7 alitas BBQ y papas fritas',69.90,10,0,'https://cdn.rusticadelivery.com/images/products/349/349-1633619339-615f0d8b6c2db.jpg',7);
INSERT INTO Travel_Productos VALUES(38, 'Alitas Acevichadas','14 alitas broaster ba�adas en salsa acevichada decoradas con culantro picado y aj� limo picado',31.90,10,0,'https://cdn.rusticadelivery.com/images/products/341/341-1629132053-611a95151fed7.jpeg',7);
INSERT INTO Travel_Productos VALUES(39, 'Alitas Picantes','14 alitas fritas salteadas en salsa de rocoto acompa�adas de salsa de lim�n',31.90,10,0,'https://cdn.rusticadelivery.com/images/products/63/63-1629148892-611ad6dc8517e.jpg',7);
INSERT INTO Travel_Productos VALUES(40, 'Alitas BBQ','14 alitas fritas salteadas en salsa BBQ acompa�adas de salsa de aj�',31.90,10,0,'https://cdn.rusticadelivery.com/images/products/62/62-01588013094.jpg',7);
INSERT INTO Travel_Productos VALUES(41, 'Alitas Broaster','14 alitas broaster acompa�adas de salsa de aj�',31.90,10,0,'https://cdn.rusticadelivery.com/images/products/64/64-1629148910-611ad6eed3f70.jpg',7);
INSERT INTO Travel_Productos VALUES(42, 'Alitas 3 Sabores','7 Alitas BBQ,  7 picantes y 7 broaster acompa�adas de salsa de aj� y lim�n',39.90,10,0,'https://cdn.rusticadelivery.com/images/products/65/65-1629148931-611ad70378c2f.jpg',7);

INSERT INTO Travel_Productos VALUES(43, 'Aeropuerto Rustico','Tallarin saltado con arroz chaufa y tortilla de huevo',19.90,10,0,'https://cdn.rusticadelivery.com/images/products/339/339-1628026190-6109b54ed9c4f.jpg',8);
INSERT INTO Travel_Productos VALUES(44, 'Fetuccini Verde con Milanesa de Pollo','Disfruta de esta deliciosa combinaci�n de unos fetuccinis en salsa verde con una milanesa de pollo para acompa�arla',19.90,10,0,'https://cdn.rusticadelivery.com/images/products/344/344-1631137834-6139302a55f56.jpeg',8);
INSERT INTO Travel_Productos VALUES(45, 'Anticuchos','2 palitos de anticuchos y papas fritas peruanas.',19.90,10,0,'https://cdn.rusticadelivery.com/images/products/48/48-1602450609-5f8374b1666d0.jpeg',8);
INSERT INTO Travel_Productos VALUES(46, 'Anticuchos + Mollejitas','2 palitos de anticuchos, papas fritas peruanas y mollejitas.',19.90,10,0,'https://cdn.rusticadelivery.com/images/products/53/53-01588010986.jpg',8);
INSERT INTO Travel_Productos VALUES(47, 'Tallar�n S/Pollo','Tallarin saltado con trozos de pollo',25.90,10,0,'https://cdn.rusticadelivery.com/images/products/70/70-1588276581-5eab2d65d721b.jpg',8);
INSERT INTO Travel_Productos VALUES(48, 'Pollo Saltado','Pollo saltado, papas y arroz.',25.90,10,0,'https://cdn.rusticadelivery.com/images/products/71/71-1613268300-6028854c734b8.png',8);





CREATE TABLE Travel_Ventas (
  num_venta CHAR(6) primary key NOT NULL,
  Id_Producto int NOT NULL,
  fec_venta DATE NOT NULL,
  hora_venta TIME NULL,
  tot_venta int not null,
  foreign key (Id_Producto) references Travel_Productos (Id_Producto)
);



Insert Into Travel_Ventas VALUES ('DF0001',1,'2020-03-25','12:21:11',200);
Insert Into Travel_Ventas VALUES ('DF0002',10,'2020-03-25','12:21:11',100);
Insert Into Travel_Ventas VALUES ('DF0003',11,'2020-03-25','12:21:11',80);
Insert Into Travel_Ventas VALUES ('DF0004',20,'2020-03-25','12:21:11',90);
Insert Into Travel_Ventas VALUES ('DF0005',21,'2020-03-25','12:21:11',65);
Insert Into Travel_Ventas VALUES ('DF0006',30,'2020-03-25','12:21:11',80);
Insert Into Travel_Ventas VALUES ('DF0007',31,'2020-03-25','12:21:11',70);
Insert Into Travel_Ventas VALUES ('DF0008',40,'2020-03-25','12:21:11',60);
Insert Into Travel_Ventas VALUES ('DF0009',41,'2020-03-25','12:21:11',50);
Insert Into Travel_Ventas VALUES ('DF0010',48,'2020-03-25','12:21:11',80);



CREATE TABLE DETALLE_VENTA (
num_venta CHAR(6) NOT NULL,
Id_Producto int NOT NULL,
cant_venta INT NOT NULL,
precio_venta int NOT NULL,
importot_venta int NOT NULL,
constraint num_venta Primary key (num_venta,Id_Producto),
foreign key (num_venta) references Travel_Ventas(num_venta),
foreign key (Id_Producto) references Travel_Productos (Id_Producto)
);


INSERT INTO DETALLE_VENTA VALUES ('DF0001',5,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0002',2,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0003',20,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0004',15,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0005',23,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0006',10,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0007',8,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0008',19,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0009',31,2,930,1860);
INSERT INTO DETALLE_VENTA VALUES ('DF0010',42,2,930,1860);



select * from DETALLE_VENTA ;

select * from Travel_Ventas ;



SELECT SUBSTRING(MAX(num_venta),1,6) FROM Travel_Ventas;






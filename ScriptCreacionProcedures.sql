/**************************** Procedure ***************************/

/***********************  Listado  *************************/

delimiter $$
create procedure LISTADO_USUARIO()
begin
	SELECT * FROM Usuario;
end $$
delimiter ;

call LISTADO_USUARIO();



/**************************** Insertar ***************************/

delimiter $$
CREATE PROCEDURE INSERTUSUARIO(
codusu char(6),
username varchar(15),
apellido varchar(15),
tipo  int,
usuario varchar(15),
clave varchar(15),
telefono  char(9),
fechareg  date,
fechanac  date)
BEGIN
INSERT INTO Usuario VALUES (codusu,username,apellido,tipo,usuario,clave,telefono,fechareg,fechanac);
END$$ 

drop procedure INSERTUSUARIO;


CALL INSERTUSUARIO('US0010','Ana','Cardenas lana',2,'an8@gmail.com','123456','936455358','2021-02-19','2000-03-25');
SELECT * FROM Usuario;

/**** Insertar 1 usuario *****/


/***********************  Actualizar  *************************/

delimiter $$
CREATE PROCEDURE ACTUALIZAR_USUARIO(
codusu char(6),
username varchar(15),
apellido varchar(15),
tipo  int,
email varchar(15),
clave varchar(15),
telefono  char(9),
fechareg  date,
fechanac  date)
BEGIN
UPDATE Usuario SET nom_usuario=username,ape_usuario=apellido,cod_tipo=tipo,email=email,clave=clave,tele_usuario=telefono,fecha_reg=fechareg,fecha_nac=fechanac where cod_usuario=codusu;
END$$

CALL ACTUALIZAR_USUARIO('US0010','Anasss','Cardenas lana',2,'an8@gmail.com','123456','936455358','2021-02-19','2000-03-25');

SELECT * FROM Usuario;

/***********************  Eliminar  *************************/

delimiter $$
CREATE PROCEDURE ELIMINAR_USUARIO(
codusu CHAR(6))
BEGIN
DELETE from Usuario where cod_Usuario=codusu;
END$$

call ELIMINAR_USUARIO('US0010');

SELECT * FROM Usuario;

/******************************************************************/




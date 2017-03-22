CREATE TABLE persona(
	idpersona int,
	nombre varchar(60),
	apPaterno varchar(60),
	apMaterno varchar(60),
	correo varchar(128),
	contraseña varchar(60),
	esAdministrador int,
	nombreDeUsuariovarchar(128)
);

CREATE TABLE puesto(
	idPuesto int,
	nombre varchar(60),
	posX real,
	posY real,
	calificacion int
);
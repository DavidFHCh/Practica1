drop table if exists PERSONA;

create table if not exists PERSONA (
  idPersona serial primary key,
  nombre varchar(255) not null,
  apPaterno varchar(255) not null,
  apMaterno varchar(255),
  correo varchar(255) not null,
  contraseña varchar(255) not null,
  esAdministrador boolean,
  nombreDeUsuario varchar(255) not null
) engine=InnoDB default charset=utf8;

drop table if exists PUESTO;

create table if not exists PUESTO (
  idPuesto serial primary key,
  nombre varchar(255) not null,
  posX double,
  posY double,
  calificacion double
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists MENU;

create table if not exists MENU(
  idMenu serial primary key,
  diaDeLaSemana varchar(15) not null,
  desayuno_o_comida varchar(15) not null,
  idPuesto bigint(20),
  foreign key(idPuesto) references PUESTO(idPuesto)
);

drop table if exists Menu_Alimento;

CREATE TABLE Menu_Alimento(
  nIdMenu int identity,
  nIdAlimento int
);

drop table if exists ALIMENTO;

CREATE TABLE ALIMENTO(
  nIdAlimento int identity
  sNombre varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists PLATILLO;

CREATE TABLE PLATILLO(
  idAlimento int NOT NULL, 
  idPlatillo int identity,
  precio decimal(19,4)
);

drop table if exists COMENTARIO;

create table if not exists COMENTARIO (
	idComentario serial primary key,
	idPuesto bigint(20) unsigned not null,
	idPersona bigint(20) unsigned not null,
	comentario varchar(255) not null,

	foreign key(idPuesto) references PUESTO(idPuesto),
	foreign key(idPersona) references PERSONA(idPersona)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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

drop table if exists COMENTARIO;

create table if not exists COMENTARIO (
	idComentario serial primary key,
	idPuesto bigint(20) unsigned not null,
	idPersona bigint(20) unsigned not null,
	comentario varchar(255) not null,

	foreign key(idPuesto) references PUESTO(idPuesto),
	foreign key(idPersona) references PERSONA(idPersona)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
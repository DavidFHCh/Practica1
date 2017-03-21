CREATE TABLE Comentario(
	idPuesto 		 	int ,
	idComentario		int,
	comentario			varchar(500),
	idPersona			int foreign key references Persona(idPersona),
	PRIMARY KEY (idPuesto, idComentario)
	
);
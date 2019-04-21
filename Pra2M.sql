CREATE TABLE Alumnos(
	idAlumno uniqueidentifier NOT NULL,
	FechaDeNacimiento date NOT NULL,
	Nombre varchar (10) NOT NULL,
	ApellidoP varchar (15) NOT NULL,
	ApellidoM varchar (15) NOT NULL,
	NombreCompleto  AS ((((Nombre+' ')+ ApellidoP)+' ')+ ApellidoM ),
	Edad AS (datediff(year, FechaDeNacimiento ,getdate())),
PRIMARY KEY (Alumnos)
) 


CREATE TABLE Carreras(
	idCarreara uniqueidentifier NOT NULL,
	NombreCarrera varchar (30) NULL,
PRIMARY KEY (Carreras)
) 


CREATE TABLE Maestros(
	idMaestro uniqueidentifier NOT NULL,
	FechaDeNacimiento date NOT NULL,
	Nombre varchar (10) NOT NULL,
	ApellidoP varchar(15) NOT NULL,
	ApellidoM varchar(15) NOT NULL,
	NombreCompleto  AS ((((Nombre+' ')+ApellidoP)+' ')+ ApellidoM),
	Sueldo money NULL,
PRIMARY KEY  (Maestros)
) 


CREATE TABLE trabajadores (
  idTrabajadores int(11) NOT NULL AUTO_INCREMENT,
  Nombres varchar(15) NOT NULL,
  ApellidoPaterno varchar(45) NOT NULL,
  ApellidoMaterno  varchar(45) DEFAULT NULL,
  Edades int(11) NOT NULL,
  Sueldo int(11) NOT NULL,
  PRIMARY KEY (`idTrabajadores`)
) 

CREATE TABLE trabajadores1 (
  idTrabajadores1 int(11) NOT NULL AUTO_INCREMENT,
  Nombre  varchar(20) NOT NULL,
  ApellidoPaterno varchar(20) NOT NULL,
  ApellidoMaterno  varchar(45) DEFAULT NULL,
  Edad  int(11) NOT NULL,
  Sueldo  int(11) NOT NULL,
  PRIMARY KEY (`idTrabajadores1`)
)

CREATE TABLE usuario (
  idUsuario int(11) NOT NULL,
  nombre varchar(20) NOT NULL,
  apellidoPa varchar(5) NOT NULL,
  apellidoMa varchar(15) NOT NULL,
  fechaNa int(10) NOT NULL,
  PRIMARY KEY (idUsuario)
  )
  

CREATE TABLE reservacion (
  tipoHabitacion varchar (20) NOT NULL,
  idHabitacion int(100) NOT NULL,
  lugar varchar (20) NOT NULL,
  PRIMARY KEY(idHabitacion)
  )
  
  CREATE TABLE recepcionista (
    nombre varchar(20) NOT NULL,
  apellidoPa varchar(5) NOT NULL,
  apellidoMa varchar(15) NOT NULL,
  idEmpleado int (100)
  PRIMARY KEY(idEmpleado)
  )
CREATE TABLE Soldado(
	id_Soldado uniqueidentifier NOT NULL,
	id_cuerpo2  varchar (10) NOT NULL,
	id_compañia2  varchar (10) NOT NULL,
	id_cuartel1 varchar (10) NOT NULL,
	Nombre varchar (10) NOT NULL,
	ApellidoP varchar (15) NOT NULL,
	ApellidoM varchar (15) NOT NULL,
	Grado int (15) NOT NULL,
	NombreCompleto  AS ((((Nombre+' ')+ ApellidoP)+' ')+ ApellidoM ),
	constraint pk_idsoldado Primary KEY (id_Soldado)
);

CREATE TABLE Servicio(
	id_Servicio in,
	Actividad varchar (20) NOT NULL,
	constraint pk_idservicio PRIMARY KEY (id_Servicio)
);

CREATE TABLE Soldado_servicio(
	id_Soldado_servicio uniqueidentifier NOT NULL,
	id_servicio2  varchar (10) NOT NULL,
	Fecha_realizo date NOT NULL
	constraint pk_idSoldadoservicio PRIMARY KEY (id_Soldado_servicio)
);

CREATE TABLE Cuartel(
	id_Cuartel uniqueidentifier NOT NULL,
	Nombre varchar (10) NOT NULL,
	ubicacion varchar (10) NOT NULL,
	constraint pk_idCuartel PRIMARY KEY (id_Cuartel)
);

CREATE TABLE Compañia_cuartl(
	id_compañia3 uniqueidentifier NOT NULL,
	id_cuartel2  varchar (10) NOT NULL,
	constraint pk_idCompañiacuartel PRIMARY KEY (id_Compañia_cuartl)
);

CREATE TABLE Cuerpo(
	id_Cuerpo uniqueidentifier NOT NULL,
	Denominacion varchar (10) NOT NULL,
	constraint pk_idcuerpo PRIMARY KEY (id_Cuerpo)
);


CREATE TABLE Compañia(
	id_Comapia uniqueidentifier NOT NULL,
	Actividadn varchar (10) NOT NULL,
	constraint pk_idCompañia PRIMARY KEY (Compañia)
);

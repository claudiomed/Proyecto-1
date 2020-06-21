USE [master]

GO

CREATE DATABASE [ToDoList]

GO

USE [ToDoList]

GO

CREATE TABLE [TIPOS_USUARIO_TB]
(
	[Tipos_Usuario_ID] TINYINT IDENTITY(1,1) NOT NULL, 
	[Descripcion] VARCHAR(20) NOT NULL

	CONSTRAINT [Tipos_Usuario_PK] 
	PRIMARY KEY CLUSTERED ([Tipos_Usuario_ID])
	
)

GO 

CREATE TABLE [USUARIOS_TB]
(
	[Usuario_ID] INT IDENTITY(1,1) NOT NULL, 
	[Email] VARCHAR(40) NOT NULL, 
	[Pass] VARCHAR(45) NOT NULL, 
	[Tipo_Usuario] TINYINT NOT NULL,
	
	CONSTRAINT [Usuario_ID_PK] 
	PRIMARY KEY CLUSTERED ([Usuario_ID])
)

GO 

ALTER TABLE [USUARIOS_TB]
WITH NOCHECK 
ADD CONSTRAINT [Usuarios_Usuario_Tipo_Usuario_FK]
FOREIGN KEY ([Tipo_Usuario])
REFERENCES [TIPOS_USUARIO_TB] ([Tipos_Usuario_ID])

GO 

CREATE TABLE [CUENTAS_TB]
(
	[Cuenta_ID] INT IDENTITY(1,1) NOT NULL,
	[Cuenta_Usuario_ID] INT NOT NULL
	
	CONSTRAINT [CUENTA_ID_PK] 
	PRIMARY KEY CLUSTERED ([CUENTA_ID])
)

GO 

ALTER TABLE [CUENTAS_TB]
WITH NOCHECK 
ADD CONSTRAINT [Cuenta_Usuario_FK]
FOREIGN KEY ([Cuenta_Usuario_ID])
REFERENCES [USUARIOS_TB] ([Usuario_ID])

GO 

CREATE TABLE [NOTAS_TB]
(
	[Nota_ID] INT IDENTITY(1,1) NOT NULL,
	[Notas_Cuenta_ID] INT NOT NULL,
	[Titulo] VARCHAR(100) NULL, 
	[Cuerpo] TEXT NULL, 
	[Fecha_Creacion] DATETIME NOT NULL, 
	[Estado] CHAR NOT NULL
	
	CONSTRAINT [Notas_ID_PK] 
	PRIMARY KEY CLUSTERED ([Nota_ID])
)

GO 

ALTER TABLE [NOTAS_TB]
WITH NOCHECK 
ADD CONSTRAINT [Notas_Usuario_FK]
FOREIGN KEY ([Notas_Cuenta_ID])
REFERENCES [CUENTAS_TB] ([Cuenta_ID])



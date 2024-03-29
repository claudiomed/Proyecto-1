USE [master]
GO
/****** Object:  Database [ToDoList]    Script Date: 27/6/2020 17:31:04 ******/
CREATE DATABASE [ToDoList]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ToDoList', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ToDoList.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ToDoList_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ToDoList_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ToDoList] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ToDoList].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ToDoList] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ToDoList] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ToDoList] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ToDoList] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ToDoList] SET ARITHABORT OFF 
GO
ALTER DATABASE [ToDoList] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ToDoList] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ToDoList] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ToDoList] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ToDoList] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ToDoList] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ToDoList] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ToDoList] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ToDoList] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ToDoList] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ToDoList] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ToDoList] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ToDoList] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ToDoList] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ToDoList] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ToDoList] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ToDoList] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ToDoList] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ToDoList] SET  MULTI_USER 
GO
ALTER DATABASE [ToDoList] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ToDoList] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ToDoList] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ToDoList] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ToDoList] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ToDoList] SET QUERY_STORE = OFF
GO
USE [ToDoList]
GO
/****** Object:  Table [dbo].[CUENTAS_TB]    Script Date: 27/6/2020 17:31:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUENTAS_TB](
	[Cuenta_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cuenta_Usuario_ID] [int] NOT NULL,
	[Tipo_cuenta] [char](1) NOT NULL,
	[Numero_Tarjeta] [varchar](50) NULL,
 CONSTRAINT [CUENTA_ID_PK] PRIMARY KEY CLUSTERED 
(
	[Cuenta_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NOTAS_TB]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOTAS_TB](
	[Nota_ID] [int] IDENTITY(1,1) NOT NULL,
	[Notas_Cuenta_ID] [int] NOT NULL,
	[Titulo] [varchar](100) NULL,
	[Cuerpo] [text] NULL,
	[Fecha_Creacion] [datetime] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [Notas_ID_PK] PRIMARY KEY CLUSTERED 
(
	[Nota_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_USUARIO_TB]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_USUARIO_TB](
	[Tipos_Usuario_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [Tipos_Usuario_PK] PRIMARY KEY CLUSTERED 
(
	[Tipos_Usuario_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS_TB]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS_TB](
	[Usuario_ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](40) NOT NULL,
	[Pass] [varchar](45) NOT NULL,
	[Tipo_Usuario] [tinyint] NOT NULL,
 CONSTRAINT [Usuario_ID_PK] PRIMARY KEY CLUSTERED 
(
	[Usuario_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TIPOS_USUARIO_TB] ON 

INSERT [dbo].[TIPOS_USUARIO_TB] ([Tipos_Usuario_ID], [Descripcion]) VALUES (1, N'Standard')
INSERT [dbo].[TIPOS_USUARIO_TB] ([Tipos_Usuario_ID], [Descripcion]) VALUES (2, N'Premium')
SET IDENTITY_INSERT [dbo].[TIPOS_USUARIO_TB] OFF
SET IDENTITY_INSERT [dbo].[USUARIOS_TB] ON 

INSERT [dbo].[USUARIOS_TB] ([Usuario_ID], [Email], [Pass], [Tipo_Usuario]) VALUES (1, N'cmedrano1@gmail.com', N'Welcome', 1)
INSERT [dbo].[USUARIOS_TB] ([Usuario_ID], [Email], [Pass], [Tipo_Usuario]) VALUES (2, N'a@fsas.com', N'a', 1)
SET IDENTITY_INSERT [dbo].[USUARIOS_TB] OFF
ALTER TABLE [dbo].[CUENTAS_TB] ADD  DEFAULT ('S') FOR [Tipo_cuenta]
GO
ALTER TABLE [dbo].[CUENTAS_TB]  WITH NOCHECK ADD  CONSTRAINT [Cuenta_Usuario_FK] FOREIGN KEY([Cuenta_Usuario_ID])
REFERENCES [dbo].[USUARIOS_TB] ([Usuario_ID])
GO
ALTER TABLE [dbo].[CUENTAS_TB] CHECK CONSTRAINT [Cuenta_Usuario_FK]
GO
ALTER TABLE [dbo].[NOTAS_TB]  WITH NOCHECK ADD  CONSTRAINT [Notas_Usuario_FK] FOREIGN KEY([Notas_Cuenta_ID])
REFERENCES [dbo].[CUENTAS_TB] ([Cuenta_ID])
GO
ALTER TABLE [dbo].[NOTAS_TB] CHECK CONSTRAINT [Notas_Usuario_FK]
GO
ALTER TABLE [dbo].[USUARIOS_TB]  WITH NOCHECK ADD  CONSTRAINT [Usuarios_Usuario_Tipo_Usuario_FK] FOREIGN KEY([Tipo_Usuario])
REFERENCES [dbo].[TIPOS_USUARIO_TB] ([Tipos_Usuario_ID])
GO
ALTER TABLE [dbo].[USUARIOS_TB] CHECK CONSTRAINT [Usuarios_Usuario_Tipo_Usuario_FK]
GO
/****** Object:  StoredProcedure [dbo].[Consultar_tablas_SP]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Consultar_tablas_SP]
(
	@Nombre_tabla NVARCHAR(30)
)
AS 
	BEGIN
		DECLARE @Tabla NVARCHAR(MAX)
		SET @Tabla= 'SELECT * FROM '+@Nombre_tabla
		EXECUTE sp_executesql @Tabla

	END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_CUENTAS_SP]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CRUD DE CUENTAS--

CREATE PROCEDURE [dbo].[CRUD_CUENTAS_SP]
(
	@Cuenta_ID INT, 
	@Cuenta_Usuario_ID INT,
	@Tipo_Cuenta CHAR,
	@Numero_Tarjeta VARCHAR(50),
	@Accion CHAR(1)
)
AS 
BEGIN
		IF(@Accion = 'C')
	BEGIN
		INSERT INTO [CUENTAS_TB]
		VALUES(@Cuenta_Usuario_ID, @Tipo_Cuenta, @Numero_Tarjeta)
	END
		ELSE IF(@Accion='U')
	BEGIN
		UPDATE [CUENTAS_TB]
		SET [Tipo_cuenta] = @Tipo_Cuenta, [Numero_Tarjeta]= @Numero_Tarjeta
		WHERE [Cuenta_ID] = @Cuenta_ID
	END
		ELSE IF(@Accion='D')
	BEGIN
		DELETE FROM [CUENTAS_TB]
		WHERE [Cuenta_ID] = @Cuenta_ID
	END
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_NOTAS_SP]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CRUD DE CUENTAS--

CREATE PROCEDURE [dbo].[CRUD_NOTAS_SP]
(
	@Nota_ID INT, 
	@Notas_Cuenta_ID INT,
	@Titulo VARCHAR(100),
	@Cuerpo TEXT,
	@Fecha_Creacion DATETIME,
	@Estado CHAR,
	@Accion CHAR
)
AS 
BEGIN
		IF(@Accion = 'C')
	BEGIN
		INSERT INTO [NOTAS_TB]
		VALUES(@Notas_Cuenta_ID, @Titulo, @Cuerpo, @Fecha_Creacion, @Estado)
	END
		ELSE IF(@Accion='U')
	BEGIN
		UPDATE [NOTAS_TB]
		SET [Titulo] = @Titulo, [Cuerpo]= @Cuerpo, [Fecha_Creacion] = @Fecha_Creacion, [Estado] = @Estado 
		WHERE [Nota_ID] = @Nota_ID
	END
		ELSE IF(@Accion='D')
	BEGIN
		DELETE FROM [NOTAS_TB]
		WHERE [Nota_ID] = @Nota_ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[CRUD_TIPOS_USUARIO_SP]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CRUD DE TIPOS DE USUARIO--

CREATE PROCEDURE [dbo].[CRUD_TIPOS_USUARIO_SP]
(
	@Tipo_Usuario_ID TINYINT, 
	@Descripcion VARCHAR(20),
	@Accion CHAR(1)
)
AS 
BEGIN
		IF(@Accion = 'C')
	BEGIN
		INSERT INTO [TIPOS_USUARIO_TB]
		VALUES(@Descripcion)
	END
		ELSE IF(@Accion='U')
	BEGIN
		UPDATE [TIPOS_USUARIO_TB]
		SET [Descripcion]= @Descripcion
		WHERE [Tipos_Usuario_ID] = @Tipo_Usuario_ID
	END
		ELSE IF(@Accion='D')
	BEGIN
		DELETE FROM [TIPOS_USUARIO_TB]
		WHERE [Tipos_Usuario_ID] = @Tipo_Usuario_ID
	END
END

GO
/****** Object:  StoredProcedure [dbo].[CRUD_USUARIOS_SP]    Script Date: 27/6/2020 17:31:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CRUD DE USUARIOS--

CREATE PROCEDURE [dbo].[CRUD_USUARIOS_SP]
(
	@Usuario_ID INT, 
	@Email VARCHAR(40),
	@Pass VARCHAR(45),
	@Tipo_Usuario TINYINT,
	@Accion CHAR(1)
)
AS 
BEGIN
		IF(@Accion = 'C')
	BEGIN
		INSERT INTO [USUARIOS_TB]
		VALUES(@Email, @Pass, @Tipo_Usuario)
	END
		ELSE IF(@Accion='U')
	BEGIN
		UPDATE [USUARIOS_TB]
		SET [Email]= @Email, [Pass] = @Pass, [Tipo_Usuario] = @Tipo_Usuario
		WHERE [Usuario_ID] = @Usuario_ID
	END
		ELSE IF(@Accion='D')
	BEGIN
		DELETE FROM [USUARIOS_TB]
		WHERE [Usuario_ID] = @Usuario_ID
	END
END


GO
USE [master]
GO
ALTER DATABASE [ToDoList] SET  READ_WRITE 
GO

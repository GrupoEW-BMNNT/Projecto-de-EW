USE [master]
GO
/****** Object:  Database [EWProjecto]    Script Date: 02/22/2013 04:09:48 ******/
CREATE DATABASE [EWProjecto] ON  PRIMARY 
( NAME = N'EWProjecto', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EWProjecto.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EWProjecto_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EWProjecto_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EWProjecto] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EWProjecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EWProjecto] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EWProjecto] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EWProjecto] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EWProjecto] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EWProjecto] SET ARITHABORT OFF
GO
ALTER DATABASE [EWProjecto] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [EWProjecto] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EWProjecto] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EWProjecto] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EWProjecto] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EWProjecto] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EWProjecto] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EWProjecto] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EWProjecto] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EWProjecto] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EWProjecto] SET  DISABLE_BROKER
GO
ALTER DATABASE [EWProjecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EWProjecto] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EWProjecto] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EWProjecto] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EWProjecto] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EWProjecto] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EWProjecto] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EWProjecto] SET  READ_WRITE
GO
ALTER DATABASE [EWProjecto] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EWProjecto] SET  MULTI_USER
GO
ALTER DATABASE [EWProjecto] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EWProjecto] SET DB_CHAINING OFF
GO
USE [EWProjecto]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnoLectivo]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnoLectivo](
	[Ano] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_AnoLectivo] PRIMARY KEY CLUSTERED 
(
	[Ano] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplina]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplina](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Disciplina] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescricaoCurso]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescricaoCurso](
	[sigla] [nvarchar](200) NOT NULL,
	[descricao] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DescricaoCurso] PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Custos]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Custos](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [nvarchar](200) NOT NULL,
	[custo] [float] NOT NULL,
 CONSTRAINT [PK_Custos] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](32) NOT NULL,
	[password] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Utilizador] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GruposUtilizador]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GruposUtilizador](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[oidUtilizador] [int] NOT NULL,
	[oidGrupo] [int] NOT NULL,
 CONSTRAINT [PK_GruposUtilizador] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoAno]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoAno](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[oidSigla] [nvarchar](200) NOT NULL,
	[ano] [int] NOT NULL,
 CONSTRAINT [PK_CursoAno] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaMaterialDidactico]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaMaterialDidactico](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[dataActualizacao] [datetime] NOT NULL,
	[descricao] [nvarchar](200) NOT NULL,
	[oidAnoLectivo] [nvarchar](200) NOT NULL,
	[oidCursoAno] [int] NOT NULL,
 CONSTRAINT [PK_ListaMaterialDidactico] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudante]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudante](
	[oidUtilizador] [int] NOT NULL,
	[email] [nvarchar](200) NOT NULL,
	[contacto] [nvarchar](200) NOT NULL,
	[oidCursoAno] [int] NOT NULL,
 CONSTRAINT [PK_Estudante] PRIMARY KEY CLUSTERED 
(
	[oidUtilizador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialDidactico]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialDidactico](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](200) NOT NULL,
	[descricao] [nvarchar](200) NOT NULL,
	[nrPaginas] [int] NOT NULL,
	[oidDisciplina] [int] NOT NULL,
	[oidLista] [int] NOT NULL,
 CONSTRAINT [PK_MaterialDidactico] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoImpressao]    Script Date: 02/22/2013 04:09:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoImpressao](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[cor] [bit] NOT NULL,
	[nrCopias] [int] NOT NULL,
	[pagPorFolha] [int] NOT NULL,
	[frenteVerso] [bit] NOT NULL,
	[custo] [float] NOT NULL,
	[concluido] [bit] NULL,
	[adicionado] [datetime] NOT NULL,
	[oidEstudante] [int] NOT NULL,
	[oidMaterial] [int] NOT NULL,
 CONSTRAINT [PK_PedidoImpressao] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [GruposUtilizador2Grupo]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[GruposUtilizador]  WITH CHECK ADD  CONSTRAINT [GruposUtilizador2Grupo] FOREIGN KEY([oidGrupo])
REFERENCES [dbo].[Grupo] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GruposUtilizador] CHECK CONSTRAINT [GruposUtilizador2Grupo]
GO
/****** Object:  ForeignKey [GruposUtilizador2Utilizador]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[GruposUtilizador]  WITH CHECK ADD  CONSTRAINT [GruposUtilizador2Utilizador] FOREIGN KEY([oidUtilizador])
REFERENCES [dbo].[Utilizador] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GruposUtilizador] CHECK CONSTRAINT [GruposUtilizador2Utilizador]
GO
/****** Object:  ForeignKey [CursoAno2DescricaoCurso]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[CursoAno]  WITH CHECK ADD  CONSTRAINT [CursoAno2DescricaoCurso] FOREIGN KEY([oidSigla])
REFERENCES [dbo].[DescricaoCurso] ([sigla])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CursoAno] CHECK CONSTRAINT [CursoAno2DescricaoCurso]
GO
/****** Object:  ForeignKey [ListaMaterialDidactico2AnoLectivo]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[ListaMaterialDidactico]  WITH CHECK ADD  CONSTRAINT [ListaMaterialDidactico2AnoLectivo] FOREIGN KEY([oidAnoLectivo])
REFERENCES [dbo].[AnoLectivo] ([Ano])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ListaMaterialDidactico] CHECK CONSTRAINT [ListaMaterialDidactico2AnoLectivo]
GO
/****** Object:  ForeignKey [ListaMaterialDidactico2CursoAno]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[ListaMaterialDidactico]  WITH CHECK ADD  CONSTRAINT [ListaMaterialDidactico2CursoAno] FOREIGN KEY([oidCursoAno])
REFERENCES [dbo].[CursoAno] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ListaMaterialDidactico] CHECK CONSTRAINT [ListaMaterialDidactico2CursoAno]
GO
/****** Object:  ForeignKey [Estudante2CursoAno]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[Estudante]  WITH CHECK ADD  CONSTRAINT [Estudante2CursoAno] FOREIGN KEY([oidCursoAno])
REFERENCES [dbo].[CursoAno] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estudante] CHECK CONSTRAINT [Estudante2CursoAno]
GO
/****** Object:  ForeignKey [Estudante2Utilizador]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[Estudante]  WITH CHECK ADD  CONSTRAINT [Estudante2Utilizador] FOREIGN KEY([oidUtilizador])
REFERENCES [dbo].[Utilizador] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estudante] CHECK CONSTRAINT [Estudante2Utilizador]
GO
/****** Object:  ForeignKey [MaterialDidactico2Lista]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[MaterialDidactico]  WITH CHECK ADD  CONSTRAINT [MaterialDidactico2Lista] FOREIGN KEY([oidLista])
REFERENCES [dbo].[ListaMaterialDidactico] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialDidactico] CHECK CONSTRAINT [MaterialDidactico2Lista]
GO
/****** Object:  ForeignKey [MaterialDidatico2Disciplina]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[MaterialDidactico]  WITH CHECK ADD  CONSTRAINT [MaterialDidatico2Disciplina] FOREIGN KEY([oidDisciplina])
REFERENCES [dbo].[Disciplina] ([oid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialDidactico] CHECK CONSTRAINT [MaterialDidatico2Disciplina]
GO
/****** Object:  ForeignKey [PedidoImpressao2Estudante]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[PedidoImpressao]  WITH CHECK ADD  CONSTRAINT [PedidoImpressao2Estudante] FOREIGN KEY([oidEstudante])
REFERENCES [dbo].[Estudante] ([oidUtilizador])
GO
ALTER TABLE [dbo].[PedidoImpressao] CHECK CONSTRAINT [PedidoImpressao2Estudante]
GO
/****** Object:  ForeignKey [PedidoImpressao2Material]    Script Date: 02/22/2013 04:09:50 ******/
ALTER TABLE [dbo].[PedidoImpressao]  WITH CHECK ADD  CONSTRAINT [PedidoImpressao2Material] FOREIGN KEY([oidMaterial])
REFERENCES [dbo].[MaterialDidactico] ([oid])
GO
ALTER TABLE [dbo].[PedidoImpressao] CHECK CONSTRAINT [PedidoImpressao2Material]
GO

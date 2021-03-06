
/** Nombre: Sebastian Perez     Matricula: 15-SIIN-1-151     Seccion: 0541 
    Nombre: Angel Vidal         Matricula: 15-SIIN-1-022     Seccion: 0541
	Nombre: Yordanys Urbaez     Matricula: 15-SIIT-1-067     Seccion: 0541**/

USE [master]
GO
/****** Object:  Database [Peliculas y Salas]    Script Date: 14/04/2019 16:32:00 ******/
CREATE DATABASE [Peliculas y Salas]
 
USE [Peliculas y Salas]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 14/04/2019 16:32:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[ClasificacionEdad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 14/04/2019 16:32:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (1, N'Avengers', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (2, N'Spiderman', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (3, N'Lotoman', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (4, N'SuperMan', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (5, N'Batman', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (6, N'Titanic', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (7, N'Andrea', 16)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (8, N'La Guerra', 18)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (9, N'Infinity War', 16)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (10, N'Sanky Panky', 12)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (1, N'Sala 1', 10)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (2, N'Sala 2', 9)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (3, N'Sala 3', 8)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (4, N'Sala 4', 7)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (5, N'Sala 5', 6)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (6, N'Sala 6', 5)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (7, N'Sala 7', 4)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (8, N'Sala 8', 3)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (9, N'Sala 9', 2)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (10, N'Sala 10', 1)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [Peliculas y Salas] SET  READ_WRITE 
GO

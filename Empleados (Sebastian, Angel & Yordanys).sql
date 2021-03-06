
/** Nombre: Sebastian Perez     Matricula: 15-SIIN-1-151     Seccion: 0541
    Nombre: Angel Vidal         Matricula: 15-SIIN-1-022     Seccion: 0541
	Nombre: Yordanys Urbaez     Matricula: 15-SIIT-1-067     Seccion: 0541**/

USE [master]
GO
/****** Object:  Database [Empleados]    Script Date: 14/04/2019 16:22:28 ******/
CREATE DATABASE [Empleados]
 
USE [Empleados]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 14/04/2019 16:22:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Presupuesto] [int] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/04/2019 16:22:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[DNI] [varchar](8) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nchar](10) NULL,
	[Departamento] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (1, N'Seguridad', 100000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (2, N'Operaciones', 80000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (3, N'Almacen', 60000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (4, N'Gestion', 40000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (5, N'Recursos Humanos', 80000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (6, N'Soporte', 60000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (7, N'Calidad', 50000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (8, N'Relaciones exteriores', 40000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (9, N'Salud', 30000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (10, N'Higiene y Seguridad', 25000)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E1', N'Alberto', N'Sanchez   ', 10)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E10', N'Reyna', N'Ruiz      ', 1)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E2', N'Maria', N'Perez     ', 9)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E3', N'Pedro', N'Medina    ', 8)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E4', N'Jason ', N'Diaz      ', 7)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E5', N'Michel', N'Beltre    ', 6)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E6', N'Paul', N'Nuñez     ', 5)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E7', N'Richard', N'Gomez     ', 4)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E8', N'Paola', N'Trinidad  ', 3)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E9', N'Wilbert', N'Vicente   ', 2)
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Departamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[Departamentos] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Departamentos]
GO
USE [master]
GO
ALTER DATABASE [Empleados] SET  READ_WRITE 
GO

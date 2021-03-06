
/** Nombre: Sebastian Perez     Matricula: 15-SIIN-1-151     Seccion: 0541 
    Nombre: Angel Vidal         Matricula: 15-SIIN-1-022     Seccion: 0541
	Nombre: Yordanys Urbaez     Matricula: 15-SIIT-1-067     Seccion: 0541**/

USE [master]
GO
/****** Object:  Database [La Tienda de Informatica]    Script Date: 14/04/2019 16:10:52 ******/
CREATE DATABASE [La Tienda de Informatica]
 
USE [La Tienda de Informatica]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 14/04/2019 16:10:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[CodigoArticulo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Precio] [int] NULL,
	[CodigoFabricante] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[CodigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fabricantes]    Script Date: 14/04/2019 16:10:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricantes](
	[CodigoFabricantes] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Fabricantes] PRIMARY KEY CLUSTERED 
(
	[CodigoFabricantes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (1, N'Mouse', 200, 10)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (2, N'Teclado', 300, 9)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (3, N'Monitor', 3200, 8)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (4, N'Bocina', 1500, 7)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (5, N'Tarjeta RAM', 300, 6)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (6, N'Tarjeta ROM', 2500, 5)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (7, N'Procesador', 5000, 4)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (8, N'Cargador', 2000, 3)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (9, N'Laptop', 26000, 2)
INSERT [dbo].[Articulos] ([CodigoArticulo], [Nombre], [Precio], [CodigoFabricante]) VALUES (10, N'Tablet', 15000, 1)
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (1, N'HP')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (2, N'DELL')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (3, N'Apple')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (4, N'SAMSUNG')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (5, N'SONIC')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (6, N'ISO')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (7, N'MICROSOFT')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (8, N'LINUX')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (9, N'NIKE')
INSERT [dbo].[Fabricantes] ([CodigoFabricantes], [Nombre]) VALUES (10, N'PP')
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Fabricantes] FOREIGN KEY([CodigoFabricante])
REFERENCES [dbo].[Fabricantes] ([CodigoFabricantes])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Fabricantes]
GO
USE [master]
GO
ALTER DATABASE [La Tienda de Informatica] SET  READ_WRITE 
GO

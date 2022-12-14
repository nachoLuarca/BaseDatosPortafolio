USE [RestaurantSigloXXI]
GO
/****** Object:  Table [dbo].[Boleta]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleta](
	[Id] [int] NOT NULL,
	[folio] [int] NULL,
	[fecha] [date] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Boleta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoEmpleado]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoEmpleado](
	[id] [int] NOT NULL,
	[descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Cargo_Empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] NOT NULL,
	[descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] NOT NULL,
	[nombre] [varchar](max) NULL,
	[contacto] [varchar](max) NULL,
	[correo] [varchar](max) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDeCompra]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDeCompra](
	[id] [int] NOT NULL,
	[idOrden] [int] NULL,
	[idFactura] [int] NULL,
	[idProducto] [int] NULL,
 CONSTRAINT [PK_DetalleDeCompra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[id] [int] NOT NULL,
	[fecha] [date] NULL,
	[hora] [time](7) NULL,
	[valor] [date] NULL,
	[id_Boleta] [int] NULL,
	[Id_Orden] [int] NULL,
	[id_MedioPago] [int] NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id] [int] NOT NULL,
	[rut] [varchar](max) NULL,
	[nombre] [varchar](max) NULL,
	[dirección] [nvarchar](max) NULL,
	[contacto] [varchar](max) NULL,
	[correo] [varchar](max) NULL,
	[fecha_contratacion] [varchar](max) NOT NULL,
	[id_Cargo] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Id] [int] NOT NULL,
	[numero] [int] NULL,
	[fecha] [date] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedioPago]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedioPago](
	[Id] [int] NOT NULL,
	[descrpcion] [varchar](max) NULL,
 CONSTRAINT [PK_MedioPago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] NOT NULL,
	[descripcion] [varchar](max) NULL,
	[tipo_menu] [varchar](max) NULL,
	[cantidad] [int] NULL,
	[valor] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[Id] [int] NOT NULL,
	[cod] [varchar](max) NULL,
	[descripcion] [varchar](max) NULL,
	[cantidad_sillas] [int] NULL,
	[Ubicación] [varchar](max) NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenCliente]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenCliente](
	[Id] [int] NOT NULL,
	[num] [varchar](max) NULL,
	[id_Menu] [int] NULL,
	[id_Mesa] [int] NULL,
	[id_Cliente] [int] NULL,
	[id_empelado] [int] NULL,
 CONSTRAINT [PK_OrdenCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenDeCompra]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenDeCompra](
	[Id] [int] NOT NULL,
	[num] [int] NULL,
	[descripcion] [varchar](max) NULL,
	[id_Empleado] [int] NULL,
	[id_Factura] [int] NULL,
 CONSTRAINT [PK_OrdenDeCompra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] NOT NULL,
	[cod] [varchar](max) NULL,
	[descripcion] [varchar](max) NULL,
	[cantidad] [int] NULL,
	[fecha_ingreso] [date] NULL,
	[fecha_Vencimiento] [date] NULL,
	[valor] [int] NULL,
	[Id_Provedor] [int] NULL,
	[id_Categoria] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 25/08/2022 0:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id] [int] NOT NULL,
	[nombre] [varchar](max) NULL,
	[contacto] [varchar](max) NULL,
	[Correo] [varchar](max) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleDeCompra]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeCompra_Factura] FOREIGN KEY([idFactura])
REFERENCES [dbo].[Factura] ([Id])
GO
ALTER TABLE [dbo].[DetalleDeCompra] CHECK CONSTRAINT [FK_DetalleDeCompra_Factura]
GO
ALTER TABLE [dbo].[DetalleDeCompra]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeCompra_OrdenDeCompra] FOREIGN KEY([idOrden])
REFERENCES [dbo].[OrdenDeCompra] ([Id])
GO
ALTER TABLE [dbo].[DetalleDeCompra] CHECK CONSTRAINT [FK_DetalleDeCompra_OrdenDeCompra]
GO
ALTER TABLE [dbo].[DetalleDeCompra]  WITH CHECK ADD  CONSTRAINT [FK_DetalleDeCompra_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[DetalleDeCompra] CHECK CONSTRAINT [FK_DetalleDeCompra_Producto]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Boleta] FOREIGN KEY([id_Boleta])
REFERENCES [dbo].[Boleta] ([Id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Boleta]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_MedioPago] FOREIGN KEY([id_MedioPago])
REFERENCES [dbo].[MedioPago] ([Id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_MedioPago]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_OrdenCliente] FOREIGN KEY([Id_Orden])
REFERENCES [dbo].[OrdenCliente] ([Id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_OrdenCliente]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Cargo_Empleado] FOREIGN KEY([id_Cargo])
REFERENCES [dbo].[CargoEmpleado] ([id])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Cargo_Empleado]
GO
ALTER TABLE [dbo].[OrdenCliente]  WITH CHECK ADD  CONSTRAINT [FK_OrdenCliente_Cliente] FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[OrdenCliente] CHECK CONSTRAINT [FK_OrdenCliente_Cliente]
GO
ALTER TABLE [dbo].[OrdenCliente]  WITH CHECK ADD  CONSTRAINT [FK_OrdenCliente_Empleado] FOREIGN KEY([id_empelado])
REFERENCES [dbo].[Empleado] ([id])
GO
ALTER TABLE [dbo].[OrdenCliente] CHECK CONSTRAINT [FK_OrdenCliente_Empleado]
GO
ALTER TABLE [dbo].[OrdenCliente]  WITH CHECK ADD  CONSTRAINT [FK_OrdenCliente_Menu] FOREIGN KEY([id_Menu])
REFERENCES [dbo].[Menu] ([Id])
GO
ALTER TABLE [dbo].[OrdenCliente] CHECK CONSTRAINT [FK_OrdenCliente_Menu]
GO
ALTER TABLE [dbo].[OrdenCliente]  WITH CHECK ADD  CONSTRAINT [FK_OrdenCliente_Mesa] FOREIGN KEY([id_Mesa])
REFERENCES [dbo].[Mesa] ([Id])
GO
ALTER TABLE [dbo].[OrdenCliente] CHECK CONSTRAINT [FK_OrdenCliente_Mesa]
GO
ALTER TABLE [dbo].[OrdenDeCompra]  WITH CHECK ADD  CONSTRAINT [FK_OrdenDeCompra_Empleado] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleado] ([id])
GO
ALTER TABLE [dbo].[OrdenDeCompra] CHECK CONSTRAINT [FK_OrdenDeCompra_Empleado]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([id_Categoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([Id_Provedor])
REFERENCES [dbo].[Proveedor] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO

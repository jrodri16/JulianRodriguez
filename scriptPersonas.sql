USE [master]
GO
/****** Object:  Database [CrudBD]    Script Date: 17/04/2020 5:34:01 p. m. ******/
CREATE DATABASE [CrudBD] 
USE [CrudBD]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 17/04/2020 5:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[NumDocumento] [varchar](20) NOT NULL,
	[NomPersona] [varchar](200) NOT NULL,
	[DireccionPersona] [varchar](200) NOT NULL,
	[EmailPersona] [varchar](100) NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumento]    Script Date: 17/04/2020 5:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumento](
	[IdTipoDocumento] [int] NOT NULL,
	[NomTipoDocumento] [varchar](50) NOT NULL,
	[SiglaTipoDocumento] [varchar](3) NOT NULL,
 CONSTRAINT [PK_TiposDocumento] PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_TiposDocumento] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TiposDocumento] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_TiposDocumento]
GO
USE [master]
GO
ALTER DATABASE [CrudBD] SET  READ_WRITE 
GO

﻿USE [master]
GO
/****** Object:  Database [CrystalReportsDb]    Script Date: 08.03.2017 17:14:00 ******/
CREATE DATABASE [CrystalReportsDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrystalReportsDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\CrystalReportsDb.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CrystalReportsDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\CrystalReportsDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CrystalReportsDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrystalReportsDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrystalReportsDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrystalReportsDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrystalReportsDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CrystalReportsDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrystalReportsDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CrystalReportsDb] SET  MULTI_USER 
GO
ALTER DATABASE [CrystalReportsDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrystalReportsDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrystalReportsDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrystalReportsDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CrystalReportsDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CrystalReportsDb]
GO

GO
/****** Object:  Table [dbo].[Artykuly]    Script Date: 08.03.2017 17:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artykuly](
	[ArtykulId] [int] IDENTITY(1,1) NOT NULL,
	[Artykul] [nvarchar](50) NULL,
	[Paragraf] [nvarchar](50) NULL,
	[Punkt] [nvarchar](50) NULL,
	[PodstawaPrawna] [nvarchar](50) NULL,
	[OrzeczenieId] [int] NULL,
 CONSTRAINT [PK_Artykuly] PRIMARY KEY CLUSTERED 
(
	[ArtykulId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jednostki]    Script Date: 08.03.2017 17:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jednostki](
	[JednostkaId] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](50) NULL,
	[Rodzaj] [char](2) NULL,
 CONSTRAINT [PK_Jednostki] PRIMARY KEY CLUSTERED 
(
	[JednostkaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganyDysponujace]    Script Date: 08.03.2017 17:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganyDysponujace](
	[OrganDysponujacyId] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](50) NULL,
	[OrzeczenieId] [int] NULL,
	[Symbol] [nchar](10) NULL,
 CONSTRAINT [PK_OrganDysponujace] PRIMARY KEY CLUSTERED 
(
	[OrganDysponujacyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orzeczenia]    Script Date: 08.03.2017 17:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orzeczenia](
	[OrzeczenieId] [int] IDENTITY(1,1) NOT NULL,
	[RodzajKary] [char](4) NULL,
	[Status] [smallint] NULL,
	[WymiarKary] [smallint] NULL,
	[DataOd] [datetime] NULL,
	[DataDo] [datetime] NULL,
	[JednostkaId] [int] NULL,
	[OsobaId] [int] NULL,
 CONSTRAINT [PK_Orzeczenia] PRIMARY KEY CLUSTERED 
(
	[OrzeczenieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Osoby]    Script Date: 08.03.2017 17:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Osoby](
	[OsobaId] [int] IDENTITY(1,1) NOT NULL,
	[ImieNazwisko] [nvarchar](50) NOT NULL,
	[Wiek] [smallint] NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[OsobaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RodzajeKar]    Script Date: 08.03.2017 17:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RodzajeKar](
	[RodzajKaryId] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](50) NULL,
 CONSTRAINT [PK_RodzajeKar] PRIMARY KEY CLUSTERED 
(
	[RodzajKaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Artykuly]  WITH CHECK ADD  CONSTRAINT [FK_Artykuly_Orzeczenia] FOREIGN KEY([OrzeczenieId])
REFERENCES [dbo].[Orzeczenia] ([OrzeczenieId])
GO
ALTER TABLE [dbo].[Artykuly] CHECK CONSTRAINT [FK_Artykuly_Orzeczenia]
GO
ALTER TABLE [dbo].[OrganyDysponujace]  WITH CHECK ADD  CONSTRAINT [FK_OrganyDysponujace_Orzeczenia] FOREIGN KEY([OrzeczenieId])
REFERENCES [dbo].[Orzeczenia] ([OrzeczenieId])
GO
ALTER TABLE [dbo].[OrganyDysponujace] CHECK CONSTRAINT [FK_OrganyDysponujace_Orzeczenia]
GO
ALTER TABLE [dbo].[Orzeczenia]  WITH CHECK ADD  CONSTRAINT [FK_Orzeczenia_Jednostki] FOREIGN KEY([JednostkaId])
REFERENCES [dbo].[Jednostki] ([JednostkaId])
GO
ALTER TABLE [dbo].[Orzeczenia] CHECK CONSTRAINT [FK_Orzeczenia_Jednostki]
GO
ALTER TABLE [dbo].[Orzeczenia]  WITH CHECK ADD  CONSTRAINT [FK_Orzeczenia_Orzeczenia] FOREIGN KEY([OrzeczenieId])
REFERENCES [dbo].[Orzeczenia] ([OrzeczenieId])
GO
ALTER TABLE [dbo].[Orzeczenia] CHECK CONSTRAINT [FK_Orzeczenia_Orzeczenia]
GO
ALTER TABLE [dbo].[Orzeczenia]  WITH CHECK ADD  CONSTRAINT [FK_Orzeczenia_Osoby] FOREIGN KEY([OsobaId])
REFERENCES [dbo].[Osoby] ([OsobaId])
GO
ALTER TABLE [dbo].[Orzeczenia] CHECK CONSTRAINT [FK_Orzeczenia_Osoby]
GO
USE [master]
GO
ALTER DATABASE [CrystalReportsDb] SET  READ_WRITE 
GO

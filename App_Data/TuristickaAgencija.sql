USE [master]
GO
/****** Object:  Database [TuristickaAgencija]    Script Date: 10/20/2022 11:37:38 AM ******/
CREATE DATABASE [TuristickaAgencija]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TuristickaAgencija', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TuristickaAgencija.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TuristickaAgencija_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TuristickaAgencija_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TuristickaAgencija] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TuristickaAgencija].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TuristickaAgencija] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET ARITHABORT OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TuristickaAgencija] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TuristickaAgencija] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TuristickaAgencija] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TuristickaAgencija] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TuristickaAgencija] SET  MULTI_USER 
GO
ALTER DATABASE [TuristickaAgencija] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TuristickaAgencija] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TuristickaAgencija] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TuristickaAgencija] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TuristickaAgencija] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TuristickaAgencija] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TuristickaAgencija] SET QUERY_STORE = OFF
GO
USE [TuristickaAgencija]
GO
/****** Object:  Table [dbo].[Mesto]    Script Date: 10/20/2022 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesto](
	[IdMesto] [int] IDENTITY(1,1) NOT NULL,
	[Drzava] [varchar](50) NOT NULL,
	[Grad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Mesto] PRIMARY KEY CLUSTERED 
(
	[IdMesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Putnik]    Script Date: 10/20/2022 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Putnik](
	[JMBG] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [varchar](50) NOT NULL,
	[Prezime] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Putnik] PRIMARY KEY CLUSTERED 
(
	[JMBG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Putuje]    Script Date: 10/20/2022 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Putuje](
	[JMBG] [int] NOT NULL,
	[IdMesto] [int] NOT NULL,
	[DatumDolaska] [date] NOT NULL,
	[DatumOdlaska] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mesto] ON 

INSERT [dbo].[Mesto] ([IdMesto], [Drzava], [Grad]) VALUES (1, N'Srbija', N'Novi Sad')
INSERT [dbo].[Mesto] ([IdMesto], [Drzava], [Grad]) VALUES (2, N'Bosna i Hercegovina', N'Trebinje')
INSERT [dbo].[Mesto] ([IdMesto], [Drzava], [Grad]) VALUES (3, N'Crna Gora', N'Herceg Novi')
SET IDENTITY_INSERT [dbo].[Mesto] OFF
GO
SET IDENTITY_INSERT [dbo].[Putnik] ON 

INSERT [dbo].[Putnik] ([JMBG], [Ime], [Prezime]) VALUES (1, N'Sofija', N'Zoric')
INSERT [dbo].[Putnik] ([JMBG], [Ime], [Prezime]) VALUES (2, N'Boris', N'Stepanovic')
INSERT [dbo].[Putnik] ([JMBG], [Ime], [Prezime]) VALUES (3, N'Danijela', N'Simic')
SET IDENTITY_INSERT [dbo].[Putnik] OFF
GO
INSERT [dbo].[Putuje] ([JMBG], [IdMesto], [DatumDolaska], [DatumOdlaska]) VALUES (1, 1, CAST(N'2022-12-02' AS Date), CAST(N'2022-03-15' AS Date))
INSERT [dbo].[Putuje] ([JMBG], [IdMesto], [DatumDolaska], [DatumOdlaska]) VALUES (2, 2, CAST(N'2022-04-18' AS Date), CAST(N'2022-04-21' AS Date))
INSERT [dbo].[Putuje] ([JMBG], [IdMesto], [DatumDolaska], [DatumOdlaska]) VALUES (3, 3, CAST(N'2012-01-04' AS Date), CAST(N'2012-03-04' AS Date))
GO
ALTER TABLE [dbo].[Putuje]  WITH CHECK ADD  CONSTRAINT [FK_Putuje_Mesto] FOREIGN KEY([IdMesto])
REFERENCES [dbo].[Mesto] ([IdMesto])
GO
ALTER TABLE [dbo].[Putuje] CHECK CONSTRAINT [FK_Putuje_Mesto]
GO
ALTER TABLE [dbo].[Putuje]  WITH CHECK ADD  CONSTRAINT [FK_Putuje_Putnik] FOREIGN KEY([JMBG])
REFERENCES [dbo].[Putnik] ([JMBG])
GO
ALTER TABLE [dbo].[Putuje] CHECK CONSTRAINT [FK_Putuje_Putnik]
GO
USE [master]
GO
ALTER DATABASE [TuristickaAgencija] SET  READ_WRITE 
GO

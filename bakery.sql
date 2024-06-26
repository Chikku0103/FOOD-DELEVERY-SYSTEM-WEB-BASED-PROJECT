USE [master]
GO
/****** Object:  Database [bakery]    Script Date: 05/03/2017 12:50:38 ******/
CREATE DATABASE [bakery] ON  PRIMARY 
( NAME = N'bakery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\bakery.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bakery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\bakery_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bakery] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bakery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bakery] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [bakery] SET ANSI_NULLS OFF
GO
ALTER DATABASE [bakery] SET ANSI_PADDING OFF
GO
ALTER DATABASE [bakery] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [bakery] SET ARITHABORT OFF
GO
ALTER DATABASE [bakery] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [bakery] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [bakery] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [bakery] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [bakery] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [bakery] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [bakery] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [bakery] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [bakery] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [bakery] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [bakery] SET  DISABLE_BROKER
GO
ALTER DATABASE [bakery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [bakery] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [bakery] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [bakery] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [bakery] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [bakery] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [bakery] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [bakery] SET  READ_WRITE
GO
ALTER DATABASE [bakery] SET RECOVERY SIMPLE
GO
ALTER DATABASE [bakery] SET  MULTI_USER
GO
ALTER DATABASE [bakery] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [bakery] SET DB_CHAINING OFF
GO
USE [bakery]
GO
/****** Object:  Table [dbo].[response]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[response](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phno] [varchar](10) NULL,
	[suggestioin] [varchar](max) NULL,
	[response] [varchar](max) NULL,
 CONSTRAINT [PK_response] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[register]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[f_name] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phno] [varchar](10) NULL,
	[preaddr] [varchar](max) NULL,
	[peraddr] [varchar](max) NULL,
	[password] [varchar](50) NULL,
	[conpwd] [varchar](50) NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[item]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [varchar](50) NULL,
	[descrip] [varchar](max) NULL,
	[price] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[image] [varchar](max) NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phno] [varchar](10) NULL,
	[suggest] [varchar](max) NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[book]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemname] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[tax] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phno] [varchar](50) NULL,
	[address] [varchar](max) NULL,
 CONSTRAINT [PK_book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminlogin]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminlogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_adminlogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[addcategory]    Script Date: 05/03/2017 12:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addcategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [varchar](50) NULL,
	[descrip] [varchar](max) NULL,
 CONSTRAINT [PK_addcategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

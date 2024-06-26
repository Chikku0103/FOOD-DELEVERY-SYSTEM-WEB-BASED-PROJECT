USE [tour]
GO
/****** Object:  Table [dbo].[userprofile]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userprofile](
	[name] [varchar](50) NULL,
	[father] [varchar](50) NULL,
	[mother] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[occupation] [varchar](50) NULL,
	[marriage] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[addr] [varchar](50) NULL,
	[pin] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table](
	[name] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[dob] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[searchflight]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[searchflight](
	[vehicleid] [varchar](50) NULL,
	[vehiclename] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[routstart] [varchar](50) NULL,
	[routend] [varchar](50) NULL,
	[departuretime] [varchar](50) NULL,
	[arrivaltime] [varchar](50) NULL,
	[price] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[searchcar]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[searchcar](
	[vehicleid] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[routstart] [varchar](50) NULL,
	[routend] [varchar](50) NULL,
	[departuretime] [varchar](50) NULL,
	[arrivaltime] [varchar](50) NULL,
	[price] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[searchbus]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[searchbus](
	[vehicleid] [varchar](50) NULL,
	[vehiclename] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[routstart] [varchar](50) NULL,
	[routend] [varchar](50) NULL,
	[departuretime] [varchar](50) NULL,
	[arrivaltime] [varchar](50) NULL,
	[price] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[register]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[register](
	[userid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[confpassword] [varchar](50) NOT NULL,
	[mailid] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[popdrp]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[popdrp](
	[emp_id] [varchar](50) NULL,
	[emp_name] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[log]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[log](
	[userid] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[mailid] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[flightbook]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[flightbook](
	[vehicleid] [varchar](50) NULL,
	[vehiclename] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[routstart] [varchar](50) NULL,
	[routend] [varchar](50) NULL,
	[departuretime] [varchar](50) NULL,
	[arrivaltime] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[id] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[dateofbook] [varchar](50) NULL,
	[adult] [varchar](50) NULL,
	[children] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[comment] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[name] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[message] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[carbook]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[carbook](
	[vehicleid] [varchar](50) NULL,
	[vehiclename] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[routstart] [varchar](50) NULL,
	[routend] [varchar](50) NULL,
	[departuretime] [varchar](50) NULL,
	[arrivaltime] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[id] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[dateofbook] [varchar](50) NULL,
	[adult] [varchar](50) NULL,
	[children] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[comment] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[busbook]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[busbook](
	[vehicleid] [varchar](50) NULL,
	[vehiclename] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[routstart] [varchar](50) NULL,
	[routend] [varchar](50) NULL,
	[departuretime] [varchar](50) NULL,
	[arrivaltime] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[id] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[dateofbook] [varchar](50) NULL,
	[adult] [varchar](50) NULL,
	[children] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[comment] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminprofile]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminprofile](
	[name] [varchar](50) NULL,
	[father] [varchar](50) NULL,
	[mother] [varchar](50) NULL,
	[D.O.B] [varchar](50) NULL,
	[Occupation] [varchar](50) NULL,
	[marriage] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email id] [varchar](50) NULL,
	[addr] [varchar](50) NULL,
	[pin] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminlog]    Script Date: 03/26/2012 18:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminlog](
	[userid] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

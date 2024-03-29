USE [work]
GO
/****** Object:  Table [dbo].[czy]    Script Date: 2018/12/22 17:17:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[czy](
	[cno] [char](10) NOT NULL,
	[name] [char](10) NOT NULL,
	[sex] [char](10) NOT NULL,
	[age] [int] NOT NULL,
	[zh] [int] NOT NULL,
	[mm] [int] NOT NULL,
	[iswork] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gly]    Script Date: 2018/12/22 17:17:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gly](
	[gno] [char](10) NOT NULL,
	[name] [char](10) NOT NULL,
	[sex] [char](10) NOT NULL,
	[age] [int] NOT NULL,
	[zh] [int] NOT NULL,
	[mm] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hb]    Script Date: 2018/12/22 17:17:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hb](
	[hno] [char](10) NOT NULL,
	[jg] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jh]    Script Date: 2018/12/22 17:17:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jh](
	[jno] [char](10) NOT NULL,
	[jnr] [char](50) NOT NULL,
	[ks] [date] NOT NULL,
	[js] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[jno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lb]    Script Date: 2018/12/22 17:17:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lb](
	[lno] [char](10) NOT NULL,
	[name] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sb]    Script Date: 2018/12/22 17:17:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sb](
	[sno] [char](10) NOT NULL,
	[name] [char](10) NOT NULL,
	[cc] [char](10) NOT NULL,
	[ys] [char](10) NOT NULL,
	[sl] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[czy] ([cno], [name], [sex], [age], [zh], [mm], [iswork]) VALUES (N'201       ', N'小明      ', N'男        ', 25, 11, 123, N'是        ')
INSERT [dbo].[czy] ([cno], [name], [sex], [age], [zh], [mm], [iswork]) VALUES (N'202       ', N'张红      ', N'女        ', 26, 22, 123, N'否        ')
INSERT [dbo].[gly] ([gno], [name], [sex], [age], [zh], [mm]) VALUES (N'101       ', N'hhh       ', N'man       ', 18, 1, 123)
INSERT [dbo].[gly] ([gno], [name], [sex], [age], [zh], [mm]) VALUES (N'102       ', N'xxx       ', N'woman     ', 30, 2, 123)
INSERT [dbo].[hb] ([hno], [jg]) VALUES (N'h101      ', N'成功                                              ')
INSERT [dbo].[hb] ([hno], [jg]) VALUES (N'j102      ', N'失败                                              ')
INSERT [dbo].[jh] ([jno], [jnr], [ks], [js]) VALUES (N'j101      ', N'保养设备1                                         ', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-21' AS Date))
INSERT [dbo].[jh] ([jno], [jnr], [ks], [js]) VALUES (N'j104      ', N'保养设备2                                         ', CAST(N'2018-12-08' AS Date), CAST(N'2018-12-20' AS Date))
INSERT [dbo].[lb] ([lno], [name]) VALUES (N'l1001     ', N'1号设备   ')
INSERT [dbo].[sb] ([sno], [name], [cc], [ys], [sl]) VALUES (N'sb1       ', N'1号设备   ', N'50*50     ', N'红        ', 20)

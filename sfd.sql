USE [Equipment]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12.03.2024 15:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
	[Fio] [nvarchar](150) NOT NULL,
	[PhoneNumber] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 12.03.2024 15:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](120) NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[OfficeNumber] [int] NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12.03.2024 15:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 12.03.2024 15:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEmployee] [int] NOT NULL,
	[LoginDatetime] [datetime] NOT NULL,
	[Status] [nchar](20) NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Login], [Password], [IdRole], [Fio], [PhoneNumber]) VALUES (1, N'ad                                                ', N'1', 1, N'ads', N'765')
INSERT [dbo].[Employee] ([Id], [Login], [Password], [IdRole], [Fio], [PhoneNumber]) VALUES (2, N'em                                                ', N'2', 2, N'ffds', N'311')
INSERT [dbo].[Employee] ([Id], [Login], [Password], [IdRole], [Fio], [PhoneNumber]) VALUES (3, N'lead                                              ', N'3', 3, N'fsdfs', N'151')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin     ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Employee  ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Leader    ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (1, 1, CAST(N'2024-03-12T13:02:25.447' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (2, 1, CAST(N'2024-03-12T13:59:51.653' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (3, 1, CAST(N'2024-03-12T14:52:31.640' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (4, 1, CAST(N'2024-03-12T15:05:00.773' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (5, 1, CAST(N'2024-03-12T15:16:10.327' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (6, 1, CAST(N'2024-03-12T15:19:35.863' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (7, 1, CAST(N'2024-03-12T15:20:24.460' AS DateTime), N'Неуспешно           ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (8, 1, CAST(N'2024-03-12T15:21:42.590' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (9, 1, CAST(N'2024-03-12T15:22:02.663' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (10, 1, CAST(N'2024-03-12T15:22:26.677' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (11, 1, CAST(N'2024-03-12T15:23:01.630' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (12, 1, CAST(N'2024-03-12T15:23:26.377' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (13, 1, CAST(N'2024-03-12T15:23:42.717' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (14, 1, CAST(N'2024-03-12T15:24:06.500' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (15, 1, CAST(N'2024-03-12T15:24:54.093' AS DateTime), N'Неуспешно           ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (16, 1, CAST(N'2024-03-12T15:25:10.590' AS DateTime), N'Успешно             ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (17, 1, CAST(N'2024-03-12T15:26:35.517' AS DateTime), N'Неуспешно           ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (18, 1, CAST(N'2024-03-12T15:27:56.167' AS DateTime), N'Неуспешно           ')
INSERT [dbo].[UserLogin] ([Id], [IdEmployee], [LoginDatetime], [Status]) VALUES (19, 1, CAST(N'2024-03-12T15:30:58.790' AS DateTime), N'Успешно             ')
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_Employee] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_UserLogin_Employee]
GO

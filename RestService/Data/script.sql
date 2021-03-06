USE [FreeDesk]
GO
/****** Object:  Table [dbo].[Badge]    Script Date: 23/03/2016 17:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](100) NULL,
	[idUser] [int] NULL,
 CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Desk]    Script Date: 23/03/2016 17:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Desk](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idBadge] [int] NULL,
	[code] [nchar](50) NULL,
	[comments] [nchar](255) NULL,
	[localization] [nchar](255) NULL,
 CONSTRAINT [PK_Desk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rating]    Script Date: 23/03/2016 17:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDesk] [int] NULL,
	[Sound] [int] NULL,
	[Temperature] [float] NULL,
	[Humidity] [float] NULL,
	[DateRate] [date] NULL,
	[idBadge] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Session]    Script Date: 23/03/2016 17:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDesk] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 23/03/2016 17:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[guest] [bit] NULL,
	[login] [nchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Badge] ON 

INSERT [dbo].[Badge] ([id], [code], [idUser]) VALUES (1, N'1234', 1)
INSERT [dbo].[Badge] ([id], [code], [idUser]) VALUES (2, N'5678', 2)
INSERT [dbo].[Badge] ([id], [code], [idUser]) VALUES (3, N'9999', 3)
INSERT [dbo].[Badge] ([id], [code], [idUser]) VALUES (4, N'6666', 4)
INSERT [dbo].[Badge] ([id], [code], [idUser]) VALUES (5, N'7777', 5)
INSERT [dbo].[Badge] ([id], [code], [idUser]) VALUES (6, N'8888', 6)
SET IDENTITY_INSERT [dbo].[Badge] OFF
SET IDENTITY_INSERT [dbo].[Desk] ON 

INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (1, NULL, N'11A11                                             ', NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (2, 1234, N'12B32                                             ', NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (3, 2, N'13B45                                             ', NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (4, 4, N'54C12                                             ', NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (5, 1, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (6, 6, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (7, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (8, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (9, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (10, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (11, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (12, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
INSERT [dbo].[Desk] ([id], [idBadge], [code], [comments], [localization]) VALUES (13, NULL, NULL, NULL, N'Le 28 / RDC / OpenSpace                                                                                                                                                                                                                                        ')
SET IDENTITY_INSERT [dbo].[Desk] OFF
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (1, 1, 135, 23, 21, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (2, 1, 130, 22, 23, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (3, 1, 171, 22, 23, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (4, 1, 171, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (5, 1, 135, 22, 23, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (6, 1, 131, 22.059999465942383, 23, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (7, 1, 150, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (8, 1, 134, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (9, 1, 129, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (10, 1, 134, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (11, 1, 129, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (12, 1, 133, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (13, 1, 135, 23, 22, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (14, 1, 135, 23, 23, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (15, 1, 155, 23, 23, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (16, 1, 131, 23, 24, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (17, 2, 123, 23, 25, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (18, 2, 123, 22, 25, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (19, 2, 111, 23, 26, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (20, 2, 123, 23, 24, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (21, 2, 130, 24, 26, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (22, 2, 134, 25, 24, NULL, NULL)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (23, 1, 34, 23, 56, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (24, 2, 79, 24.899999618530273, 51.200000762939453, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (25, 3, 86, 25.200000762939453, 53.5, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (26, 4, 89, 25.700000762939453, 59.5, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (27, 5, 82, 28.799999237060547, 60, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (28, 1, 65, 21.299999237060547, 39.200000762939453, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (29, 2, 62, 21.100000381469727, 40.099998474121094, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (30, 3, 90, 19.700000762939453, 60.299999237060547, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (31, 4, 89, 25.100000381469727, 50.700000762939453, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (32, 5, 89, 24, 54.299999237060547, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (33, 1, 70, 20.100000381469727, 58.099998474121094, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (34, 2, 74, 26.399999618530273, 43, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (35, 3, 81, 26.299999237060547, 58.099998474121094, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (36, 4, 65, 22.5, 40.299999237060547, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (37, 5, 78, 26.299999237060547, 36.400001525878906, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (38, 1, 85, 22.600000381469727, 35.799999237060547, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (39, 2, 60, 19, 39.400001525878906, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (40, 3, 77, 23.100000381469727, 33.5, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (41, 4, 61, 23.799999237060547, 35.700000762939453, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (42, 5, 78, 28.299999237060547, 41.099998474121094, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (43, 1, 85, 26.299999237060547, 57.900001525878906, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (44, 2, 76, 26.600000381469727, 57.599998474121094, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (45, 3, 89, 27.600000381469727, 43.5, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (46, 4, 85, 22.399999618530273, 59, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (47, 5, 60, 23.399999618530273, 54.5, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (48, 1, 67, 21.600000381469727, 31.299999237060547, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (49, 2, 65, 20.100000381469727, 43.400001525878906, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (50, 3, 82, 20.299999237060547, 43.400001525878906, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (51, 4, 89, 21.5, 38.200000762939453, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (52, 5, 81, 23.299999237060547, 55.299999237060547, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (53, 1, 75, 21.100000381469727, 34, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (54, 2, 88, 26.700000762939453, 31.399999618530273, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (55, 3, 65, 29.700000762939453, 47.799999237060547, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (56, 4, 86, 25.600000381469727, 59, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (57, 5, 81, 21.799999237060547, 52.299999237060547, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (58, 1, 67, 24.399999618530273, 58.299999237060547, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (59, 2, 79, 23.200000762939453, 35, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (60, 3, 88, 23.5, 38.5, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (61, 4, 67, 29.700000762939453, 58.900001525878906, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (62, 5, 60, 29.299999237060547, 36.099998474121094, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (63, 1, 75, 29.299999237060547, 42.099998474121094, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (64, 2, 61, 27, 36.900001525878906, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (65, 3, 84, 27.899999618530273, 57.200000762939453, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (66, 4, 79, 25.899999618530273, 47.799999237060547, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (67, 5, 85, 21.700000762939453, 46.099998474121094, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (68, 1, 66, 28.299999237060547, 56.799999237060547, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (69, 2, 80, 22.600000381469727, 52.400001525878906, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (70, 3, 81, 29.399999618530273, 41.400001525878906, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (71, 4, 78, 25.200000762939453, 49.400001525878906, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (72, 5, 85, 26, 57.400001525878906, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (73, 1, 63, 20.399999618530273, 48.299999237060547, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (74, 2, 68, 28.700000762939453, 53, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (75, 3, 80, 24.5, 51.099998474121094, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (76, 4, 75, 28.799999237060547, 44.400001525878906, CAST(N'2016-03-23' AS Date), 5)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (77, 5, 81, 19.299999237060547, 43.599998474121094, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (78, 1, 85, 20.100000381469727, 39.700000762939453, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (79, 2, 79, 21.200000762939453, 31.799999237060547, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (80, 3, 60, 21.799999237060547, 42.900001525878906, CAST(N'2016-03-23' AS Date), 3)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (81, 4, 70, 19.399999618530273, 52.200000762939453, CAST(N'2016-03-23' AS Date), 4)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (82, 1, 79, 29.899999618530273, 50.299999237060547, CAST(N'2016-03-23' AS Date), 0)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (83, 2, 62, 19.899999618530273, 49.700000762939453, CAST(N'2016-03-23' AS Date), 1)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (84, 3, 65, 28.399999618530273, 34.200000762939453, CAST(N'2016-03-23' AS Date), 2)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (85, 2, 73, 22, 47.900001525878906, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (86, 3, 73, 27.600000381469727, 57, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (87, 4, 66, 23.600000381469727, 50.200000762939453, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (88, 5, 80, 21.799999237060547, 44.299999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (89, 1, 79, 29, 42.099998474121094, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (90, 2, 62, 19.399999618530273, 36.799999237060547, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (91, 3, 65, 19.799999237060547, 45.599998474121094, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (92, 4, 65, 21.399999618530273, 46.700000762939453, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (93, 5, 83, 20.899999618530273, 46.599998474121094, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (94, 1, 67, 29, 35.299999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (95, 2, 77, 24.200000762939453, 57.5, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (96, 3, 82, 23.5, 36, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (97, 4, 73, 23.299999237060547, 36.400001525878906, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (98, 5, 61, 23.200000762939453, 37, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (99, 1, 83, 27, 45.599998474121094, CAST(N'2016-03-23' AS Date), 7777)
GO
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (100, 2, 73, 28.5, 33.299999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (101, 3, 85, 19.299999237060547, 34.799999237060547, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (102, 4, 89, 21.200000762939453, 34.200000762939453, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (103, 5, 66, 27.700000762939453, 42.700000762939453, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (104, 1, 67, 21, 50.099998474121094, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (105, 2, 73, 21.200000762939453, 37, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (106, 3, 89, 29.600000381469727, 39.299999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (107, 4, 72, 21.700000762939453, 55.099998474121094, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (108, 5, 64, 24.5, 38.400001525878906, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (109, 1, 66, 22.399999618530273, 58.799999237060547, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (110, 2, 72, 26.5, 45.599998474121094, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (111, 3, 83, 29.5, 39.799999237060547, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (112, 4, 83, 19.5, 53.900001525878906, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (113, 5, 66, 27.5, 55.400001525878906, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (114, 1, 89, 23.600000381469727, 35.700000762939453, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (115, 2, 90, 23.200000762939453, 58, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (116, 3, 62, 28.200000762939453, 51.299999237060547, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (117, 4, 75, 21, 33.200000762939453, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (118, 5, 75, 26.799999237060547, 60.200000762939453, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (119, 1, 70, 23, 55.5, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (120, 2, 61, 25.899999618530273, 42, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (121, 3, 81, 24.899999618530273, 44.400001525878906, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (122, 4, 72, 28.399999618530273, 40.099998474121094, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (123, 5, 81, 22.200000762939453, 56.200000762939453, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (124, 1, 73, 21.200000762939453, 35.099998474121094, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (125, 2, 60, 25.399999618530273, 35, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (126, 3, 79, 28.5, 55.099998474121094, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (127, 4, 78, 24.899999618530273, 46.700000762939453, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (128, 5, 87, 21.299999237060547, 31.899999618530273, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (129, 1, 64, 28.200000762939453, 42.299999237060547, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (130, 2, 77, 20.399999618530273, 44.799999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (131, 3, 86, 28.200000762939453, 40.700000762939453, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (132, 4, 82, 20.899999618530273, 60.099998474121094, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (133, 5, 85, 20.100000381469727, 47.5, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (134, 1, 90, 26.5, 40.599998474121094, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (135, 2, 72, 24.600000381469727, 34.5, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (136, 3, 74, 20.5, 56.200000762939453, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (137, 4, 75, 24.100000381469727, 33.700000762939453, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (138, 5, 83, 24.299999237060547, 45.599998474121094, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (139, 1, 62, 23.5, 51.5, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (140, 2, 87, 26.100000381469727, 57.200000762939453, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (141, 3, 62, 29.700000762939453, 58.5, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (142, 4, 60, 24, 58.5, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (143, 5, 85, 26.200000762939453, 50.299999237060547, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (144, 1, 78, 25.399999618530273, 34.799999237060547, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (145, 2, 76, 27.899999618530273, 35, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (146, 3, 80, 26, 33.5, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (147, 4, 60, 27.299999237060547, 52.400001525878906, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (148, 5, 78, 26.700000762939453, 44.299999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (149, 1, 87, 27.600000381469727, 41.5, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (150, 2, 71, 29, 31.100000381469727, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (151, 3, 72, 24.399999618530273, 31.700000762939453, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (152, 4, 84, 20.299999237060547, 58.200000762939453, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (153, 5, 65, 29.600000381469727, 53.299999237060547, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (154, 1, 60, 25, 36.5, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (155, 2, 78, 26.299999237060547, 39.099998474121094, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (156, 3, 63, 27.100000381469727, 59, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (157, 4, 86, 19.600000381469727, 46.099998474121094, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (158, 5, 80, 29.799999237060547, 54.5, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (159, 1, 86, 27.299999237060547, 39.200000762939453, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (160, 2, 67, 21.899999618530273, 31.799999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (161, 3, 78, 27.799999237060547, 38.5, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (162, 4, 78, 20.700000762939453, 32.200000762939453, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (163, 5, 66, 27.200000762939453, 51.200000762939453, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (164, 1, 69, 27, 55.200000762939453, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (165, 2, 90, 21.200000762939453, 56.599998474121094, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (166, 3, 71, 29.299999237060547, 51.5, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (167, 4, 61, 27.100000381469727, 35.599998474121094, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (168, 5, 60, 22.5, 53, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (169, 1, 74, 30, 47.799999237060547, CAST(N'2016-03-23' AS Date), 5678)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (170, 2, 72, 25.100000381469727, 41.599998474121094, CAST(N'2016-03-23' AS Date), 6666)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (171, 3, 79, 21.200000762939453, 50.700000762939453, CAST(N'2016-03-23' AS Date), 7777)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (172, 4, 67, 24.799999237060547, 35.799999237060547, CAST(N'2016-03-23' AS Date), 8888)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (173, 5, 69, 25.700000762939453, 32.900001525878906, CAST(N'2016-03-23' AS Date), 9999)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (174, 1, 70, 25, 47.599998474121094, CAST(N'2016-03-23' AS Date), 1234)
INSERT [dbo].[Rating] ([id], [idDesk], [Sound], [Temperature], [Humidity], [DateRate], [idBadge]) VALUES (175, 2, 62, 26.700000762939453, 40.700000762939453, CAST(N'2016-03-23' AS Date), 5678)
SET IDENTITY_INSERT [dbo].[Rating] OFF
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([id], [idDesk], [idUser], [StartDate], [EndDate]) VALUES (1, 1, 1, CAST(N'2016-03-23' AS Date), CAST(N'2016-03-23' AS Date))
SET IDENTITY_INSERT [dbo].[Session] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [surname], [company], [guest], [login]) VALUES (1, N'Thierry', N'MAUREL', N'Visiativ Software', 0, N'tmaurel                                           ')
INSERT [dbo].[User] ([id], [name], [surname], [company], [guest], [login]) VALUES (2, N'Sylviane', N'MONTAGNE', N'Visiativ Software', 0, N'smontagne                                         ')
INSERT [dbo].[User] ([id], [name], [surname], [company], [guest], [login]) VALUES (3, N'Sébastien', N'MAZOYER', N'Visiativ Software', 0, N'smazoiyer                                         ')
INSERT [dbo].[User] ([id], [name], [surname], [company], [guest], [login]) VALUES (4, N'Mathieu', N'SENTENAC', N'Visiativ Software', 0, N'msentenac                                         ')
INSERT [dbo].[User] ([id], [name], [surname], [company], [guest], [login]) VALUES (5, N'Xavier', N'DESCHARD', N'Visiativ Software', 0, N'xdeschard                                         ')
INSERT [dbo].[User] ([id], [name], [surname], [company], [guest], [login]) VALUES (6, N'Arnaud', N'JEANNE', N'Iporta', 1, N'                                                  ')
SET IDENTITY_INSERT [dbo].[User] OFF

USE [QLHocSinhGiaoVienTHPT]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mark]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mark](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[type_mark_id] [int] NULL,
	[course_id] [int] NULL,
	[mark] [float] NULL,
 CONSTRAINT [PK_mark] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[program]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[program](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[number_student] [int] NULL,
	[start_time] [nvarchar](max) NULL,
	[finish_time] [nvarchar](max) NULL,
	[days] [varchar](255) NULL,
	[created_at] [timestamp] NOT NULL,
 CONSTRAINT [PK_dbo.program] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[gender] [int] NULL,
	[birthday] [date] NULL,
	[address] [text] NULL,
	[created_at] [timestamp] NOT NULL,
	[image] [text] NULL,
 CONSTRAINT [PK_dbo.staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff_program]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff_program](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_staff] [int] NOT NULL,
	[id_program] [int] NOT NULL,
 CONSTRAINT [PK_dbo.staff_program] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[gender] [nvarchar](max) NULL,
	[birthday] [date] NULL,
	[address] [text] NULL,
	[created_at] [timestamp] NOT NULL,
	[image] [text] NULL,
 CONSTRAINT [PK_dbo.student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_program]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_program](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_student] [int] NOT NULL,
	[id_program] [int] NOT NULL,
 CONSTRAINT [PK_dbo.student_program] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_mark]    Script Date: 6/24/2020 3:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_mark](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_type_mark] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[courses] ON 

INSERT [dbo].[courses] ([id], [name]) VALUES (5, N'Math')
INSERT [dbo].[courses] ([id], [name]) VALUES (6, N'Literature')
INSERT [dbo].[courses] ([id], [name]) VALUES (7, N'Science')
INSERT [dbo].[courses] ([id], [name]) VALUES (8, N'Music')
INSERT [dbo].[courses] ([id], [name]) VALUES (9, N'Chemistry')
INSERT [dbo].[courses] ([id], [name]) VALUES (10, N'Physics')
INSERT [dbo].[courses] ([id], [name]) VALUES (11, N'Geography')
INSERT [dbo].[courses] ([id], [name]) VALUES (12, N'IT')
INSERT [dbo].[courses] ([id], [name]) VALUES (13, N'History')
SET IDENTITY_INSERT [dbo].[courses] OFF
SET IDENTITY_INSERT [dbo].[mark] ON 

INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (2, 37, 4, 5, 6)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (3, 37, 5, 5, 7)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (4, 38, 4, 6, 7)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (5, 39, 6, 7, 10)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (6, 40, 6, 9, 6.5)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (7, 40, 6, 7, 5)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (8, 39, 7, 11, 10)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (9, 38, 6, 8, 1)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (10, 41, 8, 13, 7)
INSERT [dbo].[mark] ([id], [student_id], [type_mark_id], [course_id], [mark]) VALUES (11, 37, 8, 13, 10)
SET IDENTITY_INSERT [dbo].[mark] OFF
SET IDENTITY_INSERT [dbo].[program] ON 

INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (14, N'10A1', 50, N'7:00 AM', N'4:30 PM', N'Monday,Tuesday,Wednesday,Thursday,Friday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (15, N'10A2', 55, N'7:00 PM', N'4:30 PM', N'Monday,Tuesday,Wednesday,Thursday,Friday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (16, N'10A3', 45, N'7:00 AM', N'4:30 PM', N'Monday,Tuesday,Wednesday,Thursday,Friday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (17, N'11A1', 50, N'7:00 AM', N'4:30 PM', N'Monday,Tuesday,Wednesday,Thursday,Friday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (18, N'12A1', 45, N'7:00 AM', N'4:30 PM', N'Monday,Tuesday,Wednesday,Thursday,Friday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (19, N'Basketball', 20, N'3:00 PM', N'5:00 PM', N'Monday,Thursday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (20, N'Volleyball', 30, N'4:00 PM', N'6:00 PM', N'Tuesday,Friday')
INSERT [dbo].[program] ([id], [name], [number_student], [start_time], [finish_time], [days]) VALUES (21, N'Music', 20, N'5:00 PM', N'7:00 PM', N'Thursday,Saturday')
SET IDENTITY_INSERT [dbo].[program] OFF
SET IDENTITY_INSERT [dbo].[staff] ON 

INSERT [dbo].[staff] ([id], [name], [gender], [birthday], [address], [image]) VALUES (6, N'Jones Bin', NULL, CAST(N'2020-06-16' AS Date), N'Room 103, K5 Bach Khoa', N'pexels-photo-279719.jpeg')
INSERT [dbo].[staff] ([id], [name], [gender], [birthday], [address], [image]) VALUES (7, N'Michael', NULL, CAST(N'2020-06-22' AS Date), N'Room 103, K5 Bach Khoa', N'hotel-bed-bedroom-room.jpg')
INSERT [dbo].[staff] ([id], [name], [gender], [birthday], [address], [image]) VALUES (8, N'Jacki', NULL, CAST(N'2020-06-16' AS Date), N'Room 103, K5 Bach Khoa', N'pexels-photo-210604.jpeg')
INSERT [dbo].[staff] ([id], [name], [gender], [birthday], [address], [image]) VALUES (9, N'Jen', NULL, CAST(N'2020-06-19' AS Date), N'Room 103, K5 Bach Khoa', N'pexels-photo-237393.jpeg')
INSERT [dbo].[staff] ([id], [name], [gender], [birthday], [address], [image]) VALUES (10, N'Jen', NULL, CAST(N'2020-06-19' AS Date), N'Room 103, K5 Bach Khoa', N'pexels-photo-237393.jpeg')
SET IDENTITY_INSERT [dbo].[staff] OFF
SET IDENTITY_INSERT [dbo].[staff_program] ON 

INSERT [dbo].[staff_program] ([id], [id_staff], [id_program]) VALUES (2005, 6, 16)
INSERT [dbo].[staff_program] ([id], [id_staff], [id_program]) VALUES (2006, 7, 15)
INSERT [dbo].[staff_program] ([id], [id_staff], [id_program]) VALUES (2007, 8, 19)
INSERT [dbo].[staff_program] ([id], [id_staff], [id_program]) VALUES (2008, 10, 16)
INSERT [dbo].[staff_program] ([id], [id_staff], [id_program]) VALUES (2009, 10, 18)
SET IDENTITY_INSERT [dbo].[staff_program] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [name], [gender], [birthday], [address], [image]) VALUES (37, N'Jay Park', N'Male', CAST(N'2020-06-15' AS Date), N'Room 103, K5 Bach Khoa', N'hotel-bed-bedroom-room.jpg')
INSERT [dbo].[student] ([id], [name], [gender], [birthday], [address], [image]) VALUES (38, N'Tom Cruise', N'Male', CAST(N'2020-06-15' AS Date), N'Room 103, K5 Bach Khoa', N'pexels-photo-271619.jpeg')
INSERT [dbo].[student] ([id], [name], [gender], [birthday], [address], [image]) VALUES (39, N'Jennie', N'Female', CAST(N'2020-06-18' AS Date), N'St Park 12', N'pexels-photo-271624.jpeg')
INSERT [dbo].[student] ([id], [name], [gender], [birthday], [address], [image]) VALUES (40, N'Mike', N'Male', CAST(N'2020-06-15' AS Date), N'Room 101, K5 Bach Khoa', N'pexels-photo-276671.jpeg')
INSERT [dbo].[student] ([id], [name], [gender], [birthday], [address], [image]) VALUES (41, N'Felix', N'Male', CAST(N'2020-06-15' AS Date), N'Room 103, St Jones', N'pexels-photo-276671.jpeg')
SET IDENTITY_INSERT [dbo].[student] OFF
SET IDENTITY_INSERT [dbo].[student_program] ON 

INSERT [dbo].[student_program] ([id], [id_student], [id_program]) VALUES (1092, 37, 14)
INSERT [dbo].[student_program] ([id], [id_student], [id_program]) VALUES (1093, 38, 15)
INSERT [dbo].[student_program] ([id], [id_student], [id_program]) VALUES (1094, 39, 17)
INSERT [dbo].[student_program] ([id], [id_student], [id_program]) VALUES (1095, 40, 18)
INSERT [dbo].[student_program] ([id], [id_student], [id_program]) VALUES (1096, 41, 17)
SET IDENTITY_INSERT [dbo].[student_program] OFF
SET IDENTITY_INSERT [dbo].[type_mark] ON 

INSERT [dbo].[type_mark] ([id], [name]) VALUES (4, N'15 minutes')
INSERT [dbo].[type_mark] ([id], [name]) VALUES (5, N'45 minutes')
INSERT [dbo].[type_mark] ([id], [name]) VALUES (6, N'mid season')
INSERT [dbo].[type_mark] ([id], [name]) VALUES (7, N'final')
INSERT [dbo].[type_mark] ([id], [name]) VALUES (8, N'first season')
SET IDENTITY_INSERT [dbo].[type_mark] OFF

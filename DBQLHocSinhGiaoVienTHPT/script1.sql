USE [QLHocSinhGiaoVienTHPT]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 2/8/2020 10:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [int] NOT NULL,
	[TENGV] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](max) NULL,
	[QUEQUAN] [nvarchar](max) NULL,
	[MONDAY] [nvarchar](50) NULL,
	[MALOP] [int] NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 2/8/2020 10:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MAHS] [int] NOT NULL,
	[TENHS] [nvarchar](50) NULL,
	[MALOP] [int] NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[NOISINH] [nvarchar](max) NULL,
	[DIACHI] [nvarchar](max) NULL,
	[DANTOC] [nvarchar](50) NULL,
	[QUEQUAN] [nvarchar](max) NULL,
 CONSTRAINT [PK_HOCSINH] PRIMARY KEY CLUSTERED 
(
	[MAHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 2/8/2020 10:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [int] NOT NULL,
	[TENLOP] [nvarchar](50) NULL,
	[GVCN] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (1, N'Đỗ Việt Anh', N'nam', CAST(N'1992-11-06' AS Date), N'Hà Nội', N'Ninh Bình', N'Toán', 1)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (2, N'Lê Thanh Độ', N'nam', CAST(N'1991-11-12' AS Date), N'Hà Nội', N'Bà Rịa - Vũng Tàu', N'Toán', 3)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (3, N'Bùi Bằng Dương', N'nữ', CAST(N'1989-04-05' AS Date), N'Hà Nội', N'Khánh Hòa', N'LÝ', 2)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (4, N'Nguyễn Việt Long', N'nam', CAST(N'1992-09-08' AS Date), N'Hà Nội', N'Kiên Giang', N'LÝ', 2)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (5, N'Phạm Văn Tùng', N'nữ', CAST(N'1991-11-16' AS Date), N'Hà Nội', N'Sóc Trăng', N'Hóa', 3)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (6, N'Trần Minh Duyệt', N'nam', CAST(N'1992-08-22' AS Date), N'Hà Nội', N'Bắc Giang', N'Hóa', 4)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (7, N'Nguyễn Thị Hồng Ánh', N'nữ', CAST(N'1990-07-26' AS Date), N'Hà Nội', N'Quảng Nam', N'Sinh', 4)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (8, N'Nguyễn Xuân Dương', N'nam', CAST(N'1990-08-03' AS Date), N'Hà Nội', N'Hải Phòng', N'Sinh', 5)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (9, N'Hoàng Gia Lâm', N'nữ', CAST(N'1992-02-29' AS Date), N'Hà Nội', N'Hà Nội', N'Sử', 5)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (10, N'Nguyễn Duy Minh', N'nam', CAST(N'1990-01-01' AS Date), N'Hà Nội', N'Hà Nội', N'Sử', 1)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (11, N'Đỗ Tiến Thành', N'nữ', CAST(N'1992-11-22' AS Date), N'Hà Nội', N'Đà Nẵng', N'Địa', 6)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (12, N'Đỗ Hoàng Trung', N'nam', CAST(N'1991-12-30' AS Date), N'Hà Nội', N'Bắc Giang', N'Địa', 7)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (13, N'Hoàng Hải Thành', N'nam', CAST(N'1992-06-01' AS Date), N'Hà Nội', N'Đà Nẵng', N'Văn', 7)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (14, N'Chu Nhất Long', N'nữ', CAST(N'1992-12-22' AS Date), N'Hà Nội', N'Cần Thơ', N'Văn', 8)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (15, N'Vũ Đình Tuyên', N'nữ', CAST(N'1991-10-29' AS Date), N'Hà Nội', N'Khánh Hòa', N'Anh', 6)
INSERT [dbo].[GIAOVIEN] ([MAGV], [TENGV], [GIOITINH], [NGAYSINH], [DIACHI], [QUEQUAN], [MONDAY], [MALOP]) VALUES (16, N'Nguyễn Tuấn Hưng', N'nam', CAST(N'1991-11-07' AS Date), N'Hà Nội', N'Thái Bình', N'Anh', 8)
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (1, N'Vũ Minh Hiếu', 1, N'nam', CAST(N'1999-11-06' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (2, N'Thạch Thọ Hiếu', 2, N'nữ', CAST(N'1999-11-12' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (3, N'Nguyễn Văn Vũ', 3, N'nam', CAST(N'1999-04-05' AS Date), N'Hải Phòng', N'Hà Nội', N'Kinh', N'Hải Phòng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (4, N'Nguyễn Sơn Nam', 4, N'nam', CAST(N'1999-09-08' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (5, N'Nguyễn Văn Dũng', 5, N'nam', CAST(N'1999-11-16' AS Date), N'Khánh Hòa', N'Hà Nội', N'Tày', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (6, N'Cao Minh Đức', 6, N'nam', CAST(N'1999-08-22' AS Date), N'Quảng Nam', N'Hà Nội', N'Kinh', N'Quảng Nam')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (7, N'Phạm Trung Hiếu', 7, N'nữ', CAST(N'1999-07-26' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (8, N'Nguyễn Tư Tỉnh', 8, N'nam', CAST(N'1999-08-03' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (9, N'Vũ Hoàng Trung', 1, N'nữ', CAST(N'1999-02-28' AS Date), N'Hồ Chí Minh', N'Hà Nội', N'Kinh', N'Hồ Chí Minh')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (10, N'Nguyễn Minh Hiếu', 2, N'nam', CAST(N'1999-01-01' AS Date), N'An Giang', N'Hà Nội', N'Kinh', N'An Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (11, N'Phùng Văn Trường', 3, N'nữ', CAST(N'1999-11-22' AS Date), N'Bà Rịa - Vũng Tàu', N'Hà Nội', N'Kinh', N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (12, N'Bùi Thị Nga', 4, N'nữ', CAST(N'1999-12-30' AS Date), N'Bắc Giang', N'Hà Nội', N'Tày', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (13, N'Đinh Quốc Thắng', 5, N'nam', CAST(N'1999-06-01' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (14, N'Nguyễn Văn Kiên', 6, N'nam', CAST(N'1999-12-22' AS Date), N'Kiên Giang', N'Hà Nội', N'Kinh', N'Kiên Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (15, N'Khổng Anh Dũng', 7, N'nam', CAST(N'1999-10-29' AS Date), N'Sóc Trăng', N'Hà Nội', N'Kinh', N'Sóc Trăng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (16, N'Nguyễn Đình Thịnh', 8, N'nữ', CAST(N'1999-11-07' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (17, N'Lê Đức Hiếu', 1, N'nữ', CAST(N'1999-09-02' AS Date), N'Quảng Trị', N'Hà Nội', N'Tày', N'Quảng Trị')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (18, N'Trương Tuấn Nghĩa', 2, N'nam', CAST(N'1999-07-07' AS Date), N'Quảng Nam', N'Hà Nội', N'Tày', N'Quảng Nam')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (19, N'Đoàn Ngọc Tân', 3, N'nam', CAST(N'1999-04-04' AS Date), N'Hải Phòng', N'Hà Nội', N'Kinh', N'Hải Phòng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (20, N'Trần Thị Thu', 4, N'nữ', CAST(N'1999-11-17' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (21, N'Lê Thị Hương Trang', 5, N'nữ', CAST(N'1999-01-02' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (22, N'Hoàng Công Khánh', 6, N'nam', CAST(N'1999-01-03' AS Date), N'Đà Nẵng', N'Hà Nội', N'Tày', N'Đà Nẵng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (23, N'Trần Thái Bảo', 7, N'nữ', CAST(N'1999-01-04' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (24, N'Nguyễn Sơn Hải', 8, N'nam', CAST(N'1999-01-06' AS Date), N'Đà Nẵng', N'Hà Nội', N'Kinh', N'Đà Nẵng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (25, N'Lê Quang Đức', 2, N'nữ', CAST(N'1999-01-13' AS Date), N'Cần Thơ', N'Hà Nội', N'Kinh', N'Cần Thơ')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (26, N'Trần Hào Phong', 4, N'nam', CAST(N'1999-01-24' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (27, N'Bùi Trung Anh', 3, N'nữ', CAST(N'1999-01-25' AS Date), N'Thái Bình', N'Hà Nội', N'Kinh', N'Thái Bình')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (28, N'Khuất Duy Tiến', 6, N'nam', CAST(N'1999-01-29' AS Date), N'Sóc Trăng', N'Hà Nội', N'Kinh', N'Sóc Trăng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (29, N'Nguyễn Hoàng Anh', 5, N'nữ', CAST(N'1999-02-27' AS Date), N'Khánh Hòa', N'Hà Nội', N'Tày', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (30, N'Phạm Phương Anh', 1, N'nữ', CAST(N'2000-11-26' AS Date), N'Ninh Bình', N'Hà Nội', N'Kinh', N'Ninh Bình')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (31, N'Nguyễn Trung Đức

', 1, N'nam', CAST(N'1999-02-12' AS Date), N'Ninh Bình', N'Hà Nội', N'Kinh', N'Ninh Bình')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (32, N'Nguyễn Văn
 Sáng
', 2, N'nữ', CAST(N'1999-02-01' AS Date), N'Bà Rịa - Vũng Tàu', N'Hà Nội', N'Kinh', N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (33, N'Thiều Văn
 Đảng
', 3, N'nữ', CAST(N'1999-02-06' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (34, N'Ngô Xuân  Mạnh

', 4, N'nam', CAST(N'1999-02-07' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (35, N'Nguyễn Văn  Thành

', 5, N'nam', CAST(N'1999-02-09' AS Date), N'Kiên Giang', N'Hà Nội', N'Kinh', N'Kiên Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (36, N'Nguyễn Văn
 Vũ
', 6, N'nữ', CAST(N'1999-02-10' AS Date), N'Sóc Trăng', N'Hà Nội', N'Kinh', N'Sóc Trăng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (37, N'Nguyễn Thành
 Tâm
', 7, N'nam', CAST(N'1999-02-11' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (38, N'Nguyễn Đức Anh', 8, N'nữ', CAST(N'1999-02-15' AS Date), N'Quảng Nam', N'Hà Nội', N'Kinh', N'Quảng Nam')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (39, N'Nguyễn Văn Hải Hòa', 1, N'nữ', CAST(N'1999-02-17' AS Date), N'Hải Phòng', N'Hà Nội', N'Kinh', N'Hải Phòng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (40, N'Chu Bá Hùng', 2, N'nữ', CAST(N'1999-02-21' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (41, N'Đoàn Văn Thao', 3, N'nam', CAST(N'1999-02-22' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (42, N'Trần Xuân Tùng', 4, N'nam', CAST(N'1999-02-24' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (43, N'Lê Văn Thái', 5, N'nam', CAST(N'1999-02-28' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (44, N'Nguyễn Thế Anh', 6, N'nữ', CAST(N'1999-03-01' AS Date), N'Đà Nẵng', N'Hà Nội', N'Kinh', N'Đà Nẵng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (45, N'Nguyễn Lương Thao', 7, N'nam', CAST(N'1999-03-03' AS Date), N'Đà Nẵng', N'Hà Nội', N'Kinh', N'Đà Nẵng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (46, N'Nguyễn Đức Mạnh', 8, N'nữ', CAST(N'1999-03-04' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (47, N'Đinh Trường Sơn', 1, N'nữ', CAST(N'1999-03-06' AS Date), N'Cần Thơ', N'Hà Nội', N'Kinh', N'Cần Thơ')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (48, N'Nguyễn Quốc Hội', 2, N'nam', CAST(N'1999-03-07' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (49, N'Lê Đức Nam', 3, N'nam', CAST(N'1999-03-08' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (50, N'Vũ Tuấn Anh', 4, N'nữ', CAST(N'1999-03-09' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (51, N'Trần Văn Bằng', 5, N'nữ', CAST(N'1999-03-10' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (52, N'Nguyễn Ngọc Hiếu', 6, N'nam', CAST(N'1999-03-11' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (53, N'Đoàn Văn Phúc', 7, N'nam', CAST(N'1999-03-13' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (54, N'Nguyễn Văn Hùng', 8, N'nữ', CAST(N'1999-03-14' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (55, N'Phạm Hồng Trường', 1, N'nam', CAST(N'1999-03-29' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (56, N'Hoàng Quốc Huy', 2, N'nữ', CAST(N'1999-03-30' AS Date), N'Cần Thơ', N'Hà Nội', N'Kinh', N'Cần Thơ')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (57, N'Nguyễn Anh Tuấn', 3, N'nam', CAST(N'1999-03-23' AS Date), N'Cần Thơ', N'Hà Nội', N'Kinh', N'Cần Thơ')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (58, N'Nguyễn Đình Nhâm', 4, N'nữ', CAST(N'1999-03-22' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (59, N'Đặng Văn	An', 5, N'nam', CAST(N'1999-03-15' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (60, N'Nguyễn Huy Hoàng', 6, N'nữ', CAST(N'1999-03-17' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (61, N'Nguyễn Văn Nhân', 7, N'nữ', CAST(N'1999-03-19' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (62, N'Vũ Thanh	Tùng', 8, N'nam', CAST(N'1999-03-23' AS Date), N'Bắc Giang', N'Hà Nội', N'Kinh', N'Bắc Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (63, N'Vũ Công Đình', 1, N'nữ', CAST(N'1999-03-27' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (64, N'Nguyễn Thế Sơn', 2, N'nữ', CAST(N'1999-03-29' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (65, N'Dương Bảo Anh', 3, N'nam', CAST(N'1999-04-01' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (66, N'Trần Đức Hùng', 4, N'nữ', CAST(N'1999-04-02' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (67, N'Trần Quang Nam', 5, N'nam', CAST(N'1999-04-04' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (68, N'Trần Văn Phương', 6, N'nữ', CAST(N'1999-04-05' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (69, N'Trần Văn Thoả', 7, N'nữ', CAST(N'1999-04-06' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (70, N'Mai Thế Chung', 8, N'nam', CAST(N'1999-04-09' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (71, N'Nguyễn Quốc Hải', 1, N'nam', CAST(N'1999-04-12' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (72, N'Nguyễn Văn Quang', 2, N'nam', CAST(N'1999-04-14' AS Date), N'Thái Bình', N'Hà Nội', N'Kinh', N'Thái Bình')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (73, N'Nguyễn Hữu Quý', 3, N'nữ', CAST(N'1999-04-15' AS Date), N'Sóc Trăng', N'Hà Nội', N'Kinh', N'Sóc Trăng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (74, N'Nguyễn Trọng Quý', 4, N'nam', CAST(N'1999-04-17' AS Date), N'Khánh Hòa', N'Hà Nội', N'Kinh', N'Khánh Hòa')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (75, N'Nguyễn Văn Trường', 5, N'nữ', CAST(N'1999-04-21' AS Date), N'Hậu Giang', N'Hà Nội', N'Kinh', N'Hậu Giang')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (76, N'Nguyễn Tiến Đạt', 6, N'nữ', CAST(N'1999-04-23' AS Date), N'Cao Bằng', N'Hà Nội', N'Kinh', N'Cao Bằng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (77, N'Nguyễn Thị Thu Hà', 7, N'nữ', CAST(N'1999-04-25' AS Date), N'Cao Bằng', N'Hà Nội', N'Kinh', N'Cao Bằng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (78, N'Vũ Phúc Lợi', 8, N'nam', CAST(N'1999-04-26' AS Date), N'Cao Bằng', N'Hà Nội', N'Kinh', N'Cao Bằng')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (79, N'Bùi Hữu Phước', 1, N'nam', CAST(N'1999-04-29' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (80, N'Nguyễn Tiến Hưng', 2, N'nữ', CAST(N'1999-04-30' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (81, N'Phạm Thị Quỳnh', 3, N'nam', CAST(N'1999-05-01' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (82, N'Phạm Hồng Sơn', 4, N'nữ', CAST(N'1999-05-02' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (83, N'Nghiêm Thành Công', 5, N'nữ', CAST(N'1999-05-06' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (84, N'Phùng Thị Anh Hoa', 6, N'nữ', CAST(N'1999-05-08' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (85, N'Phùng Nhật Huy', 7, N'nam', CAST(N'1999-05-10' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (86, N'Nguyễn Văn Lân', 8, N'nữ', CAST(N'1999-05-12' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (87, N'Bùi Quốc Luýt', 8, N'nam', CAST(N'1999-05-14' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (88, N'Nguyễn Đức Nam', 7, N'nữ', CAST(N'1999-05-16' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (89, N'Trần Tuấn	Phong', 6, N'nam', CAST(N'1999-05-17' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (90, N'Đặng Thanh Thu', 5, N'nam', CAST(N'1999-05-19' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (91, N'Trương Văn Tiến', 4, N'nam', CAST(N'1999-05-20' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (92, N'Phạm Đức Duy', 3, N'nữ', CAST(N'1999-05-21' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (93, N'Đặng Thành Đạt', 2, N'nam', CAST(N'1999-05-22' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (94, N'Hoàng Minh Đức', 1, N'nữ', CAST(N'1999-05-23' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (95, N'Hoàng Minh Đức
Nguyễn Thị Ngân', 1, N'nam', CAST(N'1999-05-25' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (96, N'Trần Văn Quyền', 2, N'nữ', CAST(N'1999-05-27' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (97, N'Bùi Văn Hùng', 3, N'nữ', CAST(N'1999-05-28' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (98, N'Vũ Quốc Văn', 4, N'nam', CAST(N'1999-05-30' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (99, N'Lê Văn Lãm', 1, N'nữ', CAST(N'1999-05-31' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
INSERT [dbo].[HOCSINH] ([MAHS], [TENHS], [MALOP], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [DANTOC], [QUEQUAN]) VALUES (100, N'Nguyễn Văn Lịch', 1, N'nam', CAST(N'1999-05-11' AS Date), N'Hà Nội', N'Hà Nội', N'Kinh', N'Hà Nội')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (1, N'Chuyên Toán', N'Đỗ Việt Anh')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (2, N'Chuyên Lý', N'Bùi Bằng Dương')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (3, N'Chuyên Hóa', N'Phạm Văn Tùng')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (4, N'Chuyên Sinh', N'Nguyễn Thị Hồng Ánh')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (5, N'Chuyên Sử', N'Hoàng Gia Lâm')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (6, N'Chuyên Địa', N'Đỗ Tiến Thành')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (7, N'Chuyên Văn', N'Hoàng Hải Thành')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [GVCN]) VALUES (8, N'Chuyên Anh', N'Nguyễn Tuấn Hưng')
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_LOP]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_LOP]
GO

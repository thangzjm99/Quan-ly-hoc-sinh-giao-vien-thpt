USE [master]
GO
/****** Object:  Database [QLHocSinhGiaoVienTHPT]    Script Date: 6/23/2020 8:52:16 AM ******/
CREATE DATABASE [QLHocSinhGiaoVienTHPT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLHocSinhGiaoVienTHPT', FILENAME = N'E:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLHocSinhGiaoVienTHPT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLHocSinhGiaoVienTHPT_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLHocSinhGiaoVienTHPT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLHocSinhGiaoVienTHPT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET RECOVERY FULL 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET  MULTI_USER 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLHocSinhGiaoVienTHPT', N'ON'
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET QUERY_STORE = OFF
GO
USE [QLHocSinhGiaoVienTHPT]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[mark]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[program]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[staff]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[staff_program]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[student]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[student_program]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Table [dbo].[studentprograms]    Script Date: 6/23/2020 8:52:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentprograms](
	[student_id] [int] NOT NULL,
	[program_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.studentprograms] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC,
	[program_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_mark]    Script Date: 6/23/2020 8:52:16 AM ******/
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
/****** Object:  Index [IX_program_id]    Script Date: 6/23/2020 8:52:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_program_id] ON [dbo].[studentprograms]
(
	[program_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_student_id]    Script Date: 6/23/2020 8:52:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_student_id] ON [dbo].[studentprograms]
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[studentprograms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.studentprograms_dbo.program_program_id] FOREIGN KEY([program_id])
REFERENCES [dbo].[program] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[studentprograms] CHECK CONSTRAINT [FK_dbo.studentprograms_dbo.program_program_id]
GO
ALTER TABLE [dbo].[studentprograms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.studentprograms_dbo.student_student_id] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[studentprograms] CHECK CONSTRAINT [FK_dbo.studentprograms_dbo.student_student_id]
GO
USE [master]
GO
ALTER DATABASE [QLHocSinhGiaoVienTHPT] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [university]    Script Date: 21.10.2022 12:08:14 ******/
CREATE DATABASE [university]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'university', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\university.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'university_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\university_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [university] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [university].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [university] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [university] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [university] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [university] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [university] SET ARITHABORT OFF 
GO
ALTER DATABASE [university] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [university] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [university] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [university] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [university] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [university] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [university] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [university] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [university] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [university] SET  DISABLE_BROKER 
GO
ALTER DATABASE [university] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [university] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [university] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [university] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [university] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [university] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [university] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [university] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [university] SET  MULTI_USER 
GO
ALTER DATABASE [university] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [university] SET DB_CHAINING OFF 
GO
ALTER DATABASE [university] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [university] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [university] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [university] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [university] SET QUERY_STORE = OFF
GO
USE [university]
GO
/****** Object:  Table [dbo].[Atest]    Script Date: 21.10.2022 12:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atest](
	[KodAtest] [int] NOT NULL,
	[Atest] [varchar](50) NOT NULL,
	[KodGroup] [int] NOT NULL,
	[KodTeacher] [int] NOT NULL,
 CONSTRAINT [PK_Atest] PRIMARY KEY CLUSTERED 
(
	[KodAtest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 21.10.2022 12:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[KodGroup] [int] NOT NULL,
	[Group] [nvarchar](50) NOT NULL,
	[Para] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[NumberAudit] [int] NOT NULL,
	[GroupPhoto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[KodGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Techer]    Script Date: 21.10.2022 12:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Techer](
	[KodTecher] [int] NOT NULL,
	[FIOTecher] [varchar](50) NOT NULL,
	[NazvPredmet] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Techer] PRIMARY KEY CLUSTERED 
(
	[KodTecher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Atest] ([KodAtest], [Atest], [KodGroup], [KodTeacher]) VALUES (1, N'Красный', 1, 1)
INSERT [dbo].[Atest] ([KodAtest], [Atest], [KodGroup], [KodTeacher]) VALUES (2, N'Синий', 2, 2)
INSERT [dbo].[Atest] ([KodAtest], [Atest], [KodGroup], [KodTeacher]) VALUES (3, N'Синий', 3, 3)
INSERT [dbo].[Atest] ([KodAtest], [Atest], [KodGroup], [KodTeacher]) VALUES (4, N'Красный', 4, 4)
INSERT [dbo].[Atest] ([KodAtest], [Atest], [KodGroup], [KodTeacher]) VALUES (5, N'Красный', 5, 5)
GO
INSERT [dbo].[Group] ([KodGroup], [Group], [Para], [Date], [NumberAudit], [GroupPhoto]) VALUES (1, N'ИСП.20А', N'1', CAST(N'2022-09-01' AS Date), 35, N'\Photo\BoHbK2714Mc.jpg')
INSERT [dbo].[Group] ([KodGroup], [Group], [Para], [Date], [NumberAudit], [GroupPhoto]) VALUES (2, N'ИСП.21А', N'2', CAST(N'2022-09-01' AS Date), 34, N'\Photo\DSC_0943.jpg')
INSERT [dbo].[Group] ([KodGroup], [Group], [Para], [Date], [NumberAudit], [GroupPhoto]) VALUES (3, N'ТМ20А', N'3', CAST(N'2022-09-01' AS Date), 33, N'\Photo\gYK5A8_eing.jpg')
INSERT [dbo].[Group] ([KodGroup], [Group], [Para], [Date], [NumberAudit], [GroupPhoto]) VALUES (4, N'ССА19', N'4', CAST(N'2022-09-01' AS Date), 32, N'\Photo\ph1.jpg')
INSERT [dbo].[Group] ([KodGroup], [Group], [Para], [Date], [NumberAudit], [GroupPhoto]) VALUES (5, N'ОПУТ20', N'5', CAST(N'2022-09-01' AS Date), 32, N'\Photo\xqMedpxNbmg-1024x766.jpg')
GO
INSERT [dbo].[Techer] ([KodTecher], [FIOTecher], [NazvPredmet]) VALUES (1, N'Серебрянникова Анастасья Игоревна', N'Математика')
INSERT [dbo].[Techer] ([KodTecher], [FIOTecher], [NazvPredmet]) VALUES (2, N'Сёмина Анджелика Ивановна', N'Русский язык')
INSERT [dbo].[Techer] ([KodTecher], [FIOTecher], [NazvPredmet]) VALUES (3, N'Карявина Елена Евгеньевна', N'Английский язык')
INSERT [dbo].[Techer] ([KodTecher], [FIOTecher], [NazvPredmet]) VALUES (4, N'Ионина Наталья Васильевна', N'История')
INSERT [dbo].[Techer] ([KodTecher], [FIOTecher], [NazvPredmet]) VALUES (5, N'Спирягина Анфиса Алексеевна', N'Биология')
GO
ALTER TABLE [dbo].[Atest]  WITH CHECK ADD  CONSTRAINT [FK_Atest_Group] FOREIGN KEY([KodTeacher])
REFERENCES [dbo].[Group] ([KodGroup])
GO
ALTER TABLE [dbo].[Atest] CHECK CONSTRAINT [FK_Atest_Group]
GO
ALTER TABLE [dbo].[Atest]  WITH CHECK ADD  CONSTRAINT [FK_Atest_Techer] FOREIGN KEY([KodTeacher])
REFERENCES [dbo].[Techer] ([KodTecher])
GO
ALTER TABLE [dbo].[Atest] CHECK CONSTRAINT [FK_Atest_Techer]
GO
USE [master]
GO
ALTER DATABASE [university] SET  READ_WRITE 
GO

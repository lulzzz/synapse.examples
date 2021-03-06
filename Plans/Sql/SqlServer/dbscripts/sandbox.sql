USE [master]
GO
/****** Object:  Database [SANDBOX]    Script Date: 4/21/2017 11:38:10 AM ******/
CREATE DATABASE [SANDBOX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SANDBOX', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SANDBOX.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SANDBOX_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SANDBOX_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SANDBOX] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SANDBOX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SANDBOX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SANDBOX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SANDBOX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SANDBOX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SANDBOX] SET ARITHABORT OFF 
GO
ALTER DATABASE [SANDBOX] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SANDBOX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SANDBOX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SANDBOX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SANDBOX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SANDBOX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SANDBOX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SANDBOX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SANDBOX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SANDBOX] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SANDBOX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SANDBOX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SANDBOX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SANDBOX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SANDBOX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SANDBOX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SANDBOX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SANDBOX] SET RECOVERY FULL 
GO
ALTER DATABASE [SANDBOX] SET  MULTI_USER 
GO
ALTER DATABASE [SANDBOX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SANDBOX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SANDBOX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SANDBOX] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SANDBOX] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SANDBOX]
GO
/****** Object:  User [guy]    Script Date: 4/21/2017 11:38:10 AM ******/
CREATE USER [guy] FOR LOGIN [guy] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [guy]
GO
/****** Object:  UserDefinedFunction [dbo].[funcAdd]    Script Date: 4/21/2017 11:38:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funcAdd]
(
	@Param1 INTEGER,
	@Param2 INTEGER
)
RETURNS INTEGER
AS
BEGIN
	DECLARE @Sum INTEGER
	SET @Sum = @Param1 + @Param2
	RETURN @Sum

END

GO
/****** Object:  Table [dbo].[PRESIDENTS]    Script Date: 4/21/2017 11:38:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRESIDENTS](
	[ID] [int] NOT NULL,
	[NAME] [varchar](256) NOT NULL,
	[AGE] [int] NULL,
 CONSTRAINT [PK_EMPLOYEES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (1, N'George Washington', 67)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (2, N'John Adams', 90)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (3, N'Thomas Jefferson', 83)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (4, N'James Madison', 85)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (5, N'James Monroe', 73)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (6, N'John Quincy Adams', 80)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (7, N'Andrew Jackson', 78)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (8, N'Martin Van Buren', 79)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (9, N'William Henry Harrison', 68)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (10, N'John Tyler', 71)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (11, N'James K. Polk', 53)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (12, N'Zachary Taylor', 65)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (13, N'Millard Fillmore', 74)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (14, N'Franklin Pierce', 64)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (15, N'James Buchanan', 77)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (16, N'Abraham Lincoln', 56)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (17, N'Andrew Johnson', 66)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (18, N'Ulysses S. Grant', 63)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (19, N'Rutherford B. Hayes', 70)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (20, N'James A. Garfield', 49)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (21, N'Chester A. Arthur', 57)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (22, N'Grover Cleveland', 71)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (23, N'Benjamin Harrison', 67)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (24, N'Grover Cleveland', 71)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (25, N'William McKinley', 58)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (26, N'Theodore Roosevelt', 60)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (27, N'William Howard Taft', 72)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (28, N'Woodrow Wilson', 67)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (29, N'Warren G. Harding', 57)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (30, N'Calvin Coolidge', 60)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (31, N'Herbert Hoover', 90)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (32, N'Franklin D. Roosevelt', 63)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (33, N'Harry S. Truman', 88)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (34, N'Dwight D. Eisenhower', 78)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (35, N'John F. Kennedy', 46)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (36, N'Lyndon B. Johnson', 64)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (37, N'Richard Nixon', 81)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (38, N'Gerald Ford', 93)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (39, N'Jimmy Carter', 92)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (40, N'Ronald Reagan', 93)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (41, N'George H. W. Bush', 92)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (42, N'Bill Clinton', 70)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (43, N'George W. Bush', 70)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (44, N'Barack Obama', 55)
INSERT [dbo].[PRESIDENTS] ([ID], [NAME], [AGE]) VALUES (45, N'Donald Trump', 70)
/****** Object:  StoredProcedure [dbo].[MultiParams]    Script Date: 4/21/2017 11:38:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MultiParams]
	 @Param1 INTEGER
	,@Param2 INTEGER OUTPUT
	,@Param3 INTEGER OUTPUT
	,@Param4 DATETIME OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	SET @Param2 = @Param1 + @Param1
	SET @Param3 = @Param1 + @Param1 + @Param1
	SET @Param4 = SYSDATETIME()

	SELECT * FROM dbo.PRESIDENTS WHERE ID <= 5;
	SELECT * FROM dbo.PRESIDENTS WHERE ID >= 44;

	RETURN 42
END

GO
/****** Object:  StoredProcedure [dbo].[uspDouble]    Script Date: 4/21/2017 11:38:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspDouble]
	@Param1 INTEGER OUTPUT
AS
BEGIN
	SET @Param1 = @Param1 + @Param1
END

GO
/****** Object:  StoredProcedure [dbo].[uspGetPresidents]    Script Date: 4/21/2017 11:38:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspGetPresidents]
AS
SELECT * FROM dbo.PRESIDENTS

GO
USE [master]
GO
ALTER DATABASE [SANDBOX] SET  READ_WRITE 
GO

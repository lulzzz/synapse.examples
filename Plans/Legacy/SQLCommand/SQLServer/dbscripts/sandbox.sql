USE [SANDBOX]
GO
/****** Object:  User [guy]    Script Date: 2/14/2017 2:10:09 PM ******/
CREATE USER [guy] FOR LOGIN [guy] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [guy]
GO
/****** Object:  Table [dbo].[PRESIDENTS]    Script Date: 2/14/2017 2:10:09 PM ******/
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
 CONSTRAINT [PK_PRESIDENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[uspGetPresidents]    Script Date: 2/14/2017 2:10:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspGetPresidents]
AS
SELECT * FROM dbo.PRESIDENTS
GO
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (1, 'George Washington', 67)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (2, 'John Adams', 90)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (3, 'Thomas Jefferson', 83)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (4, 'James Madison', 85)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (5, 'James Monroe', 73)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (6, 'John Quincy Adams', 80)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (7, 'Andrew Jackson', 78)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (8, 'Martin Van Buren', 79)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (9, 'William Henry Harrison', 68)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (10, 'John Tyler', 71)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (11, 'James K. Polk', 53)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (12, 'Zachary Taylor', 65)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (13, 'Millard Fillmore', 74)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (14, 'Franklin Pierce', 64)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (15, 'James Buchanan', 77)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (16, 'Abraham Lincoln', 56)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (17, 'Andrew Johnson', 66)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (18, 'Ulysses S. Grant', 63)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (19, 'Rutherford B. Hayes', 70)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (20, 'James A. Garfield', 49)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (21, 'Chester A. Arthur', 57)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (22, 'Grover Cleveland', 71)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (23, 'Benjamin Harrison', 67)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (24, 'Grover Cleveland', 71)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (25, 'William McKinley', 58)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (26, 'Theodore Roosevelt', 60)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (27, 'William Howard Taft', 72)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (28, 'Woodrow Wilson', 67)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (29, 'Warren G. Harding', 57)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (30, 'Calvin Coolidge', 60)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (31, 'Herbert Hoover', 90)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (32, 'Franklin D. Roosevelt', 63)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (33, 'Harry S. Truman', 88)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (34, 'Dwight D. Eisenhower', 78)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (35, 'John F. Kennedy', 46)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (36, 'Lyndon B. Johnson', 64)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (37, 'Richard Nixon', 81)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (38, 'Gerald Ford', 93)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (39, 'Jimmy Carter', 92)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (40, 'Ronald Reagan', 93)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (41, 'George H. W. Bush', 92)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (42, 'Bill Clinton', 70)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (43, 'George W. Bush', 70)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (44, 'Barack Obama', 55)
INSERT INTO [dbo].[PRESIDENTS]([ID],[NAME],[AGE]) VALUES (45, 'Donald Trump', 70)
GO


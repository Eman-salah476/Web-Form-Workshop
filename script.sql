USE [Techno]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/9/2021 2:09:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Mangaer_id] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/9/2021 2:09:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Birth_date] [date] NULL,
	[Hire_date] [date] NULL,
	[Salary] [int] NULL,
	[Dept_id] [int] NULL,
	[Manger_id] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacations]    Script Date: 3/9/2021 2:09:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Submission_date] [date] NULL,
	[Emp_name] [varchar](50) NULL,
	[Dept_id] [int] NULL,
	[Title] [varchar](max) NULL,
	[Date_from] [date] NULL,
	[Date_to] [date] NULL,
	[Returning_date] [date] NULL,
	[No_days] [int] NULL,
	[Notes] [varchar](max) NULL,
 CONSTRAINT [PK_Vacations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([ID], [Name], [Mangaer_id]) VALUES (1, N'Software Department', 4)
INSERT [dbo].[Department] ([ID], [Name], [Mangaer_id]) VALUES (2, N'HR Department', 5)
INSERT [dbo].[Department] ([ID], [Name], [Mangaer_id]) VALUES (3, N'DP3', 2)
INSERT [dbo].[Department] ([ID], [Name], [Mangaer_id]) VALUES (4, N'DP4', 3)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (1, N'Eman Salah ', N'Menoufia', CAST(N'1995-04-25' AS Date), CAST(N'2021-03-01' AS Date), 4000, 1, 3)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (2, N'Khaled Ali', N'Cairo', CAST(N'1990-08-24' AS Date), CAST(N'2015-02-02' AS Date), 10000, 1, NULL)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (3, N'Amira Mohamed', N'Cairo', CAST(N'1991-04-30' AS Date), CAST(N'2015-02-05' AS Date), 10000, 2, NULL)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (4, N'Ali Ahmed', N'Giza', CAST(N'1985-06-03' AS Date), CAST(N'2014-06-03' AS Date), 12000, 3, NULL)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (5, N'Hannan Ali', N'Mansoura', CAST(N'1972-03-03' AS Date), CAST(N'2014-03-03' AS Date), 20000, 4, NULL)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (6, N'Hanaa Ahmed', N'cairo', CAST(N'1995-02-03' AS Date), CAST(N'2020-03-03' AS Date), 4000, 1, 3)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (7, N'Naglaa Ali', N'cairo', CAST(N'1995-05-15' AS Date), CAST(N'2020-02-25' AS Date), 4000, 1, 3)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (8, N'Hassan Ali', N'cairo', CAST(N'1995-02-02' AS Date), CAST(N'2020-02-02' AS Date), 4000, 2, 4)
INSERT [dbo].[Employee] ([ID], [Name], [Address], [Birth_date], [Hire_date], [Salary], [Dept_id], [Manger_id]) VALUES (9, N'Ahmed Hassan', N'cairo', CAST(N'1993-03-03' AS Date), CAST(N'2020-02-02' AS Date), 5000, 3, 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacations] ON 

INSERT [dbo].[Vacations] ([ID], [Submission_date], [Emp_name], [Dept_id], [Title], [Date_from], [Date_to], [Returning_date], [No_days], [Notes]) VALUES (1, CAST(N'2021-09-03' AS Date), N'Eman salah', 1, N'Injury vacation', CAST(N'2021-03-10' AS Date), CAST(N'2021-04-29' AS Date), CAST(N'2021-04-30' AS Date), NULL, N'i am tired')
INSERT [dbo].[Vacations] ([ID], [Submission_date], [Emp_name], [Dept_id], [Title], [Date_from], [Date_to], [Returning_date], [No_days], [Notes]) VALUES (2, CAST(N'2021-09-03' AS Date), N'Amira Ali', 1, N'Injury vacation', CAST(N'2021-03-18' AS Date), CAST(N'2021-05-31' AS Date), CAST(N'2021-07-01' AS Date), 74, N'')
INSERT [dbo].[Vacations] ([ID], [Submission_date], [Emp_name], [Dept_id], [Title], [Date_from], [Date_to], [Returning_date], [No_days], [Notes]) VALUES (3, CAST(N'2021-09-03' AS Date), N'Walaa ali', 2, N'vacation', CAST(N'2021-04-01' AS Date), CAST(N'2021-04-30' AS Date), CAST(N'2021-05-01' AS Date), 29, N'')
INSERT [dbo].[Vacations] ([ID], [Submission_date], [Emp_name], [Dept_id], [Title], [Date_from], [Date_to], [Returning_date], [No_days], [Notes]) VALUES (4, CAST(N'2021-09-03' AS Date), N' salah ahmed', 3, N'vacation', CAST(N'2021-03-10' AS Date), CAST(N'2021-04-30' AS Date), CAST(N'2021-05-01' AS Date), 51, N'tired')
SET IDENTITY_INSERT [dbo].[Vacations] OFF
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Employee] FOREIGN KEY([Mangaer_id])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Employee] FOREIGN KEY([Manger_id])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Employee]
GO
ALTER TABLE [dbo].[Vacations]  WITH CHECK ADD  CONSTRAINT [FK_Vacations_Department] FOREIGN KEY([Dept_id])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Vacations] CHECK CONSTRAINT [FK_Vacations_Department]
GO

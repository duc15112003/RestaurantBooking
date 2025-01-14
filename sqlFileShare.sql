USE [RestManager]
GO
/****** Object:  User [admin]    Script Date: 3/6/2024 10:11:01 AM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[account]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [varchar](255) NOT NULL,
	[password] [varchar](255) NULL,
	[status] [varbinary](255) NULL,
	[username] [varchar](255) NULL,
	[customer] [varchar](255) NULL,
	[role] [int] NULL,
	[staff] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [varchar](255) NOT NULL,
	[create_date] [date] NULL,
	[payed] [float] NULL,
	[remain] [float] NULL,
	[status] [varbinary](255) NULL,
	[total] [float] NULL,
	[type] [varbinary](255) NULL,
	[staff_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[stt] [int] IDENTITY(1,1) NOT NULL,
	[count_of_food] [int] NOT NULL,
	[description] [varchar](255) NULL,
	[sale] [float] NULL,
	[bill_id] [varchar](255) NULL,
	[menu_id] [varchar](255) NULL,
	[customer_order_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [varchar](255) NOT NULL,
	[birthday] [date] NULL,
	[email] [varchar](255) NULL,
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[phonenumber] [varchar](255) NULL,
	[status] [varbinary](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_order]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_order](
	[id] [varchar](255) NOT NULL,
	[create_date] [date] NULL,
	[description] [varchar](255) NULL,
	[status] [varbinary](255) NULL,
	[timein] [date] NULL,
	[timeout] [date] NULL,
	[customer_id] [varchar](255) NULL,
	[table_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu_food]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu_food](
	[id] [varchar](255) NOT NULL,
	[description] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[price] [float] NULL,
	[type] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[id] [varchar](255) NOT NULL,
	[email] [varchar](255) NULL,
	[firstname] [varchar](255) NULL,
	[gender] [bit] NULL,
	[id_identity_card] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[salary] [float] NULL,
	[status] [varbinary](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table_order]    Script Date: 3/6/2024 10:11:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[status] [varbinary](255) NULL,
	[type] [varbinary](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([id], [password], [status], [username], [customer], [role], [staff]) VALUES (N'1', N'password123', 0xACED00057E72001C636F6D2E706F6C792E456E756D2E5374617475735F4163636F756E7400000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645, N'ducpham123', NULL, 0, N'1')
INSERT [dbo].[account] ([id], [password], [status], [username], [customer], [role], [staff]) VALUES (N'2', N'123', 0xACED00057E72001C636F6D2E706F6C792E456E756D2E5374617475735F4163636F756E7400000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008494E414354495645, N'root', NULL, 0, N'NV000')
INSERT [dbo].[account] ([id], [password], [status], [username], [customer], [role], [staff]) VALUES (N'3', N'vrQc9H5C74/DyQ1Rv/hoPQ==', 0xACED00057E72001C636F6D2E706F6C792E456E756D2E5374617475735F4163636F756E7400000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008494E414354495645, N'user', N'0', 1, NULL)
INSERT [dbo].[account] ([id], [password], [status], [username], [customer], [role], [staff]) VALUES (N'4', N'123', 0xACED00057E72001C636F6D2E706F6C792E456E756D2E5374617475735F4163636F756E7400000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008494E414354495645, N'phuc', N'0', 1, NULL)
INSERT [dbo].[account] ([id], [password], [status], [username], [customer], [role], [staff]) VALUES (N'5', N'$2a$10$7KLiH2G6JCw8b/3p1bI5HOSpQr.nst4roO4wOWWoYXF15axh7WO1C', 0xACED00057E72001C636F6D2E706F6C792E456E756D2E5374617475735F4163636F756E7400000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008494E414354495645, N'ductest', N'0', 1, NULL)
INSERT [dbo].[account] ([id], [password], [status], [username], [customer], [role], [staff]) VALUES (N'Luu Hoàng 9', N'tUT8INOxo5G/uid9yuFyP2Dtbf8TIU7Jnq7ValbhFmg=', 0xACED00057E72001C636F6D2E706F6C792E456E756D2E5374617475735F4163636F756E7400000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645, N'B?oLuu Hoàng ', NULL, NULL, N'NV002')
GO
INSERT [dbo].[customer] ([id], [birthday], [email], [firstname], [lastname], [phonenumber], [status]) VALUES (N'0', CAST(N'2004-06-23' AS Date), N'Haihau@gmail.com', N'd?c', N'bình', N'0961705676', 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F537461666600000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645)
INSERT [dbo].[customer] ([id], [birthday], [email], [firstname], [lastname], [phonenumber], [status]) VALUES (N'1', CAST(N'2003-11-15' AS Date), N'ducpmps26590@fpt.edu.vn', N'Ph?m', N'Ð?c', N'0966980532', 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F537461666600000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645)
GO
INSERT [dbo].[menu_food] ([id], [description], [image], [name], [price], [type]) VALUES (N'1', N'uefg', N'https://th.bing.com/th/id/OIP.a_dRngsAZrSnPdkh-VCoywAAAA?rs=1&pid=ImgDetMain', N'ph?m minh d?c', 100000, N'APPETIZER')
INSERT [dbo].[menu_food] ([id], [description], [image], [name], [price], [type]) VALUES (N'2', N'uefg', N'https://th.bing.com/th/id/OIP.a_dRngsAZrSnPdkh-VCoywAAAA?rs=1&pid=ImgDetMain', N'ph?m minh d?c', 100000, N'APPETIZER')
INSERT [dbo].[menu_food] ([id], [description], [image], [name], [price], [type]) VALUES (N'3', N'uefg', N'https://th.bing.com/th/id/OIP.a_dRngsAZrSnPdkh-VCoywAAAA?rs=1&pid=ImgDetMain', N'ph?m minh d?c', 100000, N'APPETIZER')
INSERT [dbo].[menu_food] ([id], [description], [image], [name], [price], [type]) VALUES (N'5', N'sdaf', N'https://th.bing.com/th/id/OIP.StlpTv3A8gNhPsYDpZBLMQHaEo?rs=1&pid=ImgDetMain', N'ÐTC Ph?m', 10000, N'MAIN_COURSE')
INSERT [dbo].[menu_food] ([id], [description], [image], [name], [price], [type]) VALUES (N'6', N'sdaf', N'https://th.bing.com/th/id/OIP.StlpTv3A8gNhPsYDpZBLMQHaEo?rs=1&pid=ImgDetMain', N'ÐTC Ph?m', 10000, N'MAIN_COURSE')
INSERT [dbo].[menu_food] ([id], [description], [image], [name], [price], [type]) VALUES (N'7', N'uefg', N'https://th.bing.com/th/id/OIP.a_dRngsAZrSnPdkh-VCoywAAAA?rs=1&pid=ImgDetMain', N'1', 100000, N'APPETIZER')
GO
INSERT [dbo].[role] ([id], [name]) VALUES (0, N'ADMIN')
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'USER')
GO
INSERT [dbo].[staff] ([id], [email], [firstname], [gender], [id_identity_card], [lastname], [salary], [status]) VALUES (N'1', N'ducpmps26590@fpt.edu.vn', N'Ph?m', 1, N'068203005191', N'Ð?c', 50000, 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F537461666600000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645)
INSERT [dbo].[staff] ([id], [email], [firstname], [gender], [id_identity_card], [lastname], [salary], [status]) VALUES (N'NV000', N'admin@gmail.com', N'admin', 1, N'admin', N'admin', 100000000, 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F537461666600000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645)
INSERT [dbo].[staff] ([id], [email], [firstname], [gender], [id_identity_card], [lastname], [salary], [status]) VALUES (N'NV002', N'baolhps26531@fpt.edu.vn', N'Luu Hoàng ', 1, N'123456789', N'B?o', 100000000, 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F537461666600000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740006414354495645)
GO
SET IDENTITY_INSERT [dbo].[table_order] ON 

INSERT [dbo].[table_order] ([id], [name], [status], [type]) VALUES (1, N'Thiên Ðu?ng', 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F5461626C6500000000000000001200007872000E6A6176612E6C616E672E456E756D0000000000000000120000787074000446756C6C, 0xACED00057E720018636F6D2E706F6C792E456E756D2E547970655F5461626C6500000000000000001200007872000E6A6176612E6C616E672E456E756D000000000000000012000078707400056E6F6D616C)
INSERT [dbo].[table_order] ([id], [name], [status], [type]) VALUES (2, N'Bàn thu?ng', 0xACED00057E72001A636F6D2E706F6C792E456E756D2E5374617475735F5461626C6500000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740005456D707479, 0xACED00057E720018636F6D2E706F6C792E456E756D2E547970655F5461626C6500000000000000001200007872000E6A6176612E6C616E672E456E756D000000000000000012000078707400077370656369616C)
SET IDENTITY_INSERT [dbo].[table_order] OFF
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FK8b6nou36bcycey2spg7xer75w] FOREIGN KEY([customer])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FK8b6nou36bcycey2spg7xer75w]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FKevw0n2ncvstk8qggyrhovnd8j] FOREIGN KEY([staff])
REFERENCES [dbo].[staff] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FKevw0n2ncvstk8qggyrhovnd8j]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD  CONSTRAINT [FKfs8rn86mtgrcdmqjggp32nx2p] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[account] CHECK CONSTRAINT [FKfs8rn86mtgrcdmqjggp32nx2p]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK65yr6rfl6t48m2uk0q8ocp5yg] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK65yr6rfl6t48m2uk0q8ocp5yg]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK8cwfgpt7tdqfxbw0j2tvrsuki] FOREIGN KEY([menu_id])
REFERENCES [dbo].[menu_food] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK8cwfgpt7tdqfxbw0j2tvrsuki]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FKma0o3eyq3est6le216t3vfbij] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FKma0o3eyq3est6le216t3vfbij]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FKnnfjl4ndppmdtta16rv2ag0tv] FOREIGN KEY([customer_order_id])
REFERENCES [dbo].[customer_order] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FKnnfjl4ndppmdtta16rv2ag0tv]
GO
ALTER TABLE [dbo].[customer_order]  WITH CHECK ADD  CONSTRAINT [FK3qoj43sudgrk9ba1b2ndas7ea] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[customer_order] CHECK CONSTRAINT [FK3qoj43sudgrk9ba1b2ndas7ea]
GO
ALTER TABLE [dbo].[customer_order]  WITH CHECK ADD  CONSTRAINT [FKr2re5q70tchupmmoby0452vm3] FOREIGN KEY([table_id])
REFERENCES [dbo].[table_order] ([id])
GO
ALTER TABLE [dbo].[customer_order] CHECK CONSTRAINT [FKr2re5q70tchupmmoby0452vm3]
GO

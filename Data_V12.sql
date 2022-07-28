drop database [travel_management1]
go
create database [travel_management1]
go
USE [travel_management1]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Account] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[TypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminImage]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminImage](
	[AccountA] [varchar](50) NOT NULL,
	[Img_Avatar] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AccountA] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogDetails]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogDetails](
	[BlogDetailId] [nchar](10) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[News] [text] NOT NULL,
	[BlogId] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogId] [nchar](10) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[AccountM] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[AccountC] [varchar](50) NOT NULL,
	[HomeStayId] [nchar](10) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[OrderTime] [datetime] NOT NULL,
	[BookingTime] [int] NOT NULL,
	[VisitorNumber] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountC] ASC,
	[HomeStayId] ASC,
	[OrderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingHistories]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingHistories](
	[AccountC] [varchar](50) NOT NULL,
	[HomeStayId] [nchar](10) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[OrderTime] [datetime] NOT NULL,
	[BookingTime] [int] NOT NULL,
	[VisitorNumber] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Star] [int] NOT NULL,
	[Feedback] [nvarchar](200) NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountC] ASC,
	[HomeStayId] ASC,
	[OrderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateId] [nchar](10) NOT NULL,
	[CateName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddresses]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddresses](
	[AccountC] [varchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Specific] [nvarchar](50) NULL,
	[Ward] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerImage]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerImage](
	[AccountC] [varchar](50) NOT NULL,
	[Img_Avatar] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[AccountC] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Extensions]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extensions](
	[HomeStayId] [nchar](10) NOT NULL,
	[ListExtensions] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[HomeStayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeStayAddressses]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeStayAddressses](
	[HomeStayId] [nchar](10) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Specific] [nvarchar](50) NULL,
	[Ward] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[HomeStayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeStayDetails]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeStayDetails](
	[HomeStayId] [nchar](10) NOT NULL,
	[BedRoomQty] [int] NOT NULL,
	[BathRoomQty] [int] NOT NULL,
	[LivingRoomQty] [int] NOT NULL,
	[KitchenQty] [int] NOT NULL,
	[BedQty] [int] NOT NULL,
	[CheckIn] [time](7) NOT NULL,
	[CheckOut] [time](7) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IncurredCost] [float] NOT NULL,
	[Video] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[HomeStayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeStayHistories]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeStayHistories](
	[HomeStayId] [nchar](10) NOT NULL,
	[FirstName_Cus] [nvarchar](50) NOT NULL,
	[LastName_Cus] [nvarchar](50) NOT NULL,
	[Phone_Cus] [nvarchar](50) NOT NULL,
	[Email_Cus] [nvarchar](50) NOT NULL,
	[OrderTime] [datetime] NOT NULL,
	[BookingTime] [int] NOT NULL,
	[Price] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeStays]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeStays](
	[HomeStayId] [nchar](10) NOT NULL,
	[HomeStayName] [nvarchar](50) NOT NULL,
	[CateId] [nchar](10) NOT NULL,
	[AccountS] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HomeStayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [nchar](10) NOT NULL,
	[ImageUrl] [nvarchar](50) NOT NULL,
	[HomeStayId] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marketing]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marketing](
	[AccountM] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketingImage]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketingImage](
	[AccountM] [varchar](50) NOT NULL,
	[Img_Avatar] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messenger]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messenger](
	[MessengerId] [nchar](10) NOT NULL,
	[Caption] [nvarchar](50) NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[MessRole] [bit] NOT NULL,
	[AccountS] [varchar](50) NOT NULL,
	[AccountC] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MessengerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessengerCA]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessengerCA](
	[MessengerCAId] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](50) NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[MessRole] [bit] NOT NULL,
	[AccountC] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MessengerCAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [nchar](10) NOT NULL,
	[Cus_Name] [nvarchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Star] [float] NOT NULL,
	[Feedback] [nvarchar](max) NULL,
	[HomeStayId] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rules]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules](
	[HomeStayId] [nchar](10) NOT NULL,
	[ListRules] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[HomeStayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [varchar](10) NOT NULL,
	[SliderName] [nvarchar](50) NOT NULL,
	[SliderImage] [nvarchar](50) NOT NULL,
	[AccountM] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierAddresses]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierAddresses](
	[AccountS] [varchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Specific] [nvarchar](50) NULL,
	[Ward] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierImage]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierImage](
	[AccountS] [varchar](50) NOT NULL,
	[Img_ID_front] [nvarchar](50) NOT NULL,
	[Img_ID_back] [nvarchar](50) NOT NULL,
	[Img_Avatar] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[AccountS] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Fax] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[TypeId] [int] NOT NULL,
	[TypeName] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherId] [nchar](10) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[Discount] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[AccountM] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherCustomer]    Script Date: 7/18/2022 8:39:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherCustomer](
	[VoucherId] [nchar](10) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[Discount] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[AccountC] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'123456cainha', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'1danvit', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'2convitcon', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'account1', N'123', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'alice', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'alolao', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'andi', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'ariana', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'aubame', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'bachtuyet', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'baconga', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'bautroikhongem', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'baychulun', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'bella', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'benbohanhphuc', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'binhminhdaysong', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'candypop', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'caoboimiennui', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'chuatebongdem', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'congchua', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'daituongnoxus', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'damand', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'danbolangman', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'deeper', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'ducson', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'emmet', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'genisit', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'haha', N'123', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'haianh', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'haianh123', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'halathon', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'hamhochoi21', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'hayle', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'jaden', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'josephine', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'jungleblack', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'khongcoai', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'khongcongbang', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'khongkk', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'kimlieh', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'lamkhang', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'lethilo', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'linda', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'luboo4', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'luubi2', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'madelyn', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'minhtam123', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'motconngan', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'motminhcodon', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'motnguoithu3', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'motnguoithu4', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'mynameis', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'nanbaka', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'natalia', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'ngaymatem32', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'nguyenphuong', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'nguyentung', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'nguyenvup', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'nhatminh42', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'nuchuahukhong', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'ohsowhataer', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'oze', N'123', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'phamsang', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'phamthoai', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'phuongnguyen12', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'quanvu1', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'saddy', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'samsara', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'sangp', N'123', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'satthudongbang', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'skylar', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'sofia', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'sophie', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'supp1', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'thaisuonghasan', N'123456', 4)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'thanhngu321', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'thanhtoai', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'theanh', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'thilana', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'thinhhuyen', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'thosanbongdem', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'tienlen', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'tifany', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'trang', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'trangtrang', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'trangtrann', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'trieuvan5', N'123456', 1)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'trinhphuong', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'trinhthangbinh', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'tungqwe', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'tungson', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'unclestan', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'vietgang', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'vitconkten', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'whatyourname', N'123456', 2)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'winner', N'123', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'wuin', N'123456', 3)
GO
INSERT [dbo].[Accounts] ([Account], [Password], [TypeId]) VALUES (N'yourname', N'123456', 2)
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'hamhochoi21', N'Ngoc', N'Pham', 23, N'ngocpham21@gmail.com', N'8458563251')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'khongkk', N'Giang', N'Le', 24, N'giangle@gmail.com', N'8458888999')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'luboo4', N'Phong', N'Le', 22, N'phongle@gmail.com', N'8458558956')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'luubi2', N'Thanh Tu', N'Nguyen', 22, N'thanh tunguyen@gmail.com', N'8456656565')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'minhtam123', N'Minh', N'Tam', 22, N'minhtam12@gmail.com', N'8451523529')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'ngaymatem32', N'Duc', N'Bui', 25, N'ducbui@gmail.com', N'8458956215')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'nhatminh42', N'Thuy', N'Tran', 21, N'thuytran@gmail.com', N'8457524263')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'quanvu1', N'Minh Tam', N'Le', 22, N'minh tamle@gmail.com', N'8456225151')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'thanhngu321', N'Thanh', N'Nguyen', 22, N'thanhnguyen12@gmail.com', N'8459695656')
GO
INSERT [dbo].[Admins] ([AccountA], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'trieuvan5', N'Phung', N'La', 25, N'phungla@gmail.com', N'8477788999')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0001   ', N'blog1.jpg', N'How awesome is Bosnia-Herzegovina – there are epic waterfalls, stunning clear rivers and charming little towns. 
When considering a country in eastern Europe for a road trip, Bosnia & Herzegovina should be one of the first countries on your mind. This idyllic country often gets overshadowed by its neighbour, Croatia. Don’t get me wrong, Croatia is a magnificent country in itself but Bosnia & Herzegovina is just something else.', N'BL0001    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0002   ', N'bld2-1.png', N'Hue city is about 100km from Da Nang, it will takes about 2,5-3 hours getting to Hue from Da Nang. These are some most convenient transportation  that you can choose to travel from Danang to Hue.
There are 7 some trains scheduled departing from Da Nang to Hue including SE2, SE4, SE6, SE8, SE20, SE22, and TN2. You can book a seat on the train for hard or soft seat, hard or soft beds.. Each cabin is designed with comfortable seating and air-conditioned. The fare is usually from 35,000 VND to 90,000 VND/ticket depending on which of train and the type of seat.', N'BL0002    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0003   ', N'bld3-1.png', N'Many people once dreamed of experiencing the “death” Bali Swing hovering in Indonesia without knowing that even in Vietnam you can also try this free flying feeling. Located on a farm named Bong Lai Swing Nature Farm, about 40 km from Dong Hoi airport, Quang Binh province, this “death” swing is attracting a lot of visitors to come here to challenge yourself.
The farm is located among flower gardens, guava gardens surrounded by immense hills and mountains. Right below is a cool, wild, beautiful stream as in the fairy-tales.
The price of this service is 80,000 VND / time. Customers over 80 kg are advised not to participate for safety

', N'BL0003    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0004   ', N'bld4-1.png', N'As cities and towns everywhere are losing their moonlight by high-rise buildings and artificial light, the moonlight is still intact in the old town of Hoi An. Moonlight makes Hoi An Town more beautiful, shimmering and more romantic… Once a month, on the 14th night of the lunar month, Hoi An old town becomes more sparkling with a full moon night festival. From 16.00, the roads along the Hoai River and the Old Quarter have banned traffic, and from 18.00, lanterns have been lit, Hoi An goes to Full moon night festival.', N'BL0004    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0005   ', N'bld5-1.png', N'As female travelers, it’s important to look at the complexities of safety and what it really means to be “safe.” We often talk about safe solo travel destination—where the best places are to go (as a gal) and what places are ideal to explore alone.
But, things can get tricky once you are actually there.
It is critical to understand that safety is not the same as comfort. Just because a place is “safe,” doesn’t mean you won’t encounter different cultural norms that make you uncomfortable. It also doesn’t mean that crime doesn’t happen.', N'BL0005    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0006   ', N'bld6-1.png', N'Da Nang like other in tropical country has two main seasons: rainy season from September to November and dry season from December to August. The rains are usually heavy and can last a few hours. However don’t be anxious as the weather is not always bad in this season except stormy days, most of time the weather is still sunny and temperature ranging from 20-30 degree Celsius. If you want to go to Da Nang for a summer vacation and beach water activities, it wouldn’t be a good idea to come this season. The rainy season is also low season for traveler to Da Nang, if you are on a tight budget, you might travel in low season and also can avoid crowded group of tourists. So in the low season, time from January to February is the wonderful period for traveling Da Nang.', N'BL0006    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0007   ', N'bld8-1.png', N'This past week, I got to meet Nancy and Alyse; at Whole Foods’ Shuffle Bar restaurant! It was a very last minute meeting but we bonded over some cauliflower nachos, calamari & poke while we got to get to know each other more. Nancy even suggested doing this on a regular basis so when she’s finished being sick from all the sushi she ate!', N'BL0007    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0008   ', N'blog3.jpg', N'And lastly, a food section! I want to share the amazing meatless pizza I had from Blaze this past Saturday when I went with my family after church. Topped the dough with garlic pesto sauce, feta cheese, pineapples (YES PINEAPPLES BELONG ON PIZZA), mushrooms, spinach, onions, garlic, artichoke and oregano. Yummmm is right. The other photo is from Shuffle Bar', N'BL0008    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0009   ', N'bld7-1.png', N'Learning to speak a few words of local language while on your trip is always fun and greatly improve your experience. Let’s learn some words/phrases of Vietnamese while preparing your trip and you will have chance to talk/chat, make friends – however briefly – with the majority of locals who might not know your language and also give you a far greater appreciation of the Vietnamese culture. Below are some easy and popular phrases which I think will enhance your enjoyment, if you are interested to know a little more about our language, you can download here the phrasebook to sharpen your skills.', N'BL0009    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0010   ', N'bld4-2.png', N'Happy birthday to me! I turned twenty-five yesterday and it was great to celebrate my day surrounded by the people I love. I also got to carve my first pumpkin! 25 is going to be a great year!', N'BL0010    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0011   ', N'bld1-2.png', N'Nature-lovers will be astounded by the abundance of natural marvels that are hidden within Bosnia & Herzegovina. It is a surprise that it is often less travelled than its neighbours, but that also means that it is typically less crowded. This also means that you will be able to travel around without seeing the full effects that tourism has on the society. You can expect genuine, unforgettable experiences. 
Even though this post has a recommended itinerary for a road trip in Bosnia-Herzegovina, we recommend not making concrete plans but having a rough idea where you want to start and end. Enter Bosnia, go find a river and drive along it.', N'BL0001    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0012   ', N'bld2-2.png', N'Bus Da Nang to Hue
A popular transportation for tourists traveling from Da Nang to Hue. You can choose a local bus or open bus for the trip to Hue, the ticket fare is a bit difference between the two. There are many bus scheduled departing every 30 minutes to 1 hour. If you choose local bus, you might save a bit but you need to travel to the bus station by taxi or motorbike. I suggest that you book a bus ticket with a travel agency in Da Nang, they might pick you up at your hotel in Da Nang. If you are arriving to Da Nang airport and want to travel from Da Nang airport to Hue, you can also book in advance and the bus will pick you up at a place near the airport or a place you choose in city center.', N'BL0002    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0013   ', N'bld3-2.png', N'The farm still retains the wildest features, without many modern activities or games. Instead, you will have moments of relaxation in the fresh nature. When hungry, you can order food from the farm, including a grilled chicken tray served with sticky rice, boiled sweet potatoes, cucumbers, tomatoes grown right in the garden. Desserts are guava, bananas are also harvested on the spot.
In addition to swinging, visitors to Bong Lai farm (Bong Lai or meaning Elysium) can also participate in activities such as renting bicycles to explore the forest trails, riding buffaloes through streams, raising ducks, visiting farms and flower gardens, taking photos with sheep or stream bath', N'BL0003    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0014   ', N'bld4-2.png', N'Full moon night in Hoi An

In Hoi An, it seems that the moonlight shines every corner. There are no tall buildings obscured, no bright lights advertising, watching the moon in the ancient town of Hoi An extremely interesting. If you travel to Da Nang or Hoi An this occasion you should not miss the chance to immerse in the full moon night of Hoi An old town.', N'BL0004    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0015   ', N'bld5-2.png', N'What does it mean to feel safe? Does it mean that you’re 100% comfortable in your environment? Does it mean you’re not getting cat-called or harassed? Does it mean you don’t feel like you have to be on alert? Does it mean the city or country has a low violent crime rate?
Safety can be defined in so many different ways and your own cultural “norms” are going to play a major role in that.', N'BL0005    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0016   ', N'bld6-2.png', N'If you are planning to visit to Da Nang from February to May, yes, it’s the perfect choice! These months are on dry season, so it’s not too hot and really suitable for swimming, sunbathing and other outdoor activities. Also there are barely any rains in these months. The weather is dry and sunny all day, so it’s really comfortable to go out and explore the city. Hence, this is definitely the best time to visit Danang city. Also, this period of time is usually the moment when many festivals are held. In April, the city organzies an international firework competition. In June there is an arrival of a beach festival featuring plenty of water sports activities along with cooking demonstrations, parties and cultural performances of the city.', N'BL0006    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0017   ', N'bld8-2.png', N'With very little knowledge at the start of our first trip, we made a few rookie mistakes. Nothing serious but we laughed a lot at our stupidity and eventually learned how to explore Europe in our campervan like pros. A lot of information that we needed about traveling Europe in a campervan wasn’t really available online because most of the website focused on living in a van, versus traveling in one. ', N'BL0007    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0018   ', N'bld5-2.png', N'Anyway, before we share our essential tips for exploring Europe by camper van, we’d like to discuss a few things to help you decide if van-life is really for you, and if it is – then what kind of van you really need.', N'BL0008    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0019   ', N'bld7-2.png', N'Pronunciation
Like the majority of South East and East Asian languages, Vietnam is a tonal language. This means that for each syllable there are six different tones that can change the meaning of a phrase.', N'BL0009    ')
GO
INSERT [dbo].[BlogDetails] ([BlogDetailId], [Image], [News], [BlogId]) VALUES (N'BLD0020   ', N'destination-2-1.jpg', N'If you’re on this page already, then I’m sure you’re looking for something different. Maybe you’re looking to explore the lesser visited and under the radar places in Europe that you can’t easily reach by trains or buses.
The best part about travelling around Europe by campervan is that you can go literally anywhere you want. You don’t have to worry about high internal transportation costs, schedules, and connections. It makes your itinerary super flexible and as a result, an entire layer of possibility opens up for you.', N'BL0010    ')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0001    ', N'bld1-1.png', N'Bosnia Road Trip: Itinerary for Bosnia-Herzegovina [10 Days] in the Balkans', N'nuchuahukhong')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0002    ', N'bld2-1.png', N'DANANG TO HUE – BEST WAY TO TRAVEL TO HUE FROM DA NANG', N'thosanbongdem')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0003    ', N'bld3-1.png', N'EXPERIENCE “DEATH” SWING IN VIETNAM', N'chuatebongdem')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0004    ', N'bld4-1.png', N'FULL MOON NIGHT HOI AN', N'daituongnoxus')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0005    ', N'bld5-1.png', N'Why Solo Female Travel Isn’t “Safe”', N'bautroikhongem')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0006    ', N'bld6-1.png', N'BEST TIME TO VISIT DA NANG', N'yourname')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0007    ', N'bld8-1.png', N'Reunited at Once', N'whatyourname')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0008    ', N'blog3.jpg', N'Sunrise at VietoNam', N'mynameis')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0009    ', N'bld7-1.png', N'LEARN SOME VIETNAMESE WORDS AND PHRASES', N'phuongnguyen12')
GO
INSERT [dbo].[Blogs] ([BlogId], [Image], [Title], [AccountM]) VALUES (N'BL0010    ', N'bld4-2.png', N'Traveling Europe by Campervan: Our Tips for “Van Life Europe”', N'ohsowhataer')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'benbohanhphuc', N'HS0014    ', 1, N'Phuong', N'Thanh', N'8453228064', CAST(N'2022-06-01T08:30:00.000' AS DateTime), 5, 5, 890000, 1, N'phuongthanh21@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'binhminhdaysong', N'HS0001    ', 6, N'Dai', N'Nguyen', N'8450785927', CAST(N'2022-06-07T07:40:00.000' AS DateTime), 6, 8, 1000000, 1, N'dainguyenm@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'binhminhdaysong', N'HS0003    ', 14, N'Dai', N'Nguyen', N'8450785927', CAST(N'2022-06-27T08:37:00.000' AS DateTime), 7, 4, 2300000, 1, N'dainguyenm@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'caoboimiennui', N'HS0031    ', 3, N'Minh', N'Nguyen', N'8475115205', CAST(N'2022-06-03T04:45:00.000' AS DateTime), 3, 12, 500000, 1, N'nguyenminh231@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'caoboimiennui', N'HS0032    ', 11, N'Minh', N'Nguyen', N'8475115205', CAST(N'2022-06-11T09:17:00.000' AS DateTime), 3, 12, 600000, 1, N'nguyenminh231@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'danbolangman', N'HS0024    ', 2, N'Thuy', N'Minh', N'8495523068', CAST(N'2022-06-01T09:45:00.000' AS DateTime), 7, 10, 659000, 1, N'minhthuy22@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'khongcongbang', N'HS0003    ', 8, N'Linh', N'Le', N'8459866209', CAST(N'2022-06-08T09:41:00.000' AS DateTime), 2, 4, 2300000, 1, N'levanlinh@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'khongcongbang', N'HS0019    ', 16, N'Linh', N'Le', N'8459866209', CAST(N'2022-06-29T20:15:00.000' AS DateTime), 5, 8, 1600000, 1, N'levanlinh@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'motminhcodon', N'HS0002    ', 13, N'Nguyen', N'Tran', N'8459999998', CAST(N'2022-06-13T00:45:00.000' AS DateTime), 4, 2, 2000000, 1, N'nguyendaitran@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'motminhcodon', N'HS0033    ', 5, N'Nguyen', N'Tran', N'8459999998', CAST(N'2022-06-05T16:10:00.000' AS DateTime), 4, 3, 800000, 1, N'nguyendaitran@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'motnguoithu3', N'HS0004    ', 9, N'Trang', N'Tran', N'8458599955', CAST(N'2022-06-09T15:45:00.000' AS DateTime), 9, 4, 1299000, 1, N'tranthuytrang@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'motnguoithu4', N'HS0031    ', 10, N'Huong', N'Lam', N'8457744857', CAST(N'2022-06-11T00:45:00.000' AS DateTime), 9, 6, 500000, 1, N'lamhuong@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'satthudongbang', N'HS0032    ', 4, N'Hang', N'Pham', N'8459566504', CAST(N'2022-06-04T13:45:00.000' AS DateTime), 5, 2, 600000, 1, N'hangpham@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'satthudongbang', N'HS0033    ', 12, N'Hang', N'Pham', N'8459566504', CAST(N'2022-06-12T07:45:00.000' AS DateTime), 6, 15, 800000, 1, N'hangpham@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'thaisuonghasan', N'HS0002    ', 7, N'Dat', N'Kieu', N'8457155108', CAST(N'2022-06-07T20:55:00.000' AS DateTime), 6, 2, 2000000, 1, N'kieudat@gmail.com')
GO
INSERT [dbo].[Booking] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Status], [Email]) VALUES (N'thaisuonghasan', N'HS0004    ', 15, N'Dat', N'Kieu', N'8457155108', CAST(N'2022-06-28T05:29:00.000' AS DateTime), 3, 6, 1299000, 1, N'kieudat@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'benbohanhphuc', N'HS0004    ', 1, N'Phuong', N'Thanh', N'v8453228064', CAST(N'2022-06-01T08:30:00.000' AS DateTime), 5, 2, 1299000, 4, N'The rooms were clean, very comfortable, and the staff was amazing. They went over and beyond to help make our stay enjoyable. I highly recommend this hotel for anyone visiting downtown', N'phuongthanh21@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'binhminhdaysong', N'HS0059    ', 6, N'Dai', N'Nguyen', N'v8450785927', CAST(N'2022-06-07T07:40:00.000' AS DateTime), 2, 7, 600000, 5, N'The best hotel I’ve ever been privileged enough to stay at. Gorgeous building, and it only gets more breathtaking when you walk in.', N'dainguyenm@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'binhminhdaysong', N'HS0088    ', 14, N'Dai', N'Nguyen', N'v8450785927', CAST(N'2022-06-27T08:37:00.000' AS DateTime), 9, 4, 1380000, 5, N'I had booked this hotel based on the positive reviews I had read online. I must say I was not disappointed at all.', N'dainguyenm@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'caoboimiennui', N'HS0006    ', 3, N'Minh', N'Nguyen', N'v8475115205', CAST(N'2022-06-03T04:45:00.000' AS DateTime), 7, 6, 2399000, 4, N'Every staff member I encountered, from the valet to the check- in to the cleaning staff were delightful and eager to help! ', N'nguyenminh231@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'caoboimiennui', N'HS0085    ', 11, N'Minh', N'Nguyen', N'v8475115205', CAST(N'2022-06-11T09:17:00.000' AS DateTime), 3, 3, 563000, 3, N'The room was wonderful, clean, and perfect to celebrate a birthday weekend.', N'nguyenminh231@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'danbolangman', N'HS0005    ', 2, N'Thuy', N'Minh', N'v8495523068', CAST(N'2022-06-01T09:45:00.000' AS DateTime), 4, 4, 1399000, 5, N'They were extremely accommodating and allowed us to check in early at like 10am. We got to hotel super early and I didn’t wanna wait. So this was a big plus.', N'minhthuy22@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'khongcongbang', N'HS0061    ', 8, N'Linh', N'Le', N'v8459866209', CAST(N'2022-06-08T09:41:00.000' AS DateTime), 3, 2, 499000, 2, N' Excellent property and very convenient to USC activities. Front desk staff is extremely efficient, pleasant and helpful.', N'levanlinh@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'khongcongbang', N'HS0102    ', 16, N'Linh', N'Le', N'v8459866209', CAST(N'2022-06-29T20:15:00.000' AS DateTime), 3, 4, 2290000, 5, N'The staff is very passionate about their work and handle everything profes', N'levanlinh@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'motminhcodon', N'HS0058    ', 5, N'Nguyen', N'Tran', N'v8459999998', CAST(N'2022-06-05T16:10:00.000' AS DateTime), 8, 1, 3000000, 2, N'Took advantage of the downtown location to walk to dinner, check out a couple galleries, and have drinks. It was great. Service top notch as always', N'nguyendaitran@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'motminhcodon', N'HS0087    ', 13, N'Nguyen', N'Tran', N'v8459999998', CAST(N'2022-06-13T00:45:00.000' AS DateTime), 12, 8, 500000, 5, N'Will recomendet thes hotel for all persons that to travel this city', N'nguyendaitran@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'motnguoithu3', N'HS0062    ', 9, N'Trang', N'Tran', N'v8458599955', CAST(N'2022-06-09T15:45:00.000' AS DateTime), 6, 2, 399000, 4, N'Property is clean and has a fantastic old time charm.', N'tranthuytrang@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'motnguoithu4', N'HS0084    ', 10, N'Huong', N'Lam', N'v8457744857', CAST(N'2022-06-11T00:45:00.000' AS DateTime), 8, 5, 500000, 5, N'staff was incredibly helpful, and the amenities were great.', N'lamhuong@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'satthudongbang', N'HS0007    ', 4, N'Hang', N'Pham', N'v8459566504', CAST(N'2022-06-04T13:45:00.000' AS DateTime), 2, 4, 1200000, 3, N'The staff at this property are all great! They all go above and beyond to make your stay comfortable.', N'hangpham@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'satthudongbang', N'HS0086    ', 12, N'Hang', N'Pham', N'v8459566504', CAST(N'2022-06-12T07:45:00.000' AS DateTime), 7, 12, 499000, 3, N'Registration was easy. the restaurant food was very good. The manager was very friendly. we then went to our room.', N'hangpham@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'thaisuonghasan', N'HS0060    ', 7, N'Dat', N'Kieu', N'v8457155108', CAST(N'2022-06-07T20:55:00.000' AS DateTime), 12, 2, 800000, 4, N' This was on the top of the list of best stays/experiences ever. Staff was very hospitable and there for every need of mine. Thank you so much.', N'kieudat@gmail.com')
GO
INSERT [dbo].[BookingHistories] ([AccountC], [HomeStayId], [OrderNumber], [FirstName], [LastName], [Phone], [OrderTime], [BookingTime], [VisitorNumber], [Price], [Star], [Feedback], [Email]) VALUES (N'thaisuonghasan', N'HS0101    ', 15, N'Dat', N'Kieu', N'v8457155108', CAST(N'2022-06-28T05:29:00.000' AS DateTime), 7, 4, 2190000, 5, N'The location, rooms and amenities, food and hotel staff all make a great stay experience for you and deserve a 5 star rating!', N'kieudat@gmail.com')
GO
INSERT [dbo].[Categories] ([CateId], [CateName]) VALUES (N'CATID001  ', N'Biet Thu')
GO
INSERT [dbo].[Categories] ([CateId], [CateName]) VALUES (N'CATID002  ', N'Nha Rieng')
GO
INSERT [dbo].[Categories] ([CateId], [CateName]) VALUES (N'CATID003  ', N'Can Ho Chung Cu')
GO
INSERT [dbo].[Categories] ([CateId], [CateName]) VALUES (N'CATID004  ', N'Can Ho Dich Vu')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'benbohanhphuc', N'Binh Dinh', N'An Nhon', N'558 Nguyen Van Cu', N'Dap Da')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'binhminhdaysong', N'Hue', N'Nam Dong', N'91 Nguyen Truong Trinh', N'Huong Giang')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'caoboimiennui', N'Da Nang', N'Cam Le', N'81 Dinh Tien Hoang', N'Hoa An')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'danbolangman', N'Binh Dinh', N'Quy Nhon', N'2/14 Hang Bun', N'Dong Da')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'khongcongbang', N'Thanh Hoa', N'Bim Son', N'119/7 duong so 7', N'Bac son')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'motminhcodon', N'Hue', N'Huong Tra', N'106/1133 Le Duc Tho', N'Huong Phong')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'motnguoithu3', N'Buon Ma Thuot', N'Buon Ho', N'15 Nguyen Du', N'An Binh')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'motnguoithu4', N'Binh Duong', N'Ben Cat', N'47 Bui Dinh Tuy', N'Chanh Phu Hoa')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'satthudongbang', N'Da Nang', N'Hai Chau', N'198 Hoa Binh', N'Binh Thuan')
GO
INSERT [dbo].[CustomerAddresses] ([AccountC], [City], [District], [Specific], [Ward]) VALUES (N'thaisuonghasan', N'Thai Nguyen', N'Pho Yen', N'108 Le Tu Tai', N'Bac Son')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'benbohanhphuc', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'binhminhdaysong', N'meo-khoc-nhu-nguoi-12-09-40-54.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'caoboimiennui', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'danbolangman', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'khongcongbang', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'motminhcodon', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'motnguoithu3', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'motnguoithu4', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'satthudongbang', N'default_person.jpg')
GO
INSERT [dbo].[CustomerImage] ([AccountC], [Img_Avatar]) VALUES (N'thaisuonghasan', N'default_person.jpg')
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'benbohanhphuc', N'Phuong', N'    Thanh', N'phamsangvd1@gmail.com', N'845322064', 1)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'binhminhdaysong', N'Dai', N'      Nguyen', N'dainguyenm@gmail.com', N'845785927', 1)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'caoboimiennui', N'Minh', N'Nguyen', N'nguyenminh231@gmail.com', N'847515205', 0)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'danbolangman', N'Thuum', N' Minh', N'minhthuy22@gmail.com', N'849523068', 1)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'khongcongbang', N'Linh', N'Le', N'levanlinh@gmail.com', N'845986209', 1)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'motminhcodon', N'Nguyen', N'Tran', N'nguyendaitran@gmail.com', N'845999998', 1)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'motnguoithu3', N'Trang', N'Tran', N'tranthuytrang@gmail.com', N'845899955', 1)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'motnguoithu4', N'Huong', N'Lam', N'lamhuong@gmail.com', N'845774857', 0)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'satthudongbang', N'Hang', N'Pham', N'hangpham@gmail.com', N'845956504', 0)
GO
INSERT [dbo].[Customers] ([AccountC], [FirstName], [LastName], [Email], [Phone], [Status]) VALUES (N'thaisuonghasan', N'Dat', N'Kieu', N'kieudat@gmail.com', N'845715108', 1)
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0001    ', N'All basic Extension, Free bicycles, Free breakfast, Golf course')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0002    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0003    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0004    ', N'All basic Extension, Makeup table, Kitchen and Cooking materials')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0005    ', N'All basic Extension, Barcony, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0006    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0007    ', N'All basic Extension, A Garden Room ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0008    ', N'All basic Extension, Full Kitchen utensils, Private entrance')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0009    ', N'All basic Extension, Item Suitable for baby')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0010    ', N'All basic Extension, Outdoor Bar, BBQ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0011    ', N'All basic Extension, Glass Freestanding bathrooom')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0012    ', N'All basic Extension, Basic cooking seasoning, Gas cooker, BBQ grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0013    ', N'All basic Extension, Anti-theft lock, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0014    ', N'All basic Extension, Private Courtyard/Garden, Private swimming pool')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0015    ', N'All basic Extension, Massage chair, Tantra chair')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0016    ', N'All basic Extension, Smart home, Smart TV/Internet TV, Karaoke')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0017    ', N'All basic Extension, Karaoke, Loudspeaker, Private garden')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0018    ', N'All basic Extension, Smart home, Smart TV/Internet TV, Xbox, Playstation')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0019    ', N'All basic Extension, Billiard, Ping pong, Tennis course, ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0020    ', N'All basic Extension, Infinity pool, BBQ area with dining table')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0021    ', N'All basic Extension, Laundry, Near the museum, Free breakfast, Vehicle rental')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0022    ', N'All basic Extension, Souvenir store, Restaurant, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0023    ', N'All basic Extension, Hairdressers, Spa, Sauna, Gym')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0024    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0025    ', N'All basic Extension, Reception 24/24, View of the forest, Fishing')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0026    ', N'All basic Extension, Indoor car park, Elevator')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0027    ', N'All basic Extension, BBQ area with dining table, Children''s play area, Infinity pool')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0028    ', N'All basic Extension, Smoking area, Bay view, Tennis course, Outdoor Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0029    ', N'All basic Extension, River View, Garden, Outdoor pool, Restaurant')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0030    ', N'All basic Extension, City View, Karaoke, Playstation, Massage chair, Coffee maker')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0031    ', N'All basic Extension, Huge Sofa, Extra cushion, Extra cushion, Freestanding Shower')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0032    ', N'All basic Extension, View of mountains and hills, Tea Pot, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0033    ', N'All basic Extension, Health Care & Beauty, Highland Coffee, Youtube')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0034    ', N'All basic Extension, Karaoke, Loudspeaker, Private garden')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0035    ', N'All basic Extension, Smart home, Smart TV/Internet TV, Xbox, Playstation')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0036    ', N'All basic Extension, Billiard, Ping pong, Tennis course, ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0037    ', N'All basic Extension, Infinity pool, BBQ area with dining table')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0038    ', N'All basic Extension, Laundry, Near the museum, Free breakfast, Vehicle rental')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0039    ', N'All basic Extension, Souvenir store, Restaurant, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0040    ', N'All basic Extension, Billiard, Ping pong, Tennis course, ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0041    ', N'All basic Extension, Infinity pool, BBQ area with dining table')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0042    ', N'All basic Extension, Laundry, Near the museum, Free breakfast, Vehicle rental')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0043    ', N'All basic Extension, Souvenir store, Restaurant, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0044    ', N'All basic Extension, Hairdressers, Spa, Sauna, Gym')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0045    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0046    ', N'All basic Extension, Reception 24/24, View of the forest, Fishing')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0047    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0048    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0049    ', N'All basic Extension, Makeup table, Kitchen and Cooking materials')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0050    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0051    ', N'All basic Extension, Reception 24/24, View of the forest, Fishing')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0052    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0053    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0054    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0055    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0056    ', N'All basic Extension, Makeup table, Kitchen and Cooking materials')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0057    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0058    ', N'All basic Extension, Reception 24/24, View of the forest, Fishing')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0059    ', N'All basic Extension, Infinity pool, BBQ area with dining table')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0060    ', N'All basic Extension, Laundry, Near the museum, Free breakfast, Vehicle rental')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0061    ', N'All basic Extension, Souvenir store, Restaurant, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0062    ', N'All basic Extension, Hairdressers, Spa, Sauna, Gym')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0063    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0064    ', N'All basic Extension, Reception 24/24, View of the forest, Fishing')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0065    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0066    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0067    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0068    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0069    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0070    ', N'All basic Extension, Makeup table, Kitchen and Cooking materials')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0071    ', N'All basic Extension, Barcony, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0072    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0073    ', N'All basic Extension, Barcony, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0074    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0075    ', N'All basic Extension, A Garden Room ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0076    ', N'All basic Extension, Full Kitchen utensils, Private entrance')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0077    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0078    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0079    ', N'All basic Extension, Makeup table, Kitchen and Cooking materials')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0080    ', N'All basic Extension, Barcony, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0081    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0082    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0083    ', N'All basic Extension, Barcony, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0084    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0085    ', N'All basic Extension, A Garden Room ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0086    ', N'All basic Extension, Full Kitchen utensils, Private entrance')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0087    ', N'All basic Extension, Souvenir store, Restaurant, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0088    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0089    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0090    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0091    ', N'All basic Extension, Makeup table, Kitchen and Cooking materials')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0092    ', N'All basic Extension, Indoor Swimming pool, Billard, BQQ Grill')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0093    ', N'All basic Extension, Health Care & Beauty, Highland Coffee')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0094    ', N'All basic Extension, Barcony, Safe vault')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0095    ', N'All basic Extension, Anti-thief lock, Safe vault, Fire siren')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0096    ', N'All basic Extension, A Garden Room ')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0097    ', N'All basic Extension, Full Kitchen utensils, Private entrance')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0098    ', N'All basic Extension, Hairdressers, Spa, Sauna, Gym')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0099    ', N'All basic Extension, Conference room, Coffee shop, Bar')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0100    ', N'All basic Extension, Reception 24/24, View of the forest, Fishing')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0101    ', N'All basic Extension, Indoor car park, Elevator')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0102    ', N'All basic Extension, BBQ area with dining table, Children''s play area, Infinity pool')
GO
INSERT [dbo].[Extensions] ([HomeStayId], [ListExtensions]) VALUES (N'HS0103    ', N'All basic Extension, Smoking area, Bay view, Tennis course, Outdoor Bar')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0001    ', N'Ha Noi', N'Long Bien', N'558 Nguyen Van Cu', N'Gia Thuy')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0002    ', N'Ha Noi', N'Hoan Kiem', N'2/14 Hang Bun', N'Phuc Tan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0003    ', N'Quang Ninh', N'Ha Long', N'81 Dinh Tien Hoang', N'Ha Khanh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0004    ', N'Ha Noi', N'Ba Dinh', N'198 Hoa Binh', N'Truc Bach')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0005    ', N'Ho Chi Minh', N'Quan 1', N'106/1133 Le Duc Tho', N'Tan Dinh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0006    ', N'Ha Noi', N'Bac Tu Liem', N'91 Nguyen Truong Trinh', N'Thuong Cat')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0007    ', N'Bac Ninh ', N'Quan 7', N'108 Le Tu Tai', N'Ninh Xa')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0008    ', N'Ha Noi', N'Cau Giay', N'119/7 duong so 7', N'Nghia Tan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0009    ', N'Da Nang', N'Lien Chieu', N'15 Nguyen Du', N'Hiep Bac')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0010    ', N'Quang Ninh', N'Ha Long', N'47 Bui Dinh Tuy', N'Ha Phong')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0011    ', N'Ho Chi Minh', N'Go vap', N'456/31 Cao Thang', N'Phuong 15')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0012    ', N'Quang Ninh', N'Ha Long', N'6 Nguyen Trung Truc', N'Cao Xanh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0013    ', N'Da Nang', N'Ngu Hanh Son', N'167 Su Van Hanh', N'Khue My')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0014    ', N'Ca Mau ', N'Quan Thanh Khe', N'20 To Hien Thanh', N'Vu Ninh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0015    ', N'Ha Noi', N'Dong Da', N'411/5 duong Cach mang Thang 8', N'Cat Linh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0016    ', N'Cao Bang', N'Son Tra', N'292 Ba Hat', N'Dinh Bang')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0017    ', N'Ho Chi Minh', N'Quan 1', N'70 Huynh Khuong An', N'Ben Thanh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0018    ', N'Cam Pha', N'Thanh Truong', N'202 Nguyen Tieu La', N'Dong Ngan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0019    ', N'Ho Chi Minh', N'Quan 12', N'163 To Hien Thành', N'Thanh Loc')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0020    ', N'Da Lat', N'Tan Thanh', N'59 Dinh Tien Hoang', N'Huong Mac')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0021    ', N'Dien Bien Phu', N'An Dong', N'256/41 Duong Quang Nam', N'Tan Hong')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0022    ', N'Ho Chi Minh', N'Binh Thanh', N'10 Au Duong Lan', N'Phuong 13')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0023    ', N'Ca Mau ', N'Phu Vang', N'25 Nguyen An Ninh', N'Dai Phuc')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0024    ', N'Ho Chi Minh', N'Tan Binh', N'43d Ho Van Hue', N'Phuong 02')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0025    ', N'Ha Giang', N'Cu Jut', N'Duong so 13', N'Dong Phuoc')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0026    ', N'Ha Noi', N'Ha Dong', N'44 Duong so 2', N'Nguyen Trai')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0027    ', N'Ha Tinh', N'Dak Mil', N'277/1 Nguyen Van Cung', N'Dong Thach')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0028    ', N'Quang Ninh', N'Ha Long', N'40 Phu My', N'Ha Tu')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0029    ', N'Ho Chi Minh', N'Tan Binh', N'891 Nguyen Kiem', N'Phuong 10')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0030    ', N'Ha Noi', N'Hai Ba Trung', N'566 Nguyen Thai Son', N'Nguyen Du')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0031    ', N'Hoa Binh', N'Ha Giang', N'466 Le Quang Dinh', N'Tan Hoa')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0032    ', N'Hoi An', N'Hoang Su Phi', N'330 Le Hong Phong', N'Tan Phu Thach')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0033    ', N'Hue', N'Meo Vac', N'220 Hoang Hoa Tham', N'Tan Thuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0034    ', N'Hung Yen', N'Quan Ba', N'430 Dien Bien Phu', N'Thach Xuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0035    ', N'Kon Tum', N'Quang Binh', N'16 Hoa Hung', N'Tan Thuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0036    ', N'Ha Noi', N'Hoang Mai', N'114 Bui Dinh Tuy', N'Thanh Tri')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0037    ', N'Quang Ninh', N'Ha Long', N'387 Chu Van An', N'Ha Trung')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0038    ', N'Lao Cai', N'Yen Minh', N'470 Dien Bien Phu', N'Nga Bay')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0039    ', N'Ha Noi', N'Long Bien', N'50 Truong Son', N'Gia Thuy')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0040    ', N'Ho Chi Minh', N'Tan Phu ', N'72 Ngo Quyen', N'Tan Thanh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0041    ', N'Quang Ninh', N'Ha Long', N'80/12/2 Duong Quang Ham', N'Bai Chay')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0042    ', N'Ho Chi Minh', N'Phu Nhuan', N'481 Ba Dinh', N'Phuong 04')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0043    ', N'Nha Trang', N'Huong Khe', N'133 Xo Viet Nghe Tinh', N'Dong Hai 2')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0044    ', N'Ha Noi', N'Tay Ho', N'94 Pham Van Dong', N'Nhat Tan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0045    ', N'Ho Chi Minh', N'Thu Duc', N'480/31/7/9 Binh Quoi', N'Linh Xuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0046    ', N'Phan Thiet', N'Loc Ha', N'80/28/69 Duong Quang Ham', N'Trang Cat')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0047    ', N'Ha Noi', N'Thanh Xuan', N'Vo Liem Son', N'Thuong Dinh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0048    ', N'Quang Ninh', N'Ha Long', N'319/14 Binh Quoi', N'Hung Thang')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0049    ', N'Ha Noi', N'Thach That', N'217 No Trang Long', N'Thach That')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0050    ', N'Quang Ngai', N'Dong Hai', N'51 Ho Thi Ky', N'Minh Khai')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0051    ', N'Quy Nhon', N'Gia Rai', N'222 Ba Hat', N'Hong Bang')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0052    ', N'Ha Noi', N'Ba Dinh', N'378 Dien Bien Phu', N'Lieu Giai')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0053    ', N'Ho Chi Minh', N'Quan 3', N'Duong So 57', N'Vo Thi Sau')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0054    ', N'Quang Ninh', N'Ha Long', N'369/25 Ly Thai To', N'Gieng Day')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0055    ', N'Ho Chi Minh', N'Quan 10', N'370 Hoa Hao', N'Phuong 11')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0056    ', N'Ha Noi', N'Tay Ho', N'32 Bui Dinh Tuy', N'Dap Cau')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0057    ', N'Da Nang', N'Son Tra', N'327/4 Quang Trung', N'Phuoc My')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0058    ', N'Quang Ninh', N'Ha Long', N'259 Duong So 6', N'Yet Kieu')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0059    ', N'Ha Long', N'Quan 1', N'480 Binh Quoi', N'Khuc Xuyen')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0060    ', N'Da Nang', N'Thanh Khe', N'116/63 To Hien Thành', N'Xuan Ha')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0061    ', N'Ha Noi', N'Hoan Kiem', N'92/21 Xo Viet Nghe Tinh', N'Hang Ma')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0062    ', N'Quang Ninh', N'Ha Long', N'124/35 Xo Viet Nghe Tinh', N'Tran Hung Dao')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0063    ', N'Thai Nguyen', N'Quan 6', N'132/41 Nguyen Huu Canh', N'Suoi Hoa')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0064    ', N'Thanh Hoa', N'Quan 7', N'207/19/18 Bach Dang', N'Thi Cau')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0065    ', N'Ho Chi Minh', N'Quan 8', N'95 Dinh Tien Hoang', N'Phuong 09')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0066    ', N'Tra Vinh', N'Quan 9', N'291/13/16 Nguyen Xi', N'Van An')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0067    ', N'Tuy Hua', N'Quan 2', N'739/2 Xo Viet Nghe Tinh', N'Vo Cuong')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0068    ', N'Tuyen Quang', N'Quan Ngu Hanh Son', N'84 Vu Tung', N'Vu Ninh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0069    ', N'Uong Bi', N'Quan Thanh Khe', N'135/1 Nguyen Huu Canh', N'Chau Khe')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0070    ', N'Da Nang', N'Hai Chau', N'62/18 Dinh Bo Linh', N'Thanh Binh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0071    ', N'Quang Ninh', N'Ha Long', N'590 Ba Hat', N'Hong Hai')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0072    ', N'Vinh', N'Hai Chau', N'8 Vu Duy Ninh', N'Dong Ngan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0073    ', N'Da Nang', N'Son Tra', N'11 Ngo Duc Ke', N'Tho Quang')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0074    ', N'Vinh Phuc', N'Muong Thanh', N'68 Dong Nai', N'Huong Mac')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0075    ', N'Vung Tau', N'Thanh Truong', N'578 Le Quang Dinh', N'Tan Hong')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0076    ', N'Ha Long', N'Him lam', N'133/36/89 Quang Trung', N'Trang Ha')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0077    ', N'Ho Chi Minh', N'Quan 5', N'Vo Chi Cong', N'Phuong 07')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0078    ', N'Da Nang', N'Cam Le', N'499/6/81 Quang Trung', N'Hoa Phat')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0079    ', N'Phu Quoc', N'Thuy Xuan', N'Nguyen Thi Nhat', N'Dong Phuoc')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0080    ', N'Quang Ninh', N'Ha Long', N'136 Nguyen Thuong Hien', N'Bach Dang')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0081    ', N'Ha Noi', N'Thanh Xuan', N'118 Duong Truc', N'Dong Thach')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0082    ', N'Ho Chi Minh', N'Thu Duc', N'482/10/26 No Trang Long', N'Tam Binh')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0083    ', N'Quang Ninh', N'Ha Long', N'327/26 Quang Trung', N'Tuan Chau')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0084    ', N'Quang Ninh', N'Ha Long', N'71 Huynh Khuong An', N'Hong Ha')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0085    ', N'Da Nang', N'Hai Chau', N'86 Duong So 7', N'Thuan Phuoc')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0086    ', N'Da Nang', N'Thanh Khe', N'178 Ton Phuoc', N'Tam Thuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0087    ', N'Vinh', N'Dong Van', N'92/131 Xo Viet Nghe Tinh', N'Tan Thuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0088    ', N'Phu Ly', N'Ha Giang', N'468/32 Nguyen Tri Phuong', N'Thach Xuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0089    ', N'Phuc Yen', N'Hoang Su Phi', N'12 Hoàng Hoa Tham', N'Tan Thuan')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0090    ', N'Phan Rang - Thap Cham', N'Meo Vac', N'458 Nhat Tao', N'Long My')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0091    ', N'Ninh Binh', N'Quan Ba', N'275/75/44 Quang Trung', N'Chau Thanh A')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0092    ', N'Soc Trang', N'Quang Binh', N'64 Truong Sa', N'Nga Bay')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0093    ', N'Ca Mau ', N'Vi Xuyen', N'phan chu trinh', N'Cat Bi')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0094    ', N'Tay Ninh', N'Xin Man', N'195 Dien Bien Phu', N'Dang Hai')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0095    ', N'Thanh Hoa', N'Yen Minh', N'465/30 Nguyen Van Cung', N'Dang Lam')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0096    ', N'Ben Tre', N'Cam Xuyen', N'69 Duong Truc', N'Dong Hai 3')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0097    ', N'Uong Bi', N'Can Loc', N'129 Dao Duy Tu', N'Dong Hai 4')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0098    ', N'Quang Ninh', N'Ha Long', N'330/6 Le Hong Phong', N'Dai Yen')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0099    ', N'Quang Ninh', N'Ha Long', N'441/35 Dien Bien Phu', N'Viet Hung')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0100    ', N'Dien  Bien Phu', N'Huong Khe', N'10 Duong So 7', N'Trang Cat')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0101    ', N'Yen Bai', N'Huong Son', N'73 Nguyen Thuong Hien', N'Ha Ly')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0102    ', N'Cam Pha', N'Ky Anh', N'54 Yen Do', N'Hoang Van Thu')
GO
INSERT [dbo].[HomeStayAddressses] ([HomeStayId], [City], [District], [Specific], [Ward]) VALUES (N'HS0103    ', N'Sam Son', N'Loc Ha', N'128 Hoa Hung', N'Hung Vuong')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0001    ', 1, 2, 2, 2, 2, CAST(N'00:00:00' AS Time), CAST(N'16:00:00' AS Time), 1000000, N'HomeStay is designed in Tropical style (Tropical style) is an interior design style inspired by tropical lands, famous landscapes such as Hawaii, Bali, Fiji, Caribbean,… This restaurant often uses motifs of palm leaves, coconut leaves and has a special preference for green color,... giving customers a quiet, peaceful, comfortable, relaxing atmosphere, close to nature. You just need to immerse yourself in the strange floral scents and the melodious ocean waves, all the rest let us do it for you.', 100000, N'https://www.youtube.com/watch?v=PlaxSMFe3_E')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0002    ', 2, 2, 1, 2, 1, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2000000, N'All the HomeStay space is for you, feel it and give me your opinions and feelings about your HomeStay in the Review of the newly built HomeStay with an area of 400 m2 5 bedrooms 3 floors, equipped with Private bathroom, fully equipped kitchen. A lovely living room and a perfect terrace for any kind of party (BBQ) The swimming pool on the ground floor right at the entrance to HomeStay is beautifully designed, luxurious, spacious, with a smart filter system that will bring You feel relaxed while swimming. The rooftop is equipped with a BBQ charcoal grill and tables and chairs to organize all parties.', 100000, N'https://www.youtube.com/watch?v=fRZifCo1KVE')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0003    ', 3, 3, 2, 2, 2, CAST(N'01:00:00' AS Time), CAST(N'18:00:00' AS Time), 2300000, N'Do HomeStays with stereotypical designs make you bored? Forget them for a while. Whether you are looking for a place for your vacation or just to linger for a few days, you need a getaway that is comfortable, different and private enough. This is the place for you to sleep in peace and wake up in the warm sunshine.', 100000, N'https://www.youtube.com/watch?v=l3dyAhqkHYg')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0004    ', 3, 1, 1, 2, 2, CAST(N'01:30:00' AS Time), CAST(N'19:00:00' AS Time), 1299000, N'Our HomeStay is designe❤d in a modern open space with lots of trees. There is a balcony with sea and city views. Fully equipped with high-class facilities', 200000, N'https://www.youtube.com/watch?v=4FkeX_xw16c')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0005    ', 3, 2, 2, 2, 2, CAST(N'02:00:00' AS Time), CAST(N'20:00:00' AS Time), 1399000, N'Our HomeStay is located near the sea, still in the heart of the city. Convenient to eat and visit the city, bars, cafes but still convenient to swim in the afternoon. As a 1980s-style townhouse, this homestay is inlaid with precious wood throughout the ceiling and walls. The interior is in the regal style of a typical townhouse (adjacent villa) in the Central region at that time.', 300000, N'https://www.youtube.com/watch?v=4FkeX_xw16c')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0006    ', 2, 2, 1, 2, 3, CAST(N'02:30:00' AS Time), CAST(N'21:00:00' AS Time), 2399000, N'Premium HoemStay for families · 65 m2 including 2 bathrooms · 2 beds · 2 bedrooms · 4 guests (maximum 5 guests). Designed in Japanese style - Modern and luxurious with full high-class facilities. Located right in the best location, near the beautiful My Khe beach and near attractions such as Asia Park, Sun Wheel, Reversal House, Marble Mountains, Chicken Church, Fire-breathing Dragon Bridge , Han River ...', 350000, N'https://www.youtube.com/watch?v=ub9nfM_X1lE')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0007    ', 2, 3, 1, 3, 2, CAST(N'03:00:00' AS Time), CAST(N'22:00:00' AS Time), 1200000, N'Our HomeStay has a total of 8 floors, including 32 1-bedroom and 2-bedroom apartments with the highlight of a very unique design, including green trees covering the house along with attention to detail in each. The apartment is quiet and fresh. Each apartment has all the necessary equipment, and a spacious kitchen, a balcony covered with green trees, is like being immersed in a miniature green forest.', 349000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0008    ', 1, 2, 2, 3, 2, CAST(N'03:30:00' AS Time), CAST(N'23:00:00' AS Time), 3000000, N'There are many seafoo❤d restaurants near the beach. Our side has a service of renting motorbikes, cars, transporting guests to tourist attractions around with reasonable prices. It is very easy to move from the accommodation. Only 100m to Blue Whale Park. Go to Dragon Bridge 3.5Km. Go to Con Market 4.5Km.', 359000, N'https://www.youtube.com/watch?v=6tHph-sJCtE')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0009    ', 2, 3, 2, 3, 1, CAST(N'04:00:00' AS Time), CAST(N'23:00:00' AS Time), 3500000, N'This apartment is on the 【34th floor】 of a high apartment building with a view of the beach from Balcony and the best location in Danang city because it is just 60 meters away from one of the most beautiful beaches on the planet, My Khe, which gives you a stunning and breath-taking Sea view, Sky view and City view every morning when you wake up.', 310000, N'https://www.youtube.com/watch?v=FXRzzET6Qrg')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0010    ', 2, 2, 3, 3, 1, CAST(N'04:40:00' AS Time), CAST(N'16:30:00' AS Time), 3400000, N'HomeStay from the hot red Hong Kong style, the professional Japanese room, the elegant Mediterranean Persian Room, or the Nest Bird room equipped with a giant Bird Cage that can put couples on a round bed, or get lost into a tropical forest right in the room with the Luxury Tropical room... etc.', 50000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0011    ', 1, 3, 3, 3, 1, CAST(N'05:00:00' AS Time), CAST(N'17:30:00' AS Time), 2599000, N'Our HomeStay interior design modern, minimalist, warm like at home. There is an elevator, a large and airy balcony with green space of hanging gardens and trees outside. Our accommodation is located in a convenient location, close to the center but still ensures quiet for you to rest. 150m from Han River, 01km from My Khe beach, 500m from night street, near Vinmart +, Cafe restaurant, milk payment on the ground floor.', 60000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0012    ', 3, 2, 3, 1, 1, CAST(N'06:00:00' AS Time), CAST(N'15:00:00' AS Time), 1399000, N'2 common spaces: Living room + kitchen (full option of seasoning tools). 5 bedrooms, 9 King Size beds + extra mattress + 4 nice clean WCs. There are many virtual living corners that are comfortable to relax and have a beautiful shimmering image. Immerse yourself in a 40 square meter Moroccan outdoor swimming pool. Best to do Herogasm', 40000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0013    ', 2, 3, 2, 1, 1, CAST(N'07:00:00' AS Time), CAST(N'16:00:00' AS Time), 2399000, N'OurHomeStay is a whole house pool villa with 6 bedrooms, 6 beds and many private mattresses, with private self-contained toilets in each room. Lavies House 11 villa near Back Beach. Full cooking utensils such as gas stove, induction cooker, brazier, cups, ....There is parking for guests. Besides, I am also an extremely friendly and laid-back person. Therefore, do not hesitate to share with us what you are wondering or the difficulties you encounter while here. We also always look forward to exploring with you many of the best places here. So what are you waiting for, now plan to enjoy great moments together.', 58000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0014    ', 1, 2, 1, 1, 1, CAST(N'08:00:00' AS Time), CAST(N'17:30:00' AS Time), 890000, N'The HomeStay features wooden floors, a fully equipped kitchen with a fridge, a flat-screen cable TV and a private bathroom with shower and a hairdryer. The aparthotel is 5 km from White Palace and 6 km from Christ the King. The nearest airport is Tan Son Nhat International Airport, 107 km away.', 59000, N'https://www.youtube.com/watch?v=ufA8VBgSwY4')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0015    ', 3, 3, 3, 1, 3, CAST(N'09:00:00' AS Time), CAST(N'18:30:00' AS Time), 990000, N'Here are still warm sunny days, clear blue sky,❤ Away from the hustle and bustle of the other city and find yourself a quiet place to rest for a light and relaxed spirit... Air-conditioned bedroom, wc, hot and cold water, With full stove, oven, dining table, dishes and pans and basic kitchen tools and spices, you will organize a cozy BBQ party and have fun right at the homestay''s premises.', 69000, N'https://www.youtube.com/watch?v=VA4aYGQ50nw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0016    ', 3, 2, 2, 1, 1, CAST(N'10:00:00' AS Time), CAST(N'19:30:00' AS Time), 1599000, N'Our HomeStay is located in the city center, very close to the bus stop (5 minutes walk), market (about 800m) and there are many food shops nearby. There are many famous places nearby such as Back Beach (about 1.5km), Bai Truoc Beach (about 2km), Seafood Night Market (about 2km), Jesus statue, ... Our house near Vinmart, Familymart, pharmacy and about 250m to Lotteria and a lot of famous local food nearby.', 79000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0017    ', 2, 3, 3, 2, 2, CAST(N'11:00:00' AS Time), CAST(N'20:30:00' AS Time), 2399000, N'In the morning, when you wake up, pull the curtain, in front of you is an airy and extremely fresh space, the refreshment and peace gradually takes place for the tiring and stressful working days. That''s why when you leave, you will always remember. In the afternoon, take a dip in the pool and drink some juice. Enjoy luxurious leisure time. At night, the lights are on, go to the market with them, buy some shrimp and snails, cook and fry, organize a BBQ party right in the garden, it''s delicious, nutritious, cheap and so much fun. That''s why many of you told me that, coming to Lamer, you can''t go anywhere all day.', 89000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0018    ', 1, 2, 2, 1, 1, CAST(N'12:00:00' AS Time), CAST(N'21:30:00' AS Time), 2499000, N'The accommodation (85m2) includes 1 living room, 2 bedrooms, 1 kitchen, 2 toilets. Ideal choice for groups of friends, couples and families to stay in the city of Homestay on a high floor, sea view, clean and cool. Going far but still feeling at home. You can still buy fresh seafood and process it to your liking. This air-conditioned apartment has 2 bedrooms, a flat-screen TV and a kitchen with a fridge and a stovetop.', 99000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0019    ', 2, 3, 3, 2, 3, CAST(N'05:30:00' AS Time), CAST(N'22:30:00' AS Time), 1600000, N'Our HomeStay is located in a densely populated area, with a swimming pool of 100m3 and a well-groomed garden that will satisfy fastidious customers. There are 02 balconies ( 1 swimming pool direction , 1 mountain view ) . Fully equipped for you to enjoy as your home. With white, yellow, and gray tonle design as the main colors, the house is very clean, eye-catching and not fussy. The original view of Seo Phi is extremely good. Will make the check-in point for your vacation more perfect. The stupid team asked and then helped 24/7.', 89000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0020    ', 2, 2, 3, 1, 1, CAST(N'06:30:00' AS Time), CAST(N'23:30:00' AS Time), 3599000, N'Our HomeStay is one of the apartments that many tourists know in recent years because it has hundreds of apartments for tourists to rent short-term. With a convenient geographical location, only 100m from Back Beach and 1500m from Front Beach on Hoang Hoa Tham Street, is the busiest area of the city.', 79000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0021    ', 2, 2, 2, 1, 2, CAST(N'07:30:00' AS Time), CAST(N'16:00:00' AS Time), 4000000, N'HomeStay is equipped with air conditioning, microwave, separate kitchen for each room, refrigerator, kettle, bidet, hairdryer and work desk. At the hotel rooms are equipped with wardrobes, flat-screen TVs and separate bathrooms. All rooms have windows and views of the street and park, garden. Guests can rent motorbikes and chauffeur-driven cars at the property.', 300000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0022    ', 1, 3, 2, 1, 1, CAST(N'08:30:00' AS Time), CAST(N'17:00:00' AS Time), 699000, N'Our HomeStay is the most favored apartment. Tourists love us by its delicate design with Indochinese breath. The interior blends old Saigon identity with French romantic neoclassical style, nostalgic with modern. So that when entering, visitors are both satisfied in the nostalgic space and contentedly relaxing on the soft bed. Bare integrates aesthetics, story and comfort in every room. When visitors return to bare, the feeling of comfort is like coming home.', 49000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0023    ', 1, 2, 2, 2, 3, CAST(N'09:30:00' AS Time), CAST(N'18:00:00' AS Time), 799000, N'Our homestay is located at the intersection between Q1 and Q4, next to Khanh Hoi and Calmette bridges. The house has full facilities such as TV with Internet connection and Netflix, a fully equipped kitchen for you to cook basic meals, motorbike parking right on the ground floor. View of the room directly overlooking Landmark 81, the lights on at night are very chill. At our house, it only takes 5-10 minutes to walk to Bitexco, Nguyen Hue pedestrian street, Ho Chi Minh museum, city Fine Arts museum. Especially from Khanh Hoi Bridge, people can also watch the sunset on Nha Rong Wharf, or visit Bach Dang Wharf to cruise the Saigon River by river bus.', 50000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0024    ', 1, 3, 1, 2, 2, CAST(N'10:30:00' AS Time), CAST(N'18:30:00' AS Time), 659000, N'Our HomeStay ❤ SAIGON ROYAL is located in a high-class building, SAIGON ROYAL. Considered as the best apartment in the heart of Saigon with modern design and amenities just like its name "Royal". Beautiful view plus modern decor is a highlight of the room, This is one of our favorite apartments that you should try once. We have a kitchen full of cooking utensils and a cute little washing machine. HomeStay is close to the city center. Around supermarkets, restaurants and laundromats. Convenient location to famous tourist attractions and attractions: Notre dame Cathedral, Ben Thanh Market, Bui Vien Street, Nguyen Hue walking street...', 75000, N'https://www.youtube.com/watch?v=1dVQMUTFNmk')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0025    ', 1, 3, 2, 3, 1, CAST(N'11:30:00' AS Time), CAST(N'19:00:00' AS Time), 789000, N'The apartment is 35m2, 1 large bed, suitable for 2 people', 65000, N'https://www.youtube.com/watch?v=FXRzzET6Qrg')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0026    ', 2, 2, 3, 2, 2, CAST(N'00:00:00' AS Time), CAST(N'16:00:00' AS Time), 970000, N'Enjoy buffet breakfast for 2 people', 55000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0027    ', 2, 2, 2, 2, 3, CAST(N'00:30:00' AS Time), CAST(N'17:00:00' AS Time), 989000, N'The room is completely new furnished, with a flat screen TV with internet connection.', 45000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0028    ', 2, 3, 1, 2, 2, CAST(N'01:00:00' AS Time), CAST(N'18:00:00' AS Time), 1340000, N'Sofa, kitchen with full cooking utensils.', 35000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0029    ', 3, 2, 2, 1, 1, CAST(N'01:30:00' AS Time), CAST(N'19:00:00' AS Time), 599000, N'Balcony overlooking the city', 65000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0030    ', 3, 3, 3, 2, 2, CAST(N'02:00:00' AS Time), CAST(N'20:00:00' AS Time), 400000, N'100% of the apartments have a large bathtub with hot water, a discreet separate toilet. Shampoos and shower gels ordered with 5-star standards are very safe for customers to use', 85000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0031    ', 3, 2, 2, 2, 3, CAST(N'02:30:00' AS Time), CAST(N'21:00:00' AS Time), 500000, N'There are safes, bathrobes, clothes hangers in the room. You also get free laundry while staying at The Bloom', 95000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0032    ', 2, 2, 1, 1, 2, CAST(N'03:00:00' AS Time), CAST(N'22:00:00' AS Time), 600000, N'Utilities in the building also include Jacuzzi pool, gym, golf practice area, coffee shop, free motorbike parking.', 79000, N'https://www.youtube.com/watch?v=ufA8VBgSwY4')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0033    ', 1, 3, 1, 2, 3, CAST(N'03:30:00' AS Time), CAST(N'23:00:00' AS Time), 800000, N'Hygiene factors and neat and tidy space are always put on top. A clean house is always disinfected, cleaned with hot water and always prepared hand sanitizer and alcohol for you to be ready to go in and out of the house safely.', 78000, N'https://www.youtube.com/watch?v=VA4aYGQ50nw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0034    ', 2, 2, 2, 3, 2, CAST(N'04:00:00' AS Time), CAST(N'23:00:00' AS Time), 499000, N'My family''s old 4-level house was paved with pretty little bricks; that''s where my friends and I roll around reading, playing volleyball, playing tug-of-war and even falling asleep when we''re tired. The floor surface cools down over the years, but it was not until later that I knew its name was "cotton tile". Such simple things you will easily find in Au House. Rooms here are numbered by year such as 1980, 1981, 1982... years of the decades before this architectural feature accompanies each of our childhoods. It''s also really nice when the holiday is as close and comfortable as returning to the old self. We invite you to visit Au house once...', 52000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0035    ', 3, 3, 3, 2, 3, CAST(N'04:40:00' AS Time), CAST(N'16:30:00' AS Time), 399000, N'Located 800m from the central town, you can completely walk to the town to play and then return. Here there is enough silence, enough open space for groups, couples, families to enjoy Tam Dao. No hustle and bustle like in town, you can order rice, BBQ, eat hot pot at the area with a beautiful dining space. In the evening, gather around the campfire, singing and confiding. With the desire to design is not only a resting place, you have some working space for those of you who bring some work here or need space to create, observe, and reflect.', 46000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0036    ', 2, 2, 2, 1, 2, CAST(N'05:00:00' AS Time), CAST(N'17:30:00' AS Time), 500000, N'Our HomeStay has a glass view overlooking the mountains, valleys and Vinh Yen city! A small note and the Moon House has a high view, the rooms are built on the hillside, so traveling will be tiring, if you bring heavy things, you can ask your bellman to help bring things up to the room, if your group If you have weak health or have a small baby, pregnant women, please note before booking a room. In the room, there are pillows and blankets, personal hygiene items (towels, shampoo, shower gel, toothbrushes), clothes racks and racks, aromatherapy lamps, dryers, super speed kettles, types of water (mineral water, soft drink, beer) and snacks (water and snacks in the room charged according to the product you use)', 47000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0037    ', 1, 3, 3, 2, 3, CAST(N'06:00:00' AS Time), CAST(N'15:00:00' AS Time), 600000, N'Our HomeStay is a complex including Homestay, Restaurant, Cafe located on the hillside, located in Hamlet 2 - 1km from Tam Dao town. The homestay area is surrounded by green pine trees and blends with nature, promising to be a close resort space but still has a separate, modern and impressive style. Each house in will be designed and decorated in different unique architectural styles while still possessing privacy and high-class amenities.', 133000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0038    ', 2, 2, 3, 1, 2, CAST(N'07:00:00' AS Time), CAST(N'16:00:00' AS Time), 700000, N'Comfortable and elegant design with 4 bedrooms, each room is fully equipped to bring a comfortable feeling -The sofa is placed in a large room where the family can gather and chat extremely warmly - As a villa with an open space design with its own BBQ grill - Nestled in the clouds with a vast view of clouds and mountains will surely bring the most relaxing feeling for an enjoyable family vacation - Staying in the evening maximum 3NL/room equivalent to 12NL/apartment', 130000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0039    ', 3, 3, 3, 1, 3, CAST(N'08:00:00' AS Time), CAST(N'17:30:00' AS Time), 500000, N'Our HomeStay is a large 150m2 room: with its own bar, kitchen and grill. View of the room towards the mountain, you fully enjoy the room in a space filled with nature. In addition to the communal garden with a view of Chill, we also have a private yard to organize a very separate and pleasant BBQ. Coming to us, you will fully enjoy a comfortable rest space with your family and loved ones.', 120000, N'https://www.youtube.com/watch?v=xneNSgAYQVM')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0040    ', 2, 2, 2, 1, 2, CAST(N'09:00:00' AS Time), CAST(N'18:30:00' AS Time), 459000, N'Peaceful and quiet, and still very convenient to visit famous places in Sapa, what could be better than that!!! Soft bed with warm mattress standard homestay style. A romantic tea table with a view of thousands of clouds. The BBQ grill is ready for all-night fun. Hundreds of "so deep" corners are waiting for you to discover. Free breakfast and hot coffee. Rain or shine, hot or cold, enjoy a sip of tea and read a book', 160000, N'https://www.youtube.com/watch?v=eG5zcO1k388')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0041    ', 1, 3, 2, 3, 3, CAST(N'10:00:00' AS Time), CAST(N'19:30:00' AS Time), 469000, N'Located 800m from the central town, you can completely walk to the town to play and then return. Here there is enough silence, enough open space for groups, couples, families to enjoy Tam Dao. No hustle and bustle like in town, you can order rice, BBQ, eat hot pot at the area with a beautiful dining space. In the evening, gather around the campfire, singing and confiding. With the desire to design is not only a resting place, you have some working space for those of you who bring some work here or need space to create, observe, and reflect.', 140000, N'https://www.youtube.com/watch?v=VA4aYGQ50nw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0042    ', 2, 2, 1, 1, 2, CAST(N'11:00:00' AS Time), CAST(N'20:30:00' AS Time), 569000, N'HomeStay is designed in Tropical style (Tropical style) is an interior design style inspired by tropical lands, famous landscapes such as Hawaii, Bali, Fiji, Caribbean,… This restaurant often uses motifs of palm leaves, coconut leaves and has a special preference for green color,... giving customers a quiet, peaceful, comfortable, relaxing atmosphere, close to nature. You just need to immerse yourself in the strange floral scents and the melodious ocean waves, all the rest let us do it for you.', 150000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0043    ', 2, 3, 2, 3, 3, CAST(N'12:00:00' AS Time), CAST(N'21:30:00' AS Time), 563000, N'All the HomeStay space is for you, feel it and give me your opinions and feelings about your HomeStay in the Review of the newly built HomeStay with an area of 400 m2 5 bedrooms 3 floors, equipped with Private bathroom, fully equipped kitchen. A lovely living room and a perfect terrace for any kind of party (BBQ) The swimming pool on the ground floor right at the entrance to HomeStay is beautifully designed, luxurious, spacious, with a smart filter system that will bring You feel relaxed while swimming. The rooftop is equipped with a BBQ charcoal grill and tables and chairs to organize all parties.', 180000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0044    ', 1, 3, 2, 1, 2, CAST(N'05:30:00' AS Time), CAST(N'22:30:00' AS Time), 499000, N'Do HomeStays with stereotypical designs make you bored? Forget them for a while. Whether you are looking for a place for your vacation or just to linger for a few days, you need a getaway that is comfortable, different and private enough. This is the place for you to sleep in peace and wake up in the warm sunshine.', 340000, N'https://www.youtube.com/watch?v=1dkmuhyDeLw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0045    ', 1, 3, 2, 2, 3, CAST(N'06:30:00' AS Time), CAST(N'23:30:00' AS Time), 500000, N'Our HomeStay is designe❤d in a modern open space with lots of trees. There is a balcony with sea and city views. Fully equipped with high-class facilities', 780000, N'https://www.youtube.com/watch?v=0Wl706NCJ-M')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0046    ', 1, 3, 2, 1, 2, CAST(N'07:30:00' AS Time), CAST(N'16:00:00' AS Time), 1380000, N'Our HomeStay is located near the sea, still in the heart of the city. Convenient to eat and visit the city, bars, cafes but still convenient to swim in the afternoon. As a 1980s-style townhouse, this homestay is inlaid with precious wood throughout the ceiling and walls. The interior is in the regal style of a typical townhouse (adjacent villa) in the Central region at that time.', 450000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0047    ', 2, 2, 2, 2, 3, CAST(N'08:30:00' AS Time), CAST(N'17:00:00' AS Time), 700000, N'Premium HoemStay for families · 65 m2 including 2 bathrooms · 2 beds · 2 bedrooms · 4 guests (maximum 5 guests). Designed in Japanese style - Modern and luxurious with full high-class facilities. Located right in the best location, near the beautiful My Khe beach and near attractions such as Asia Park, Sun Wheel, Reversal House, Marble Mountains, Chicken Church, Fire-breathing Dragon Bridge , Han River ...', 50000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0048    ', 2, 3, 1, 1, 2, CAST(N'09:30:00' AS Time), CAST(N'18:00:00' AS Time), 700000, N'Our HomeStay has a total of 8 floors, including 32 1-bedroom and 2-bedroom apartments with the highlight of a very unique design, including green trees covering the house along with attention to detail in each. The apartment is quiet and fresh. Each apartment has all the necessary equipment, and a spacious kitchen, a balcony covered with green trees, is like being immersed in a miniature green forest.', 60000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0049    ', 2, 2, 1, 3, 3, CAST(N'10:30:00' AS Time), CAST(N'18:30:00' AS Time), 500000, N'There are many seafoo❤d restaurants near the beach. Our side has a service of renting motorbikes, cars, transporting guests to tourist attractions around with reasonable prices. It is very easy to move from the accommodation. Only 100m to Blue Whale Park. Go to Dragon Bridge 3.5Km. Go to Con Market 4.5Km.', 70000, N'https://www.youtube.com/watch?v=xT-N_iB9204')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0050    ', 3, 3, 1, 1, 2, CAST(N'11:30:00' AS Time), CAST(N'19:00:00' AS Time), 600000, N'Our HomeStay ❤ SAIGON ROYAL is located in a high-class building, SAIGON ROYAL. Considered as the best apartment in the heart of Saigon with modern design and amenities just like its name "Royal". Beautiful view plus modern decor is a highlight of the room, This is one of our favorite apartments that you should try once. We have a kitchen full of cooking utensils and a cute little washing machine. HomeStay is close to the city center. Around supermarkets, restaurants and laundromats. Convenient location to famous tourist attractions and attractions: Notre dame Cathedral, Ben Thanh Market, Bui Vien Street, Nguyen Hue walking street...', 80000, N'https://www.youtube.com/watch?v=sTLiRb_eN0w')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0051    ', 3, 2, 1, 2, 3, CAST(N'00:00:00' AS Time), CAST(N'13:00:00' AS Time), 500000, N'The apartment is 35m2, 1 large bed, suitable for 2 people', 94000, N'https://www.youtube.com/watch?v=UjLIMeJr2NY')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0052    ', 3, 3, 1, 1, 2, CAST(N'00:30:00' AS Time), CAST(N'11:00:00' AS Time), 400000, N'Enjoy buffet breakfast for 2 people', 95000, N'https://www.youtube.com/watch?v=PlaxSMFe3_E')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0053    ', 2, 2, 1, 2, 3, CAST(N'01:00:00' AS Time), CAST(N'15:00:00' AS Time), 300000, N'The room is completely new furnished, with a flat screen TV with internet connection.', 94000, N'https://www.youtube.com/watch?v=fRZifCo1KVE')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0054    ', 2, 1, 3, 1, 2, CAST(N'01:30:00' AS Time), CAST(N'16:00:00' AS Time), 359000, N'Sofa, kitchen with full cooking utensils.', 96000, N'https://www.youtube.com/watch?v=l3dyAhqkHYg')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0055    ', 1, 1, 1, 3, 3, CAST(N'02:00:00' AS Time), CAST(N'17:00:00' AS Time), 599000, N'Balcony overlooking the city', 100000, N'https://www.youtube.com/watch?v=4FkeX_xw16c')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0056    ', 1, 1, 3, 1, 2, CAST(N'02:30:00' AS Time), CAST(N'14:00:00' AS Time), 400000, N'100% of the apartments have a large bathtub with hot water, a discreet separate toilet. Shampoos and shower gels ordered with 5-star standards are very safe for customers to use', 100000, N'https://www.youtube.com/watch?v=4FkeX_xw16c')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0057    ', 3, 1, 3, 2, 3, CAST(N'03:00:00' AS Time), CAST(N'14:00:00' AS Time), 500000, N'Comfortable and elegant design with 4 bedrooms, each room is fully equipped to bring a comfortable feeling -The sofa is placed in a large room where the family can gather and chat extremely warmly - As a villa with an open space design with its own BBQ grill - Nestled in the clouds with a vast view of clouds and mountains will surely bring the most relaxing feeling for an enjoyable family vacation - Staying in the evening maximum 3NL/room equivalent to 12NL/apartment', 100000, N'https://www.youtube.com/watch?v=ub9nfM_X1lE')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0058    ', 2, 1, 3, 1, 1, CAST(N'03:30:00' AS Time), CAST(N'15:00:00' AS Time), 600000, N'Our HomeStay is a large 150m2 room: with its own bar, kitchen and grill. View of the room towards the mountain, you fully enjoy the room in a space filled with nature. In addition to the communal garden with a view of Chill, we also have a private yard to organize a very separate and pleasant BBQ. Coming to us, you will fully enjoy a comfortable rest space with your family and loved ones.', 200000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0059    ', 3, 1, 3, 1, 1, CAST(N'04:00:00' AS Time), CAST(N'15:30:00' AS Time), 800000, N'Peaceful and quiet, and still very convenient to visit famous places in Sapa, what could be better than that!!! Soft bed with warm mattress standard homestay style. A romantic tea table with a view of thousands of clouds. The BBQ grill is ready for all-night fun. Hundreds of "so deep" corners are waiting for you to discover. Free breakfast and hot coffee. Rain or shine, hot or cold, enjoy a sip of tea and read a book', 300000, N'https://www.youtube.com/watch?v=6tHph-sJCtE')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0060    ', 2, 1, 2, 2, 1, CAST(N'04:40:00' AS Time), CAST(N'16:00:00' AS Time), 499000, N'Located 800m from the central town, you can completely walk to the town to play and then return. Here there is enough silence, enough open space for groups, couples, families to enjoy Tam Dao. No hustle and bustle like in town, you can order rice, BBQ, eat hot pot at the area with a beautiful dining space. In the evening, gather around the campfire, singing and confiding. With the desire to design is not only a resting place, you have some working space for those of you who bring some work here or need space to create, observe, and reflect.', 350000, N'https://www.youtube.com/watch?v=FXRzzET6Qrg')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0061    ', 3, 1, 2, 3, 2, CAST(N'05:00:00' AS Time), CAST(N'17:00:00' AS Time), 399000, N'Our HomeStay is located near the sea, still in the heart of the city. Convenient to eat and visit the city, bars, cafes but still convenient to swim in the afternoon. As a 1980s-style townhouse, this homestay is inlaid with precious wood throughout the ceiling and walls. The interior is in the regal style of a typical townhouse (adjacent villa) in the Central region at that time.', 349000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0062    ', 3, 2, 1, 2, 1, CAST(N'06:00:00' AS Time), CAST(N'15:00:00' AS Time), 500000, N'Premium HoemStay for families · 65 m2 including 2 bathrooms · 2 beds · 2 bedrooms · 4 guests (maximum 5 guests). Designed in Japanese style - Modern and luxurious with full high-class facilities. Located right in the best location, near the beautiful My Khe beach and near attractions such as Asia Park, Sun Wheel, Reversal House, Marble Mountains, Chicken Church, Fire-breathing Dragon Bridge , Han River ...', 359000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0063    ', 3, 2, 1, 3, 1, CAST(N'07:00:00' AS Time), CAST(N'16:00:00' AS Time), 600000, N'Our HomeStay has a total of 8 floors, including 32 1-bedroom and 2-bedroom apartments with the highlight of a very unique design, including green trees covering the house along with attention to detail in each. The apartment is quiet and fresh. Each apartment has all the necessary equipment, and a spacious kitchen, a balcony covered with green trees, is like being immersed in a miniature green forest.', 310000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0064    ', 3, 2, 2, 1, 1, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 700000, N'There are many seafoo❤d restaurants near the beach. Our side has a service of renting motorbikes, cars, transporting guests to tourist attractions around with reasonable prices. It is very easy to move from the accommodation. Only 100m to Blue Whale Park. Go to Dragon Bridge 3.5Km. Go to Con Market 4.5Km.', 50000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0065    ', 3, 2, 2, 2, 2, CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), 500000, N'Our HomeStay ❤ SAIGON ROYAL is located in a high-class building, SAIGON ROYAL. Considered as the best apartment in the heart of Saigon with modern design and amenities just like its name "Royal". Beautiful view plus modern decor is a highlight of the room, This is one of our favorite apartments that you should try once. We have a kitchen full of cooking utensils and a cute little washing machine. HomeStay is close to the city center. Around supermarkets, restaurants and laundromats. Convenient location to famous tourist attractions and attractions: Notre dame Cathedral, Ben Thanh Market, Bui Vien Street, Nguyen Hue walking street...', 60000, N'https://www.youtube.com/watch?v=ufA8VBgSwY4')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0066    ', 4, 2, 3, 1, 2, CAST(N'10:00:00' AS Time), CAST(N'19:00:00' AS Time), 459000, N'The apartment is 35m2, 1 large bed, suitable for 2 people', 40000, N'https://www.youtube.com/watch?v=VA4aYGQ50nw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0067    ', 2, 2, 3, 1, 2, CAST(N'11:00:00' AS Time), CAST(N'20:00:00' AS Time), 469000, N'Utilities in the building also include Jacuzzi pool, gym, golf practice area, coffee shop, free motorbike parking.', 58000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0068    ', 3, 3, 3, 3, 2, CAST(N'12:00:00' AS Time), CAST(N'21:00:00' AS Time), 569000, N'Hygiene factors and neat and tidy space are always put on top. A clean house is always disinfected, cleaned with hot water and always prepared hand sanitizer and alcohol for you to be ready to go in and out of the house safely.', 59000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0069    ', 2, 3, 1, 2, 2, CAST(N'05:30:00' AS Time), CAST(N'11:00:00' AS Time), 563000, N'My family''s old 4-level house was paved with pretty little bricks; that''s where my friends and I roll around reading, playing volleyball, playing tug-of-war and even falling asleep when we''re tired. The floor surface cools down over the years, but it was not until later that I knew its name was "cotton tile". Such simple things you will easily find in Au House. Rooms here are numbered by year such as 1980, 1981, 1982... years of the decades before this architectural feature accompanies each of our childhoods. It''s also really nice when the holiday is as close and comfortable as returning to the old self. We invite you to visit Au house once...', 69000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0070    ', 3, 3, 2, 3, 3, CAST(N'06:30:00' AS Time), CAST(N'12:00:00' AS Time), 499000, N'Located 800m from the central town, you can completely walk to the town to play and then return. Here there is enough silence, enough open space for groups, couples, families to enjoy Tam Dao. No hustle and bustle like in town, you can order rice, BBQ, eat hot pot at the area with a beautiful dining space. In the evening, gather around the campfire, singing and confiding. With the desire to design is not only a resting place, you have some working space for those of you who bring some work here or need space to create, observe, and reflect.', 79000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0071    ', 1, 2, 3, 2, 3, CAST(N'07:30:00' AS Time), CAST(N'15:00:00' AS Time), 500000, N'Our HomeStay has a glass view overlooking the mountains, valleys and Vinh Yen city! A small note and the Moon House has a high view, the rooms are built on the hillside, so traveling will be tiring, if you bring heavy things, you can ask your bellman to help bring things up to the room, if your group If you have weak health or have a small baby, pregnant women, please note before booking a room. In the room, there are pillows and blankets, personal hygiene items (towels, shampoo, shower gel, toothbrushes), clothes racks and racks, aromatherapy lamps, dryers, super speed kettles, types of water (mineral water, soft drink, beer) and snacks (water and snacks in the room charged according to the product you use)', 89000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0072    ', 2, 3, 2, 3, 3, CAST(N'08:30:00' AS Time), CAST(N'17:00:00' AS Time), 1380000, N'Our HomeStay is a complex including Homestay, Restaurant, Cafe located on the hillside, located in Hamlet 2 - 1km from Tam Dao town. The homestay area is surrounded by green pine trees and blends with nature, promising to be a close resort space but still has a separate, modern and impressive style. Each house in will be designed and decorated in different unique architectural styles while still possessing privacy and high-class amenities.', 99000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0073    ', 3, 2, 1, 2, 3, CAST(N'09:30:00' AS Time), CAST(N'16:00:00' AS Time), 700000, N'Comfortable and elegant design with 4 bedrooms, each room is fully equipped to bring a comfortable feeling -The sofa is placed in a large room where the family can gather and chat extremely warmly - As a villa with an open space design with its own BBQ grill - Nestled in the clouds with a vast view of clouds and mountains will surely bring the most relaxing feeling for an enjoyable family vacation - Staying in the evening maximum 3NL/room equivalent to 12NL/apartment', 89000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0074    ', 3, 3, 2, 3, 2, CAST(N'10:30:00' AS Time), CAST(N'18:30:00' AS Time), 700000, N'Our HomeStay is a large 150m2 room: with its own bar, kitchen and grill. View of the room towards the mountain, you fully enjoy the room in a space filled with nature. In addition to the communal garden with a view of Chill, we also have a private yard to organize a very separate and pleasant BBQ. Coming to us, you will fully enjoy a comfortable rest space with your family and loved ones.', 79000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0075    ', 1, 3, 3, 2, 2, CAST(N'11:30:00' AS Time), CAST(N'19:00:00' AS Time), 500000, N'HomeStay from the hot red Hong Kong style, the professional Japanese room, the elegant Mediterranean Persian Room, or the Nest Bird room equipped with a giant Bird Cage that can put couples on a round bed, or get lost into a tropical forest right in the room with the Luxury Tropical room... etc.', 300000, N'https://www.youtube.com/watch?v=1dVQMUTFNmk')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0076    ', 2, 1, 2, 1, 3, CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time), 600000, N'Our HomeStay interior design modern, minimalist, warm like at home. There is an elevator, a large and airy balcony with green space of hanging gardens and trees outside. Our accommodation is located in a convenient location, close to the center but still ensures quiet for you to rest. 150m from Han River, 01km from My Khe beach, 500m from night street, near Vinmart +, Cafe restaurant, milk payment on the ground floor.', 49000, N'https://www.youtube.com/watch?v=FXRzzET6Qrg')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0077    ', 3, 2, 1, 1, 3, CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), 500000, N'2 common spaces: Living room + kitchen (full option of seasoning tools). 5 bedrooms, 9 King Size beds + extra mattress + 4 nice clean WCs. There are many virtual living corners that are comfortable to relax and have a beautiful shimmering image. Immerse yourself in a 40 square meter Moroccan outdoor swimming pool. Best to do Herogasm', 50000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0078    ', 3, 1, 4, 1, 1, CAST(N'13:30:00' AS Time), CAST(N'16:00:00' AS Time), 400000, N'OurHomeStay is a whole house pool villa with 6 bedrooms, 6 beds and many private mattresses, with private self-contained toilets in each room. Full cooking utensils such as gas stove, induction cooker, brazier, cups, ....There is parking for guests. Besides, I am also an extremely friendly and laid-back person. Therefore, do not hesitate to share with us what you are wondering or the difficulties you encounter while here. We also always look forward to exploring with you many of the best places here. So what are you waiting for, now plan to enjoy great moments together.', 75000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0079    ', 2, 3, 4, 1, 1, CAST(N'13:00:00' AS Time), CAST(N'17:00:00' AS Time), 300000, N'The HomeStay features wooden floors, a fully equipped kitchen with a fridge, a flat-screen cable TV and a private bathroom with shower and a hairdryer. The aparthotel is 5 km from White Palace and 6 km from Christ the King. The nearest airport is Tan Son Nhat International Airport, 107 km away.', 65000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0080    ', 2, 1, 4, 2, 1, CAST(N'14:00:00' AS Time), CAST(N'21:00:00' AS Time), 359000, N'Here are still warm sunny days, clear blue sky,❤ Away from the hustle and bustle of the other city and find yourself a quiet place to rest for a light and relaxed spirit... Air-conditioned bedroom, wc, hot and cold water, With full stove, oven, dining table, dishes and pans and basic kitchen tools and spices, you will organize a cozy BBQ party and have fun right at the homestay''s premises.', 55000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0081    ', 3, 3, 2, 1, 1, CAST(N'13:00:00' AS Time), CAST(N'21:30:00' AS Time), 500000, N'Our HomeStay is located in the city center, very close to the bus stop (5 minutes walk), market (about 800m) and there are many food shops nearby. There are many famous places nearby such as Back Beach (about 1.5km), Bai Truoc Beach (about 2km), Seafood Night Market (about 2km), Jesus statue, ... Our house near Vinmart, Familymart, pharmacy and about 250m to Lotteria and a lot of famous local food nearby.', 45000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0082    ', 3, 1, 3, 2, 1, CAST(N'12:00:00' AS Time), CAST(N'22:30:00' AS Time), 459000, N'Our HomeStay ❤ SAIGON ROYAL is located in a high-class building, SAIGON ROYAL. Considered as the best apartment in the heart of Saigon with modern design and amenities just like its name "Royal". Beautiful view plus modern decor is a highlight of the room, This is one of our favorite apartments that you should try once. We have a kitchen full of cooking utensils and a cute little washing machine. HomeStay is close to the city center. Around supermarkets, restaurants and laundromats. Convenient location to famous tourist attractions and attractions: Notre dame Cathedral, Ben Thanh Market, Bui Vien Street, Nguyen Hue walking street...', 35000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0083    ', 3, 3, 3, 2, 2, CAST(N'11:00:00' AS Time), CAST(N'22:00:00' AS Time), 469000, N'The apartment is 35m2, 1 large bed, suitable for 2 people', 65000, N'https://www.youtube.com/watch?v=ufA8VBgSwY4')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0084    ', 3, 1, 3, 1, 2, CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time), 569000, N'Utilities in the building also include Jacuzzi pool, gym, golf practice area, coffee shop, free motorbike parking.', 85000, N'https://www.youtube.com/watch?v=VA4aYGQ50nw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0085    ', 3, 1, 2, 1, 3, CAST(N'15:00:00' AS Time), CAST(N'23:00:00' AS Time), 563000, N'Hygiene factors and neat and tidy space are always put on top. A clean house is always disinfected, cleaned with hot water and always prepared hand sanitizer and alcohol for you to be ready to go in and out of the house safely.', 95000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0086    ', 3, 1, 2, 1, 2, CAST(N'12:00:00' AS Time), CAST(N'21:00:00' AS Time), 499000, N'My family''s old 4-level house was paved with pretty little bricks; that''s where my friends and I roll around reading, playing volleyball, playing tug-of-war and even falling asleep when we''re tired. The floor surface cools down over the years, but it was not until later that I knew its name was "cotton tile". Such simple things you will easily find in Au House. Rooms here are numbered by year such as 1980, 1981, 1982... years of the decades before this architectural feature accompanies each of our childhoods. It''s also really nice when the holiday is as close and comfortable as returning to the old self. We invite you to visit Au house once...', 79000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0087    ', 3, 1, 2, 3, 3, CAST(N'11:00:00' AS Time), CAST(N'23:30:00' AS Time), 500000, N'Located 800m from the central town, you can completely walk to the town to play and then return. Here there is enough silence, enough open space for groups, couples, families to enjoy Tam Dao. No hustle and bustle like in town, you can order rice, BBQ, eat hot pot at the area with a beautiful dining space. In the evening, gather around the campfire, singing and confiding. With the desire to design is not only a resting place, you have some working space for those of you who bring some work here or need space to create, observe, and reflect.', 78000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0088    ', 2, 1, 2, 1, 2, CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), 1380000, N'Our HomeStay has a glass view overlooking the mountains, valleys and Vinh Yen city! A small note and the Moon House has a high view, the rooms are built on the hillside, so traveling will be tiring, if you bring heavy things, you can ask your bellman to help bring things up to the room, if your group If you have weak health or have a small baby, pregnant women, please note before booking a room. In the room, there are pillows and blankets, personal hygiene items (towels, shampoo, shower gel, toothbrushes), clothes racks and racks, aromatherapy lamps, dryers, super speed kettles, types of water (mineral water, soft drink, beer) and snacks (water and snacks in the room charged according to the product you use)', 52000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0089    ', 2, 1, 1, 1, 3, CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time), 700000, N'Do HomeStays with stereotypical designs make you bored? Forget them for a while. Whether you are looking for a place for your vacation or just to linger for a few days, you need a getaway that is comfortable, different and private enough. This is the place for you to sleep in peace and wake up in the warm sunshine.', 46000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0090    ', 2, 1, 1, 3, 2, CAST(N'06:00:00' AS Time), CAST(N'16:00:00' AS Time), 700000, N'Our HomeStay is designe❤d in a modern open space with lots of trees. There is a balcony with sea and city views. Fully equipped with high-class facilities', 47000, N'https://www.youtube.com/watch?v=xneNSgAYQVM')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0091    ', 2, 2, 3, 1, 3, CAST(N'05:30:00' AS Time), CAST(N'17:00:00' AS Time), 500000, N'Our HomeStay is located near the sea, still in the heart of the city. Convenient to eat and visit the city, bars, cafes but still convenient to swim in the afternoon. As a 1980s-style townhouse, this homestay is inlaid with precious wood throughout the ceiling and walls. The interior is in the regal style of a typical townhouse (adjacent villa) in the Central region at that time.', 133000, N'https://www.youtube.com/watch?v=eG5zcO1k388')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0092    ', 1, 2, 3, 1, 2, CAST(N'04:00:00' AS Time), CAST(N'18:00:00' AS Time), 600000, N'Premium HoemStay for families · 65 m2 including 2 bathrooms · 2 beds · 2 bedrooms · 4 guests (maximum 5 guests). Designed in Japanese style - Modern and luxurious with full high-class facilities. Located right in the best location, near the beautiful My Khe beach and near attractions such as Asia Park, Sun Wheel, Reversal House, Marble Mountains, Chicken Church, Fire-breathing Dragon Bridge , Han River ...', 130000, N'https://www.youtube.com/watch?v=VA4aYGQ50nw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0093    ', 1, 2, 2, 3, 3, CAST(N'03:00:00' AS Time), CAST(N'19:00:00' AS Time), 500000, N'Our HomeStay has a total of 8 floors, including 32 1-bedroom and 2-bedroom apartments with the highlight of a very unique design, including green trees covering the house along with attention to detail in each. The apartment is quiet and fresh. Each apartment has all the necessary equipment, and a spacious kitchen, a balcony covered with green trees, is like being immersed in a miniature green forest.', 120000, N'https://www.youtube.com/watch?v=YceozBRZ9kI')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0094    ', 1, 3, 3, 3, 2, CAST(N'05:00:00' AS Time), CAST(N'17:00:00' AS Time), 400000, N'There are many seafoo❤d restaurants near the beach. Our side has a service of renting motorbikes, cars, transporting guests to tourist attractions around with reasonable prices. It is very easy to move from the accommodation. Only 100m to Blue Whale Park. Go to Dragon Bridge 3.5Km. Go to Con Market 4.5Km.', 160000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0095    ', 1, 3, 2, 1, 3, CAST(N'06:00:00' AS Time), CAST(N'19:00:00' AS Time), 1699000, N'Our HomeStay ❤ SAIGON ROYAL is located in a high-class building, SAIGON ROYAL. Considered as the best apartment in the heart of Saigon with modern design and amenities just like its name "Royal". Beautiful view plus modern decor is a highlight of the room, This is one of our favorite apartments that you should try once. We have a kitchen full of cooking utensils and a cute little washing machine. HomeStay is close to the city center. Around supermarkets, restaurants and laundromats. Convenient location to famous tourist attractions and attractions: Notre dame Cathedral, Ben Thanh Market, Bui Vien Street, Nguyen Hue walking street...', 140000, N'https://www.youtube.com/watch?v=1dkmuhyDeLw')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0096    ', 2, 3, 3, 3, 2, CAST(N'07:00:00' AS Time), CAST(N'20:00:00' AS Time), 1700000, N'The apartment is 35m2, 1 large bed, suitable for 2 people', 150000, N'https://www.youtube.com/watch?v=0Wl706NCJ-M')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0097    ', 2, 3, 3, 2, 3, CAST(N'05:30:00' AS Time), CAST(N'21:00:00' AS Time), 1800000, N'Enjoy buffet breakfast for 2 people', 180000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0098    ', 1, 1, 3, 2, 2, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1900000, N'The room is completely new furnished, with a flat screen TV with internet connection.', 340000, N'https://www.youtube.com/watch?v=MF7jrRQ4z0U')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0099    ', 1, 3, 3, 2, 3, CAST(N'03:00:00' AS Time), CAST(N'23:00:00' AS Time), 2190000, N'Sofa, kitchen with full cooking utensils.', 780000, N'https://www.youtube.com/watch?v=RQ7pWhh7wAA')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0100    ', 1, 3, 2, 3, 2, CAST(N'05:00:00' AS Time), CAST(N'23:00:00' AS Time), 3190000, N'Balcony overlooking the city', 450000, N'https://www.youtube.com/watch?v=xT-N_iB9204')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0101    ', 2, 3, 3, 2, 3, CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time), 2190000, N'100% of the apartments have a large bathtub with hot water, a discreet separate toilet. Shampoos and shower gels ordered with 5-star standards are very safe for customers to use', 50000, N'https://www.youtube.com/watch?v=sTLiRb_eN0w')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0102    ', 2, 3, 3, 3, 1, CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time), 2290000, N'Comfortable and elegant design with 4 bedrooms, each room is fully equipped to bring a comfortable feeling -The sofa is placed in a large room where the family can gather and chat extremely warmly - As a villa with an open space design with its own BBQ grill - Nestled in the clouds with a vast view of clouds and mountains will surely bring the most relaxing feeling for an enjoyable family vacation - Staying in the evening maximum 3NL/room equivalent to 12NL/apartment', 60000, N'https://www.youtube.com/watch?v=UjLIMeJr2NY')
GO
INSERT [dbo].[HomeStayDetails] ([HomeStayId], [BedRoomQty], [BathRoomQty], [LivingRoomQty], [KitchenQty], [BedQty], [CheckIn], [CheckOut], [Price], [Description], [IncurredCost], [Video]) VALUES (N'HS0103    ', 2, 1, 2, 2, 1, CAST(N'11:00:00' AS Time), CAST(N'16:30:00' AS Time), 2590000, N'Our HomeStay is a large 150m2 room: with its own bar, kitchen and grill. View of the room towards the mountain, you fully enjoy the room in a space filled with nature. In addition to the communal garden with a view of Chill, we also have a private yard to organize a very separate and pleasant BBQ. Coming to us, you will fully enjoy a comfortable rest space with your family and loved ones.', 70000, N'https://www.youtube.com/watch?v=UoIjjPqqnO0')
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0001    ', N'Mahali Mzuri', N'CATID001  ', N'1danvit', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0002    ', N'Nayara Tented Camp', N'CATID002  ', N'2convitcon', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0003    ', N'Opposite House', N'CATID003  ', N'motconngan', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0004    ', N'Capella Bangkok', N'CATID004  ', N'baconga', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0005    ', N'Capella Bangkok 2', N'CATID001  ', N'khongcoai', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0006    ', N'Mahathan', N'CATID002  ', N'vitconkten', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0007    ', N'Capella Ubud', N'CATID003  ', N'123456cainha', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0008    ', N'Grace Hotel', N'CATID004  ', N'alolao', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0009    ', N'Cube', N'CATID001  ', N'nguyenvup', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0010    ', N'Oberoi Udaivillas', N'CATID002  ', N'nguyenphuong', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0011    ', N'ChauTinhTri', N'CATID003  ', N'supp1', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0012    ', N'Temple House', N'CATID004  ', N'trinhthangbinh', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0013    ', N'Hotel Paracas', N'CATID001  ', N'nguyentung', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0014    ', N'Taj Holiday Village Resort', N'CATID002  ', N'thanhtoai', 2)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0015    ', N'Savute Elephant Lodge', N'CATID003  ', N'phamsang', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0016    ', N'Lavian', N'CATID004  ', N'trinhphuong', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0017    ', N'Thanh Nam', N'CATID001  ', N'lamkhang', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0018    ', N'Minh Phuong', N'CATID002  ', N'tungson', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0019    ', N'Mandarin Oriental', N'CATID003  ', N'thinhhuyen', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0020    ', N'Supreme', N'CATID004  ', N'candypop', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0021    ', N'Hong Hanh', N'CATID001  ', N'andi', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0022    ', N'DragonSky', N'CATID002  ', N'vietgang', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0023    ', N'J-Dragon', N'CATID003  ', N'phamthoai', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0024    ', N'La Reserve Paris', N'CATID004  ', N'tienlen', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0025    ', N'Quang Thinh', N'CATID001  ', N'alice', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0026    ', N'Ngoc Sang', N'CATID002  ', N'aubame', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0027    ', N'Nam Can', N'CATID003  ', N'sofia', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0028    ', N'Duc Phuong', N'CATID004  ', N'nanbaka', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0029    ', N'Son Tung', N'CATID001  ', N'baychulun', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0030    ', N'Hai Thanh', N'CATID002  ', N'bachtuyet', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0031    ', N'Nobu Ryokan', N'CATID003  ', N'congchua', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0032    ', N'Soneva Fushi', N'CATID004  ', N'madelyn', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0033    ', N'Hanamoto Hotel', N'CATID001  ', N'josephine', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0034    ', N'Suzuki Corp', N'CATID002  ', N'bella', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0035    ', N'Thanh Toai', N'CATID003  ', N'skylar', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0036    ', N'Shangri-La the Shard', N'CATID004  ', N'genisit', 2)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0037    ', N'Alila Manggis', N'CATID001  ', N'sophie', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0038    ', N'Il Sereno Lago di Como', N'CATID002  ', N'hayle', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0039    ', N'Manoir Hovey', N'CATID003  ', N'saddy', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0040    ', N'Canaves Oia Epitome', N'CATID004  ', N'natalia', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0041    ', N'HongKong1', N'CATID001  ', N'wuin', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0042    ', N'HongKong2', N'CATID002  ', N'ducson', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0043    ', N'HongKong3', N'CATID003  ', N'theanh', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0044    ', N'Four Seasons Istanbul', N'CATID004  ', N'trang', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0045    ', N'The Peninsula', N'CATID001  ', N'trangtrang', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0046    ', N'Wannabe', N'CATID002  ', N'trangtrann', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0047    ', N'Soab Hotel', N'CATID003  ', N'lethilo', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0048    ', N'The Peninsula', N'CATID004  ', N'haianh', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0049    ', N'Hotel Fasano Boa Vista', N'CATID001  ', N'ariana', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0050    ', N'Halekulani', N'CATID002  ', N'emmet', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0051    ', N'Lake House on Canandaigua', N'CATID003  ', N'linda', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0052    ', N'Hyatt Regency', N'CATID004  ', N'jaden', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0053    ', N'Delavie', N'CATID001  ', N'samsara', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0054    ', N'DelavieSilvie', N'CATID002  ', N'damand', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0055    ', N'YGent', N'CATID003  ', N'jungleblack', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0056    ', N'MTPent', N'CATID004  ', N'kimlieh', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0057    ', N'Lotte Hotel HaNoi', N'CATID001  ', N'deeper', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0058    ', N'VinPearl Discovery', N'CATID002  ', N'unclestan', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0059    ', N'Sheraton Grand TraVinh Resort', N'CATID003  ', N'tifany', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0060    ', N'Anantara Hoi An Resort', N'CATID004  ', N'halathon', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0061    ', N'ThuongThanh', N'CATID001  ', N'1danvit', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0062    ', N'MuongThanh', N'CATID002  ', N'2convitcon', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0063    ', N'Sofitel Legend Metropole', N'CATID003  ', N'motconngan', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0064    ', N'SunWorld', N'CATID004  ', N'baconga', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0065    ', N'Sunknight', N'CATID001  ', N'khongcoai', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0066    ', N'MoonKnight', N'CATID002  ', N'vitconkten', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0067    ', N'Wannda', N'CATID003  ', N'123456cainha', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0068    ', N'WanndaVision', N'CATID004  ', N'alolao', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0069    ', N'Pietro', N'CATID001  ', N'nguyenvup', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0070    ', N'Leela Palace', N'CATID002  ', N'nguyenphuong', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0071    ', N'VietNam', N'CATID003  ', N'alice', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0072    ', N'VietNam2', N'CATID004  ', N'aubame', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0073    ', N'Nayara Gardens', N'CATID001  ', N'sofia', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0074    ', N'Pickering House Inn', N'CATID002  ', N'nanbaka', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0075    ', N'HollyCow', N'CATID003  ', N'baychulun', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0076    ', N'Rancho Valencia Resort & Spa', N'CATID004  ', N'bachtuyet', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0077    ', N'Nihi Sumba', N'CATID001  ', N'congchua', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0078    ', N'Tierra Atacama Hotel & Spa', N'CATID002  ', N'madelyn', 2)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0079    ', N'Viceroy Riviera Maya', N'CATID003  ', N'josephine', 0)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0080    ', N'St. Regis', N'CATID004  ', N'bella', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0081    ', N'EightMan', N'CATID001  ', N'skylar', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0082    ', N'ManHwa', N'CATID002  ', N'genisit', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0083    ', N'Katikies Mykonos', N'CATID003  ', N'sophie', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0084    ', N'HaanhSino', N'CATID004  ', N'hayle', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0085    ', N'HannalNguyen', N'CATID001  ', N'saddy', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0086    ', N'The Lanesborough', N'CATID002  ', N'natalia', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0087    ', N'Mandarin Oriental', N'CATID003  ', N'wuin', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0088    ', N'The Roundtree', N'CATID004  ', N'ducson', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0089    ', N'VuMinhPhuong', N'CATID001  ', N'theanh', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0090    ', N'Bao Minh', N'CATID002  ', N'trang', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0091    ', N'Minh Duc', N'CATID003  ', N'trangtrang', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0092    ', N'Mashpi Lodge', N'CATID004  ', N'trangtrann', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0093    ', N'Angama Mara', N'CATID001  ', N'lethilo', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0094    ', N'Raffles', N'CATID002  ', N'haianh', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0095    ', N'Luong Son Ba', N'CATID003  ', N'ariana', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0096    ', N'Chuc Anh Dai', N'CATID004  ', N'emmet', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0097    ', N'Grand Hotel Excelsior Vittoria', N'CATID001  ', N'linda', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0098    ', N'Sumaq Machu Picchu Hotel', N'CATID002  ', N'jaden', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0099    ', N'Las Ventanas al Paraiso Resort', N'CATID003  ', N'samsara', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0100    ', N'Viceroy', N'CATID004  ', N'damand', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0101    ', N'Gibb Farm', N'CATID001  ', N'jungleblack', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0102    ', N'Singita Grumeti', N'CATID002  ', N'kimlieh', 1)
GO
INSERT [dbo].[HomeStays] ([HomeStayId], [HomeStayName], [CateId], [AccountS], [Status]) VALUES (N'HS0103    ', N'Trinh Cong Son', N'CATID003  ', N'deeper', 1)
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00001   ', N'h1-1.jpg', N'HS0001    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00002   ', N'h1-2.jpg', N'HS0001    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00003   ', N'h1-3.jpg', N'HS0001    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00004   ', N'h2-1.jpg', N'HS0002    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00005   ', N'h2-2.jpg', N'HS0002    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00006   ', N'h2-3.jpg', N'HS0002    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00007   ', N'h3-1.jpg', N'HS0003    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00008   ', N'h3-2.jpg', N'HS0003    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00009   ', N'h3-3.jpg', N'HS0003    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00010   ', N'h4-1.jpg', N'HS0004    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00011   ', N'h4-2.jpg', N'HS0004    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00012   ', N'h4-3.jpg', N'HS0004    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00013   ', N'h5-1.jpg', N'HS0005    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00014   ', N'h5-2.jpg', N'HS0005    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00015   ', N'h5-3.jpg', N'HS0005    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00016   ', N'h6-1.jpg', N'HS0006    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00017   ', N'h6-2.jpg', N'HS0006    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00018   ', N'h6-3.jpg', N'HS0006    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00019   ', N'h7-1.jpg', N'HS0007    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00020   ', N'h7-2.jpg', N'HS0007    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00021   ', N'h7-3.jpg', N'HS0007    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00022   ', N'h8-1.jpg', N'HS0008    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00023   ', N'h8-2.jpg', N'HS0008    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00024   ', N'h8-3.jpg', N'HS0008    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00025   ', N'h9-1.jpg', N'HS0009    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00026   ', N'h9-2.jpg', N'HS0009    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00027   ', N'h9-3.jpg', N'HS0009    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00028   ', N'h10-1.jpg', N'HS0010    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00029   ', N'h10-2.jpg', N'HS0010    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00030   ', N'h10-3.jpg', N'HS0010    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00031   ', N'h11-1.jpg', N'HS0011    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00032   ', N'h11-2.jpg', N'HS0011    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00033   ', N'h11-3.jpg', N'HS0011    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00034   ', N'h12-1.jpg', N'HS0012    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00035   ', N'h12-2.jpg', N'HS0012    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00036   ', N'h12-3.jpg', N'HS0012    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00037   ', N'h1-1.jpg', N'HS0013    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00038   ', N'h1-2.jpg', N'HS0014    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00039   ', N'h1-3.jpg', N'HS0015    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00040   ', N'h2-1.jpg', N'HS0016    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00041   ', N'h2-2.jpg', N'HS0017    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00042   ', N'h2-3.jpg', N'HS0018    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00043   ', N'h3-1.jpg', N'HS0019    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00044   ', N'h3-2.jpg', N'HS0020    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00045   ', N'h3-3.jpg', N'HS0021    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00046   ', N'h4-1.jpg', N'HS0022    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00047   ', N'h4-2.jpg', N'HS0023    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00048   ', N'h4-3.jpg', N'HS0024    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00049   ', N'h5-1.jpg', N'HS0025    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00050   ', N'h5-2.jpg', N'HS0026    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00051   ', N'h5-3.jpg', N'HS0027    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00052   ', N'h6-1.jpg', N'HS0028    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00053   ', N'h6-2.jpg', N'HS0029    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00054   ', N'h6-3.jpg', N'HS0030    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00055   ', N'h7-1.jpg', N'HS0031    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00056   ', N'h7-2.jpg', N'HS0032    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00057   ', N'h7-3.jpg', N'HS0033    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00058   ', N'h8-1.jpg', N'HS0034    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00059   ', N'h8-2.jpg', N'HS0035    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00060   ', N'h8-3.jpg', N'HS0036    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00061   ', N'h9-1.jpg', N'HS0037    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00062   ', N'h9-2.jpg', N'HS0038    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00063   ', N'h9-3.jpg', N'HS0039    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00064   ', N'h10-1.jpg', N'HS0040    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00065   ', N'h10-2.jpg', N'HS0041    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00066   ', N'h10-3.jpg', N'HS0042    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00067   ', N'h11-1.jpg', N'HS0043    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00068   ', N'h11-2.jpg', N'HS0044    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00069   ', N'h11-3.jpg', N'HS0045    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00070   ', N'h12-1.jpg', N'HS0046    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00071   ', N'h12-2.jpg', N'HS0047    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00072   ', N'h12-3.jpg', N'HS0048    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00073   ', N'h1-1.jpg', N'HS0049    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00074   ', N'h1-2.jpg', N'HS0050    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00075   ', N'h1-3.jpg', N'HS0051    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00076   ', N'h2-1.jpg', N'HS0052    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00077   ', N'h2-2.jpg', N'HS0053    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00078   ', N'h2-3.jpg', N'HS0054    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00079   ', N'h3-1.jpg', N'HS0055    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00080   ', N'h3-2.jpg', N'HS0056    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00081   ', N'h3-3.jpg', N'HS0057    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00082   ', N'h4-1.jpg', N'HS0058    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00083   ', N'h4-2.jpg', N'HS0059    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00084   ', N'h4-3.jpg', N'HS0060    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00085   ', N'h5-1.jpg', N'HS0061    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00086   ', N'h5-2.jpg', N'HS0062    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00087   ', N'h5-3.jpg', N'HS0063    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00088   ', N'h6-1.jpg', N'HS0064    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00089   ', N'h6-2.jpg', N'HS0065    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00090   ', N'h6-3.jpg', N'HS0066    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00091   ', N'h7-1.jpg', N'HS0067    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00092   ', N'h7-2.jpg', N'HS0068    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00093   ', N'h7-3.jpg', N'HS0069    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00094   ', N'h8-1.jpg', N'HS0070    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00095   ', N'h8-2.jpg', N'HS0071    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00096   ', N'h8-3.jpg', N'HS0072    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00097   ', N'h9-1.jpg', N'HS0073    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00098   ', N'h9-2.jpg', N'HS0074    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00099   ', N'h9-3.jpg', N'HS0075    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00100   ', N'h10-1.jpg', N'HS0076    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00101   ', N'h10-2.jpg', N'HS0077    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00102   ', N'h10-3.jpg', N'HS0078    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00103   ', N'h11-1.jpg', N'HS0079    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00104   ', N'h11-2.jpg', N'HS0080    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00105   ', N'h11-3.jpg', N'HS0081    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00106   ', N'h12-1.jpg', N'HS0082    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00107   ', N'h12-2.jpg', N'HS0083    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00108   ', N'h12-3.jpg', N'HS0084    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00109   ', N'h1-1.jpg', N'HS0085    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00110   ', N'h1-2.jpg', N'HS0086    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00111   ', N'h1-3.jpg', N'HS0087    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00112   ', N'h2-1.jpg', N'HS0088    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00113   ', N'h2-2.jpg', N'HS0089    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00114   ', N'h2-3.jpg', N'HS0090    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00115   ', N'h3-1.jpg', N'HS0091    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00116   ', N'h3-2.jpg', N'HS0092    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00117   ', N'h3-3.jpg', N'HS0093    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00118   ', N'h4-1.jpg', N'HS0094    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00119   ', N'h4-2.jpg', N'HS0095    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00120   ', N'h4-3.jpg', N'HS0096    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00121   ', N'h5-1.jpg', N'HS0097    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00122   ', N'h5-2.jpg', N'HS0098    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00123   ', N'h5-3.jpg', N'HS0099    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00124   ', N'h6-1.jpg', N'HS0100    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00125   ', N'h6-2.jpg', N'HS0101    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00126   ', N'h6-3.jpg', N'HS0102    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00127   ', N'h7-1.jpg', N'HS0103    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00128   ', N'h7-2.jpg', N'HS0013    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00129   ', N'h7-3.jpg', N'HS0014    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00130   ', N'h8-1.jpg', N'HS0015    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00131   ', N'h8-2.jpg', N'HS0016    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00132   ', N'h8-3.jpg', N'HS0017    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00133   ', N'h9-1.jpg', N'HS0018    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00134   ', N'h9-2.jpg', N'HS0019    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00135   ', N'h9-3.jpg', N'HS0020    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00136   ', N'h10-1.jpg', N'HS0021    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00137   ', N'h10-2.jpg', N'HS0022    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00138   ', N'h10-3.jpg', N'HS0023    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00139   ', N'h11-1.jpg', N'HS0024    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00140   ', N'h11-2.jpg', N'HS0025    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00141   ', N'h11-3.jpg', N'HS0026    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00142   ', N'h12-1.jpg', N'HS0027    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00143   ', N'h12-2.jpg', N'HS0028    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00144   ', N'h12-3.jpg', N'HS0029    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00145   ', N'h1-1.jpg', N'HS0030    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00146   ', N'h1-2.jpg', N'HS0031    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00147   ', N'h1-3.jpg', N'HS0032    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00148   ', N'h2-1.jpg', N'HS0033    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00149   ', N'h2-2.jpg', N'HS0034    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00150   ', N'h2-3.jpg', N'HS0035    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00151   ', N'h3-1.jpg', N'HS0036    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00152   ', N'h3-2.jpg', N'HS0037    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00153   ', N'h3-3.jpg', N'HS0038    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00154   ', N'h4-1.jpg', N'HS0039    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00155   ', N'h4-2.jpg', N'HS0040    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00156   ', N'h4-3.jpg', N'HS0041    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00157   ', N'h5-1.jpg', N'HS0042    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00158   ', N'h5-2.jpg', N'HS0043    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00159   ', N'h5-3.jpg', N'HS0044    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00160   ', N'h6-1.jpg', N'HS0045    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00161   ', N'h6-2.jpg', N'HS0046    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00162   ', N'h6-3.jpg', N'HS0047    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00163   ', N'h7-1.jpg', N'HS0048    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00164   ', N'h7-2.jpg', N'HS0049    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00165   ', N'h7-3.jpg', N'HS0050    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00166   ', N'h8-1.jpg', N'HS0051    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00167   ', N'h8-2.jpg', N'HS0052    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00168   ', N'h8-3.jpg', N'HS0053    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00169   ', N'h9-1.jpg', N'HS0054    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00170   ', N'h9-2.jpg', N'HS0055    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00171   ', N'h9-3.jpg', N'HS0056    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00172   ', N'h10-1.jpg', N'HS0057    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00173   ', N'h10-2.jpg', N'HS0058    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00174   ', N'h10-3.jpg', N'HS0059    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00175   ', N'h11-1.jpg', N'HS0060    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00176   ', N'h11-2.jpg', N'HS0061    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00177   ', N'h11-3.jpg', N'HS0062    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00178   ', N'h12-1.jpg', N'HS0063    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00179   ', N'h12-2.jpg', N'HS0064    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00180   ', N'h12-3.jpg', N'HS0065    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00181   ', N'h1-1.jpg', N'HS0066    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00182   ', N'h1-2.jpg', N'HS0067    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00183   ', N'h1-3.jpg', N'HS0068    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00184   ', N'h2-1.jpg', N'HS0069    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00185   ', N'h2-2.jpg', N'HS0070    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00186   ', N'h2-3.jpg', N'HS0071    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00187   ', N'h3-1.jpg', N'HS0072    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00188   ', N'h3-2.jpg', N'HS0073    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00189   ', N'h3-3.jpg', N'HS0074    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00190   ', N'h4-1.jpg', N'HS0075    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00191   ', N'h4-2.jpg', N'HS0076    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00192   ', N'h4-3.jpg', N'HS0077    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00193   ', N'h5-1.jpg', N'HS0078    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00194   ', N'h5-2.jpg', N'HS0079    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00195   ', N'h5-3.jpg', N'HS0080    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00196   ', N'h6-1.jpg', N'HS0081    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00197   ', N'h6-2.jpg', N'HS0082    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00198   ', N'h6-3.jpg', N'HS0083    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00199   ', N'h7-1.jpg', N'HS0084    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00200   ', N'h7-2.jpg', N'HS0085    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00201   ', N'h7-3.jpg', N'HS0086    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00202   ', N'h8-1.jpg', N'HS0087    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00203   ', N'h8-2.jpg', N'HS0088    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00204   ', N'h8-3.jpg', N'HS0089    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00205   ', N'h9-1.jpg', N'HS0090    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00206   ', N'h9-2.jpg', N'HS0091    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00207   ', N'h9-3.jpg', N'HS0092    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00208   ', N'h10-1.jpg', N'HS0093    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00209   ', N'h10-2.jpg', N'HS0094    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00210   ', N'h10-3.jpg', N'HS0095    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00211   ', N'h11-1.jpg', N'HS0096    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00212   ', N'h11-2.jpg', N'HS0097    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00213   ', N'h11-3.jpg', N'HS0098    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00214   ', N'h12-1.jpg', N'HS0099    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00215   ', N'h12-2.jpg', N'HS0100    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00216   ', N'h12-3.jpg', N'HS0101    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00217   ', N'h1-1.jpg', N'HS0102    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00218   ', N'h1-2.jpg', N'HS0103    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00219   ', N'h1-3.jpg', N'HS0013    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00220   ', N'h2-1.jpg', N'HS0014    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00221   ', N'h2-2.jpg', N'HS0015    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00222   ', N'h2-3.jpg', N'HS0016    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00223   ', N'h3-1.jpg', N'HS0017    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00224   ', N'h3-2.jpg', N'HS0018    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00225   ', N'h3-3.jpg', N'HS0019    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00226   ', N'h4-1.jpg', N'HS0020    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00227   ', N'h4-2.jpg', N'HS0021    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00228   ', N'h4-3.jpg', N'HS0022    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00229   ', N'h5-1.jpg', N'HS0023    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00230   ', N'h5-2.jpg', N'HS0024    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00231   ', N'h5-3.jpg', N'HS0025    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00232   ', N'h6-1.jpg', N'HS0026    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00233   ', N'h6-2.jpg', N'HS0027    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00234   ', N'h6-3.jpg', N'HS0028    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00235   ', N'h7-1.jpg', N'HS0029    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00236   ', N'h7-2.jpg', N'HS0030    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00237   ', N'h7-3.jpg', N'HS0031    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00238   ', N'h8-1.jpg', N'HS0032    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00239   ', N'h8-2.jpg', N'HS0033    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00240   ', N'h8-3.jpg', N'HS0034    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00241   ', N'h9-1.jpg', N'HS0035    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00242   ', N'h9-2.jpg', N'HS0036    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00243   ', N'h9-3.jpg', N'HS0037    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00244   ', N'h10-1.jpg', N'HS0038    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00245   ', N'h10-2.jpg', N'HS0039    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00246   ', N'h10-3.jpg', N'HS0040    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00247   ', N'h11-1.jpg', N'HS0041    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00248   ', N'h11-2.jpg', N'HS0042    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00249   ', N'h11-3.jpg', N'HS0043    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00250   ', N'h12-1.jpg', N'HS0044    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00251   ', N'h12-2.jpg', N'HS0045    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00252   ', N'h12-3.jpg', N'HS0046    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00253   ', N'h1-1.jpg', N'HS0047    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00254   ', N'h1-2.jpg', N'HS0048    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00255   ', N'h1-3.jpg', N'HS0049    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00256   ', N'h2-1.jpg', N'HS0050    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00257   ', N'h2-2.jpg', N'HS0051    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00258   ', N'h2-3.jpg', N'HS0052    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00259   ', N'h3-1.jpg', N'HS0053    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00260   ', N'h3-2.jpg', N'HS0054    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00261   ', N'h3-3.jpg', N'HS0055    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00262   ', N'h4-1.jpg', N'HS0056    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00263   ', N'h4-2.jpg', N'HS0057    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00264   ', N'h4-3.jpg', N'HS0058    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00265   ', N'h5-1.jpg', N'HS0059    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00266   ', N'h5-2.jpg', N'HS0060    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00267   ', N'h5-3.jpg', N'HS0061    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00268   ', N'h6-1.jpg', N'HS0062    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00269   ', N'h6-2.jpg', N'HS0063    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00270   ', N'h6-3.jpg', N'HS0064    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00271   ', N'h7-1.jpg', N'HS0065    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00272   ', N'h7-2.jpg', N'HS0066    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00273   ', N'h7-3.jpg', N'HS0067    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00274   ', N'h8-1.jpg', N'HS0068    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00275   ', N'h8-2.jpg', N'HS0069    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00276   ', N'h8-3.jpg', N'HS0070    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00277   ', N'h9-1.jpg', N'HS0071    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00278   ', N'h9-2.jpg', N'HS0072    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00279   ', N'h9-3.jpg', N'HS0073    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00280   ', N'h10-1.jpg', N'HS0074    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00281   ', N'h10-2.jpg', N'HS0075    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00282   ', N'h10-3.jpg', N'HS0076    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00283   ', N'h11-1.jpg', N'HS0077    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00284   ', N'h11-2.jpg', N'HS0078    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00285   ', N'h11-3.jpg', N'HS0079    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00286   ', N'h12-1.jpg', N'HS0080    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00287   ', N'h12-2.jpg', N'HS0081    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00288   ', N'h12-3.jpg', N'HS0082    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00289   ', N'h1-1.jpg', N'HS0083    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00290   ', N'h1-2.jpg', N'HS0084    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00291   ', N'h1-3.jpg', N'HS0085    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00292   ', N'h2-1.jpg', N'HS0086    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00293   ', N'h2-2.jpg', N'HS0087    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00294   ', N'h2-3.jpg', N'HS0088    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00295   ', N'h3-1.jpg', N'HS0089    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00296   ', N'h3-2.jpg', N'HS0090    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00297   ', N'h3-3.jpg', N'HS0091    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00298   ', N'h4-1.jpg', N'HS0092    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00299   ', N'h4-2.jpg', N'HS0093    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00300   ', N'h4-3.jpg', N'HS0094    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00301   ', N'h5-1.jpg', N'HS0095    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00302   ', N'h5-2.jpg', N'HS0096    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00303   ', N'h5-3.jpg', N'HS0097    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00304   ', N'h6-1.jpg', N'HS0098    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00305   ', N'h6-2.jpg', N'HS0099    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00306   ', N'h6-3.jpg', N'HS0100    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00307   ', N'h7-1.jpg', N'HS0101    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00308   ', N'h7-2.jpg', N'HS0102    ')
GO
INSERT [dbo].[Images] ([ImageId], [ImageUrl], [HomeStayId]) VALUES (N'IM00309   ', N'h7-3.jpg', N'HS0103    ')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'bautroikhongem', N'Thanh Lam', N'Le', 23, N'lamthanhle@gmail.com', N'8434785784')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'chuatebongdem', N'Minh Duc', N'Le', 22, N'ducminhle@gmail.com', N'8434585565')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'daituongnoxus', N'Minh Tam', N'Nguyen', 22, N'tamminhnguyen122@gmail.com', N'8434563526')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'mynameis', N'Thuy', N'Tran', 24, N'tranthuy2k1@gmail.com', N'8434515444')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'nuchuahukhong', N'Minh Hanh', N'Le', 21, N'lehanhminh123@gmail.com', N'8495325626')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'ohsowhataer', N'Nam', N'Le', 25, N'namle25@gmail.com', N'8477755883')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'phuongnguyen12', N'Phuong', N'Nguyen', 25, N'phuongnguyen25@gmail.com', N'8437859999')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'thosanbongdem', N'Thuy Hanh', N'Tran', 22, N'tranhanhthuy2@gmail.com', N'8432532365')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'whatyourname', N'Thuy ', N'Doan', 22, N'thuydoan2k@gmail.com', N'8434888888')
GO
INSERT [dbo].[Marketing] ([AccountM], [FirstName], [LastName], [Age], [Email], [Phone]) VALUES (N'yourname', N'Minh', N'Le', 21, N'leminh99@gmail.com', N'8434777777')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'bautroikhongem', N'meo-khoc-nhu-nguoi-12-09-40-54.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'chuatebongdem', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'daituongnoxus', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'mynameis', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'nuchuahukhong', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'ohsowhataer', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'phuongnguyen12', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'thosanbongdem', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'whatyourname', N'AvatarDefault.jpg')
GO
INSERT [dbo].[MarketingImage] ([AccountM], [Img_Avatar]) VALUES (N'yourname', N'AvatarDefault.jpg')
GO
SET IDENTITY_INSERT [dbo].[MessengerCA] ON 
GO
INSERT [dbo].[MessengerCA] ([MessengerCAId], [Caption], [Description], [MessRole], [AccountC]) VALUES (1, N'haha', N'hihhihaha', 1, N'binhminhdaysong')
GO
INSERT [dbo].[MessengerCA] ([MessengerCAId], [Caption], [Description], [MessRole], [AccountC]) VALUES (2, N'booking homestay', N'how to booking a homestay', 1, N'binhminhdaysong')
GO
INSERT [dbo].[MessengerCA] ([MessengerCAId], [Caption], [Description], [MessRole], [AccountC]) VALUES (3, N'supplier', N'how can i become supplier', 1, N'benbohanhphuc')
GO
INSERT [dbo].[MessengerCA] ([MessengerCAId], [Caption], [Description], [MessRole], [AccountC]) VALUES (13, N'', N'demo', 0, N'binhminhdaysong')
GO
INSERT [dbo].[MessengerCA] ([MessengerCAId], [Caption], [Description], [MessRole], [AccountC]) VALUES (14, N'lol', N'hihihhaha', 1, N'benbohanhphuc')
GO
SET IDENTITY_INSERT [dbo].[MessengerCA] OFF
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID001   ', N'Phuong', CAST(N'2015-07-21T00:02:00.000' AS DateTime), 1, N'kha te, phong ngu va phong tam chat luong kem', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID002   ', N'Thuy', CAST(N'2015-07-20T01:02:00.000' AS DateTime), 1, N'chat luong kem', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID003   ', N'Minh', CAST(N'2015-07-17T01:14:00.000' AS DateTime), 1, N'phong ngu va phong tam chat luong kem', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID004   ', N'Hang', CAST(N'2015-07-09T00:58:00.000' AS DateTime), 2, N'khong gian phong ngu kha tu tung, chat choi', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID005   ', N'Nguyen', CAST(N'2015-07-04T00:54:00.000' AS DateTime), 1, N'te', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID006   ', N'Dai', CAST(N'2015-07-03T00:45:00.000' AS DateTime), 2, N'qua te, nhung khuyen khich 2 sao', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID007   ', N'Dat', CAST(N'2015-06-21T00:44:00.000' AS DateTime), 1, N'cuc ky te', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID008   ', N'Linh', CAST(N'2015-06-15T22:57:00.000' AS DateTime), 2, N'toi se khong quay lai day nua', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID009   ', N'Trang', CAST(N'2015-06-13T01:07:00.000' AS DateTime), 1, N'toi khong muon quay lai day nua', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID010   ', N'Huong', CAST(N'2015-06-10T23:21:00.000' AS DateTime), 5, N'khong qua te, phong an kha tuyet doi voi toi', N'HS0001    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID011   ', N'Phuong', CAST(N'2015-06-08T01:05:00.000' AS DateTime), 3, N'trai nghiem kha binh thuong, 3 sao', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID012   ', N'Thuy', CAST(N'2015-06-07T00:45:00.000' AS DateTime), 2, N'khu du lich binh thuong, neu khong muon noi la te', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID013   ', N'Minh', CAST(N'2015-06-04T01:36:00.000' AS DateTime), 3, N'khong co gi dac biet, kha binh thuong', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID014   ', N'Hang', CAST(N'2015-05-31T00:25:00.000' AS DateTime), 5, N'day la homstay tuyet nhat toi tung den', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID015   ', N'Nguyen', CAST(N'2015-05-31T00:16:00.000' AS DateTime), 4, N'nhin chung la tam duoc', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID016   ', N'Dai', CAST(N'2015-05-30T22:56:00.000' AS DateTime), 5, N'tuyet voi', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID017   ', N'Dat', CAST(N'2015-05-28T01:23:00.000' AS DateTime), 3, N'phong tam kha te, con lai o muc kha', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID018   ', N'Linh', CAST(N'2015-05-24T01:59:00.000' AS DateTime), 3, N'giuong ngu khong tao cam giac thoai mai', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID019   ', N'Trang', CAST(N'2015-05-21T23:11:00.000' AS DateTime), 3, N'rat kho ngu vi cai giuong qa te, cham truoc 3  sao', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID020   ', N'Huong', CAST(N'2015-05-21T01:42:00.000' AS DateTime), 3, N'3 sao', N'HS0002    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID021   ', N'Phuong', CAST(N'2015-05-13T23:09:00.000' AS DateTime), 2, N'giuong ngu rat te, toi da khong the ngu', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID022   ', N'Thuy', CAST(N'2015-05-08T01:26:00.000' AS DateTime), 1, N'khong co gi de noi', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID023   ', N'Minh', CAST(N'2015-05-03T23:32:00.000' AS DateTime), 2, N'te, toi se cho 2 sao', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID024   ', N'Hang', CAST(N'2015-04-29T00:45:00.000' AS DateTime), 5, N'khong qa te, ma nguoi dan cung kha than thien', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID025   ', N'Nguyen', CAST(N'2015-04-24T00:04:00.000' AS DateTime), 5, N'homstay co phong tam tuyet voi, toi rat thich', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID026   ', N'Dai', CAST(N'2015-04-20T23:35:00.000' AS DateTime), 5, N'tuyet voi', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID027   ', N'Dat', CAST(N'2015-04-17T01:39:00.000' AS DateTime), 5, N'cung duoc, khuyen khich 5 sao', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID028   ', N'Linh', CAST(N'2015-04-17T00:57:00.000' AS DateTime), 5, N'cho 5 sao de homstay co gang cai thien nhe', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID029   ', N'Trang', CAST(N'2015-04-16T22:40:00.000' AS DateTime), 5, N'khuyen khich 5 sao', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID030   ', N'Huong', CAST(N'2015-04-04T22:59:00.000' AS DateTime), 4, N'khuyen khich 5 sao', N'HS0003    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID031   ', N'Phuong', CAST(N'2015-04-04T01:09:00.000' AS DateTime), 4, N'qua tuyet, 4 sao vi muon homstay cai thien', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID032   ', N'Thuy', CAST(N'2015-03-30T00:07:00.000' AS DateTime), 5, N'5 sao thoi, khong co gi de noi :D', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID033   ', N'Minh', CAST(N'2015-03-26T23:48:00.000' AS DateTime), 5, N'vote 5 sao', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID034   ', N'Hang', CAST(N'2015-03-26T23:02:00.000' AS DateTime), 5, N'5 sao nha', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID035   ', N'Nguyen', CAST(N'2015-03-24T23:50:00.000' AS DateTime), 5, N'xung dang 5 sao', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID036   ', N'Dai', CAST(N'2015-03-21T23:28:00.000' AS DateTime), 5, N'xung dang 5 sao', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID037   ', N'Dat', CAST(N'2015-03-19T00:27:00.000' AS DateTime), 3, N'moi nguoi vote cao qa, 3 sao', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID038   ', N'Linh', CAST(N'2015-03-18T23:46:00.000' AS DateTime), 3, N'cho nay chi xung 3 sao thoi', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID039   ', N'Trang', CAST(N'2015-03-17T22:58:00.000' AS DateTime), 4, N'cho 4 sao nha, tam duoc', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID040   ', N'Huong', CAST(N'2015-03-16T23:31:00.000' AS DateTime), 4, N'cho nay xung dang 4 sao nha mn', N'HS0004    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID041   ', N'Phuong', CAST(N'2015-03-15T00:38:00.000' AS DateTime), 4, N'4 sao duoc nha mn', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID042   ', N'Thuy', CAST(N'2015-03-14T00:02:00.000' AS DateTime), 5, N'ay, the nay lai phai cho 5 sao roi', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID043   ', N'Minh', CAST(N'2015-03-12T01:01:00.000' AS DateTime), 5, N'chan qua, lai phai cho 5 sao :D', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID044   ', N'Hang', CAST(N'2015-03-08T23:05:00.000' AS DateTime), 5, N'minh hoi buon vi cho nay tot qua :D', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID045   ', N'Nguyen', CAST(N'2015-03-06T00:29:00.000' AS DateTime), 4, N'danh gia khach quan thi chi 4* thoi', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID046   ', N'Dai', CAST(N'2015-03-03T00:04:00.000' AS DateTime), 4, N'cung duoc, 4 sao', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID047   ', N'Dat', CAST(N'2015-02-22T00:22:00.000' AS DateTime), 4, N'khong co gi de phan tich, 4 sao', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID048   ', N'Linh', CAST(N'2015-02-20T00:36:00.000' AS DateTime), 3, N'phong tam hoi te, giuong k dc em', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID049   ', N'Trang', CAST(N'2015-02-18T23:43:00.000' AS DateTime), 3, N'toi khong thich phong an cho lam', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID050   ', N'Huong', CAST(N'2015-02-18T00:34:00.000' AS DateTime), 3, N'phong an hoi te, 3 sao', N'HS0005    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID051   ', N'Phuong', CAST(N'2015-02-14T23:04:00.000' AS DateTime), 1, N'chua di baoh, nhung t thich cho 1 sao :D', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID052   ', N'Thuy', CAST(N'2015-02-12T00:44:00.000' AS DateTime), 3, N'aiza, 3 sao thoi, k len 4 sao dc', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID053   ', N'Minh', CAST(N'2015-02-11T01:24:00.000' AS DateTime), 3, N'the nay chi 3 sao thoi', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID054   ', N'Hang', CAST(N'2015-02-10T01:26:00.000' AS DateTime), 3, N'xung dang 3 sao v', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID055   ', N'Nguyen', CAST(N'2015-02-09T00:06:00.000' AS DateTime), 3, N'3 sao, k hon k kem', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID056   ', N'Dai', CAST(N'2015-02-09T00:04:00.000' AS DateTime), 5, N'toi thay chat luong tuyet voi ma', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID057   ', N'Dat', CAST(N'2015-02-08T23:01:00.000' AS DateTime), 5, N'toi cung thay the', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID058   ', N'Linh', CAST(N'2015-02-06T22:49:00.000' AS DateTime), 5, N'uhm, toi dong y la cho nay cung k te', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID059   ', N'Trang', CAST(N'2015-02-06T01:19:00.000' AS DateTime), 5, N'cho nay k te dau', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID060   ', N'Huong', CAST(N'2015-02-05T00:12:00.000' AS DateTime), 4, N'cho nay k te that, nhung k xung 5*', N'HS0006    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID061   ', N'Phuong', CAST(N'2015-02-03T01:54:00.000' AS DateTime), 4, N'toi nghi nen de 4*', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID062   ', N'Thuy', CAST(N'2015-01-31T01:32:00.000' AS DateTime), 4, N'4* cho homsay cai thien hon', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID063   ', N'Minh', CAST(N'2015-01-31T01:24:00.000' AS DateTime), 5, N'toi nghi cho nay se duoc 5 sao', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID064   ', N'Hang', CAST(N'2015-01-31T00:40:00.000' AS DateTime), 5, N'nen dc 5 sao', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID065   ', N'Nguyen', CAST(N'2015-01-30T23:52:00.000' AS DateTime), 4, N'4 sao thoi, sao len 5 sao dc', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID066   ', N'Dai', CAST(N'2015-01-30T22:50:00.000' AS DateTime), 2, N'qua te doi voi toi, 2 sao', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID067   ', N'Dat', CAST(N'2015-01-28T23:33:00.000' AS DateTime), 3, N'haizz, qua te, khuyen khich thoi', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID068   ', N'Linh', CAST(N'2015-01-26T00:09:00.000' AS DateTime), 3, N'khuyen khich thoi, te qa', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID069   ', N'Trang', CAST(N'2015-01-24T22:51:00.000' AS DateTime), 3, N'khong xung dang, 3 sao thoi', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID070   ', N'Huong', CAST(N'2015-01-22T00:15:00.000' AS DateTime), 3, N'nen la 3 sao', N'HS0007    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID071   ', N'Phuong', CAST(N'2015-01-21T00:03:00.000' AS DateTime), 5, N'tuyet, chat luong qa tot', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID072   ', N'Thuy', CAST(N'2015-01-19T01:26:00.000' AS DateTime), 5, N'khong co gi che ca', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID073   ', N'Minh', CAST(N'2015-01-18T23:38:00.000' AS DateTime), 5, N'…!!!!', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID074   ', N'Hang', CAST(N'2015-01-17T00:07:00.000' AS DateTime), 5, N'Amazing!!!!!', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID075   ', N'Nguyen', CAST(N'2015-01-16T01:37:00.000' AS DateTime), 4, N'good job!!!! :D', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID076   ', N'Dai', CAST(N'2015-01-14T01:02:00.000' AS DateTime), 5, N'Nice….!!!!', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID077   ', N'Dat', CAST(N'2015-01-14T00:17:00.000' AS DateTime), 5, N'Very NICE !!! :D', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID078   ', N'Linh', CAST(N'2015-01-13T00:07:00.000' AS DateTime), 5, N'I like this :>', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID079   ', N'Trang', CAST(N'2015-01-11T01:46:00.000' AS DateTime), 2, N'cho 2 sao vi khong co tien book :)', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID080   ', N'Huong', CAST(N'2015-01-08T00:38:00.000' AS DateTime), 3, N'phong ngu hoi tu, toi k thich dieu nay', N'HS0008    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID081   ', N'Phuong', CAST(N'2015-01-06T00:47:00.000' AS DateTime), 1, N'day la noi te nhat toi tung den', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID082   ', N'Thuy', CAST(N'2015-01-03T00:29:00.000' AS DateTime), 2, N'cuc ky khong hai long, 2 sao khuyen mai', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID083   ', N'Minh', CAST(N'2015-01-02T00:46:00.000' AS DateTime), 3, N't k thich, nhung khuyen khich', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID084   ', N'Hang', CAST(N'2015-01-02T00:40:00.000' AS DateTime), 2, N'toi k muon quay lai day nua', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID085   ', N'Nguyen', CAST(N'2014-12-28T00:58:00.000' AS DateTime), 3, N'qua te, khuyen khich thoi', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID086   ', N'Dai', CAST(N'2014-12-23T01:20:00.000' AS DateTime), 3, N't se cho them 1 co hoi nua', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID087   ', N'Dat', CAST(N'2014-12-22T01:24:00.000' AS DateTime), 3, N'3*', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID088   ', N'Linh', CAST(N'2014-12-17T23:21:00.000' AS DateTime), 1, N'QUA TE!', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID089   ', N'Trang', CAST(N'2014-12-16T00:15:00.000' AS DateTime), 1, N'TE!', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID090   ', N'Huong', CAST(N'2014-12-15T01:23:00.000' AS DateTime), 1, N'TOI CUC KY KHONG THICH NOI NAY', N'HS0009    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID091   ', N'Phuong', CAST(N'2014-12-14T01:23:00.000' AS DateTime), 4, N'cung duoc, t se cho 4 sao', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID092   ', N'Thuy', CAST(N'2014-12-14T00:20:00.000' AS DateTime), 4, N'den day nghi duong thi kha tuyet', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID093   ', N'Minh', CAST(N'2014-12-08T00:21:00.000' AS DateTime), 5, N'rat tuyet voi', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID094   ', N'Hang', CAST(N'2014-12-03T00:09:00.000' AS DateTime), 5, N't k muon che j nua ca', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID095   ', N'Nguyen', CAST(N'2014-12-02T01:30:00.000' AS DateTime), 5, N'chan qa, cha co j che ca', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID096   ', N'Dai', CAST(N'2014-12-01T01:15:00.000' AS DateTime), 5, N'sao phuc vu tot the nay, 5 sao thoi :)', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID097   ', N'Dat', CAST(N'2014-11-30T22:59:00.000' AS DateTime), 4, N'good', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID098   ', N'Linh', CAST(N'2014-11-29T01:21:00.000' AS DateTime), 5, N'duoc, t rat hai long', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID099   ', N'Trang', CAST(N'2014-11-28T23:29:00.000' AS DateTime), 5, N't hai long', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID100   ', N'Huong', CAST(N'2014-11-28T00:31:00.000' AS DateTime), 4, N'tam duoc', N'HS0010    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID101   ', N'Mary', CAST(N'2017-01-18T00:11:00.000' AS DateTime), 5, N'Beautiful stay!It is close to the center and the railway station. The room was very pleasant, it was cozy and clean. ', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID102   ', N'Anna', CAST(N'2017-01-17T01:40:00.000' AS DateTime), 5, N'Breakfast was excellent and incredibly varied. The hotel team has always been friendly, patient and helpful. That impressed me the most.', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID103   ', N'Emma', CAST(N'2016-12-29T00:24:00.000' AS DateTime), 5, N'Our Valentine''s Day Offer was a wonderful treat - a historic Jugend-style room in the 9th floor.', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID104   ', N'Elizabeth', CAST(N'2016-12-24T22:53:00.000' AS DateTime), 5, N'The room itself had a nice red brick wall, a king size bed and all the necessary amenities.', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID105   ', N'Minnie', CAST(N'2016-12-24T22:34:00.000' AS DateTime), 5, N'The view was great, we could see e.g. the huge clock tower of the main Railwaystation and other towers. The sunset was breathtaking in the winter time (no Nordic Lights, though).
We had a sauna of our own with two showers. 80 degrees Celsius was just righ', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID106   ', N'Margaret', CAST(N'2016-12-23T23:22:00.000' AS DateTime), 5, N'Breakfast was abundant with porridge, various cereals and yoghurts, fresh fruit, crisp vegetables, a selection of Finnish bread, Karelian pies, etc. The coffee and juices were good to Finnish taste, too.', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID107   ', N'Ida', CAST(N'2016-12-18T23:01:00.000' AS DateTime), 5, N'The breakfast was delicious and the hotel was very kind to pack us a breakfast when we were checking out earlier than the restaurant''s opening hour. The staff was also kind and helpful with anything, with perfect English, so there were no miscommunication', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID108   ', N'Alice', CAST(N'2016-12-09T23:59:00.000' AS DateTime), 5, N'Comfy and close to everything.Can be easily reached and most of the shopping centers and sights are nearby. The room was comfortable and I''m a big fan of scandinavian bathroom structures, they are very practical altogether. ', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID109   ', N'Bertha', CAST(N'2016-12-09T23:20:00.000' AS DateTime), 5, N'The hotel room was clean, nice and spacious. Breakfast offered with a wide variety of food. The staff were friendly and helpful. The location is just perfect for a walk around the city centre', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID110   ', N'Sarah', CAST(N'2016-12-03T22:39:00.000' AS DateTime), 5, N'Only stayed 2 nights but the hotel has standard rooms and very clean. All the staff from reception to restaurant were really friendly.', N'HS0011    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID111   ', N'Annie', CAST(N'2016-11-27T22:29:00.000' AS DateTime), 5, N'Hospitality, kindness, cleanliness ans service were there as expected. I can only advise you to continue this way same if it would be nice to offer some croissants and pains au chocolats at the breakfast…', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID112   ', N'Clara', CAST(N'2016-11-25T00:15:00.000' AS DateTime), 5, N'Be sure if I had to come back in Helsinki in the future, I’ll come back there ! And I’d recommand certainly your Hôtel."', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID113   ', N'Ella', CAST(N'2016-11-24T23:28:00.000' AS DateTime), 5, N'Great hotel for our last night in Helsinki
We arrived before 12pm and we could have a room straight away instead of just dropping the bags in the luggage area! Staff was friendly, hotel was nice, room was clean and big enough, space for luggage, tea/coffe', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID114   ', N'Florence', CAST(N'2016-11-18T22:53:00.000' AS DateTime), 5, N'We stayed for 3 nights there,great location, the room was spacious, the people working at the reception very kind and helpful, breakfast was very good!! (But no croisant!!)', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID115   ', N'Cora', CAST(N'2016-11-10T22:52:00.000' AS DateTime), 5, N'Across two mornings we sampled the homemade Bircher muesli, eggs Benedict, pancakes, an omelette, and a couple of variations on the traditional English breakfast; all excellent, with a notable shout-out to the road', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID116   ', N'Martha', CAST(N'2016-11-08T00:17:00.000' AS DateTime), 5, N'The rooms were clean, very comfortable, and the staff was amazing. They went over and beyond to help make our stay enjoyable. I highly recommend this hotel for anyone visiting downtown', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID117   ', N'Laura', CAST(N'2016-11-05T22:54:00.000' AS DateTime), 5, N'They were extremely accommodating and allowed us to check in early at like 10am. We got to hotel super early and I didn’t wanna wait. So this was a big plus. The sevice was exceptional as well. Would definitely send a friend there.', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID118   ', N'Nellie', CAST(N'2016-11-01T00:21:00.000' AS DateTime), 5, N'I had a wonderful experience at the (HN). Every staff member I encountered, from the valet to the check- in to the cleaning staff were delightful and eager to help! Thank you! Will recommend to my colleagues', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID119   ', N'Grace', CAST(N'2016-10-28T00:04:00.000' AS DateTime), 5, N'The staff at this property are all great! They all go above and beyond to make your stay comfortable. ', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID120   ', N'Carrie', CAST(N'2016-10-24T00:05:00.000' AS DateTime), 5, N'Took advantage of the downtown location to walk to dinner, check out a couple galleries, and have drinks. It was great.', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID121   ', N'Maude', CAST(N'2016-10-17T00:00:00.000' AS DateTime), 5, N'This is the perfect hotel for a weekend getaway in (L). The downtown area on Main Street is a best kept secret and the (HN) offers everything you need if you don’t feel like venturing out.', N'HS0012    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID122   ', N'Mabel', CAST(N'2016-10-09T01:32:00.000' AS DateTime), 5, N'The best hotel I’ve ever been privileged enough to stay at. Gorgeous building, and it only gets more breathtaking when you walk in.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID123   ', N'Bessie', CAST(N'2016-10-09T01:03:00.000' AS DateTime), 5, N'I have stayed at dozen of hotels in (L). This was on the top of the list of best stays/experiences ever. Staff was very hospitable and there for every need of mine. ', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID124   ', N'Jennie', CAST(N'2016-10-05T23:20:00.000' AS DateTime), 5, N'Excellent property and very convenient to USC activities. Front desk staff is extremely efficient, pleasant and helpful. Property is clean and has a fantastic old time charm.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID125   ', N'Gertrude', CAST(N'2016-10-03T23:26:00.000' AS DateTime), 5, N'Overall, I had a great experience with the (HN); staff was incredibly helpful, and the amenities were great. The room was wonderful, clean, and perfect to celebrate a birthday weekend.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID126   ', N'Julia', CAST(N'2016-09-23T00:35:00.000' AS DateTime), 5, N'Unlike some of the posts I’ve read in other places, I found the (HN) to be clean, inviting and downright classic! The staff was very friendly and consistently making sure I was comfortable. I will definitely stay there when I come back!', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID127   ', N'Hattie', CAST(N'2016-09-23T00:23:00.000' AS DateTime), 5, N'The staff at the (HN) in downtown (L) were fantastic. Great attitude. Helpful, and always available. The bed was super comfy. I will always stay at this location when traveling to or through (L).', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID128   ', N'Edith', CAST(N'2016-09-21T01:16:00.000' AS DateTime), 5, N' Everything was great at this hotel.. amazing staff that is friendly and makes customers feel welcome.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID129   ', N'Mattie', CAST(N'2016-09-15T23:00:00.000' AS DateTime), 5, N' The staff was the nicest staff I have ever encountered at a hotel. They were always friendly and asked how our stay was going every time we walked in the door. They also were able to recommend places to get any type of meal that we needed as well.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID130   ', N'Rose', CAST(N'2016-09-12T22:55:00.000' AS DateTime), 5, N'We went to the rooftop bar and had an amazing time. The atmosphere and service were great. Definitely a must do if you are looking for a good time.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID131   ', N'Catherine', CAST(N'2016-09-03T23:18:00.000' AS DateTime), 5, N'Hotel exceeded my expectations was spotless the staff was amazing and the most comfortable bed I have ever slept in.', N'HS0013    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID132   ', N'Lillian', CAST(N'2016-09-02T23:27:00.000' AS DateTime), 5, N' Lovely hotel with a wonderful restaurant. Very friendly staff.', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID133   ', N'Ada', CAST(N'2016-08-30T23:29:00.000' AS DateTime), 5, N'Love the charm of this hotel. Does not give you the routine chain hotel vibe at all. While I did not get there in time to eat at restaurant, have heard amazing reviews on the restaurant.', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID134   ', N'Lillie', CAST(N'2016-08-30T01:20:00.000' AS DateTime), 5, N' Every just melt into a bed? It was so amazing! The staff was so friendly. I’ll be back in a month!', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID135   ', N'Helen', CAST(N'2016-08-24T23:51:00.000' AS DateTime), 5, N'The bed was extremely comfortable. The room was spacious and clean. The vintage aesthetics were awesome. Wish we weren’t just passing through!', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID136   ', N'Jessie', CAST(N'2016-08-20T00:57:00.000' AS DateTime), 5, N'The hotel was wonderful. It was even better than expected. The price was amazing. There were great restaurants within walking distance. Would definitely stay there again', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID137   ', N'Louise', CAST(N'2016-08-14T23:02:00.000' AS DateTime), 5, N'Walking distance to everything downtown. Beautiful rooms, great ambiance in the hotel dining room and bar.', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID138   ', N'Ethel', CAST(N'2016-08-06T23:19:00.000' AS DateTime), 5, N'Great location. We really loved the character of the hotel. The restaurant was fantastic and staff was friendly and helpful.', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID139   ', N'Lula', CAST(N'2016-08-06T00:26:00.000' AS DateTime), 5, N'Quaint downtown hotel with super friendly staff and beautifully clean rooms. The restaurant downstairs has amazing food!', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID140   ', N'Myrtle', CAST(N'2016-07-31T23:19:00.000' AS DateTime), 5, N'Beautiful downtown hotel with nice roof top bar. Rooms have historic feel with old hard wood floors, yet modern as bathrooms have white subway tiles with TVs in each bathroom. ', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID141   ', N'Eva', CAST(N'2016-07-30T00:24:00.000' AS DateTime), 5, N'Staff is wonderful and accommodating providing upgrades when available.', N'HS0014    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID142   ', N'Frances', CAST(N'2016-07-29T00:10:00.000' AS DateTime), 5, N'Loved the Downtown Location and Atmosphere. Just about name it and you’re within walking distance.', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID143   ', N'Lena', CAST(N'2016-07-25T23:27:00.000' AS DateTime), 5, N' Friendly staff. Clean hotel. Beautiful atmosphere inside and outside around that part of the city.', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID144   ', N'Lucy', CAST(N'2016-07-18T22:39:00.000' AS DateTime), 5, N'Great location, easy to get in and out of the city. The staff was wonderful. The hotel is well maintained. The beds were very firm, too firm for my liking. The food was good. I, especially, enjoyed the view of the sunset.', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID145   ', N'Edna', CAST(N'2016-07-17T23:17:00.000' AS DateTime), 5, N'We stay here once a year at least for special events when we don’t want to drive home. Staff is always friendly. Very clean. Have never had a bad experience and it’s right in the heart of city, so you can walk to everything.', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID146   ', N'Maggie', CAST(N'2016-07-08T23:57:00.000' AS DateTime), 5, N'This is a beautiful hotel! It’s clean and has a lot of comfort items to make you feel at home. We’re in town for a stressful event and coming back to this room was very peaceful.', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID147   ', N'Pearl', CAST(N'2016-07-04T00:11:00.000' AS DateTime), 5, N'The best stay ever. The environment was pleasant and welcoming. Both check-in and check-out were professionally handled and easy.', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID148   ', N'Daisy', CAST(N'2016-07-01T23:42:00.000' AS DateTime), 5, N'Affordable price, excellent location!', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID149   ', N'Fannie', CAST(N'2016-06-26T00:29:00.000' AS DateTime), 5, N'Quite smooth reservation process, very friendly service at the desk, clean & large room for two, very quiet over the rooftops of Helsinki - a very pleasant stay at the heart of Helsinki, in the middle of practically everything!', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID150   ', N'Josephine', CAST(N'2016-06-24T00:09:00.000' AS DateTime), 5, N'Hotel muy limpio, con buen servicio, ubicación muy céntrica, a unos 5 minutos de la estación central y del centro. El desayuno buffet excelente, con mucha elección, incluso reno!!', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID151   ', N'Dora', CAST(N'2016-06-20T22:41:00.000' AS DateTime), 5, N'Location was perfect for walking to everything! Staff was helpful and breakfast was great. Room was perfect for my daughter and myself. The only thing was our room faced the main road and the traffic was noisy all night. Would definite stay here again!', N'HS0015    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID152   ', N'Rosa', CAST(N'2016-06-14T23:09:00.000' AS DateTime), 5, N'The hotel located in the city center and lots of public transport, nearby restaurants, bars etc. The hotel staff are nice and friendly. Breakfast not bad. The room a bit small but the bed is really comfortable.', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID153   ', N'Katherine', CAST(N'2016-05-27T23:14:00.000' AS DateTime), 5, N'Good relaxing break! Friendly, welcoming staff. Very good location for city centre and local transport. ', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID154   ', N'Agnes', CAST(N'2016-05-27T22:52:00.000' AS DateTime), 5, N'Overall an enjoyable stay. The hotel is old and could do with some renovation, but it seems like this issue is being addressed.', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID155   ', N'Marie', CAST(N'2016-05-20T23:31:00.000' AS DateTime), 5, N'The building is older and not totally modernised, but the room we had was nice, very clean and had a very comfortable bed with a good mattress and pillows', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID156   ', N'Nora', CAST(N'2016-05-17T23:32:00.000' AS DateTime), 5, N'I has happy with my stay at the Hotel Arthur. It is very close to Helsinki railway station (about a five minute walk) clean, with friendly staff. I enjoyed the buffet breakfast. Really, no complaints - I would stay there again and recommend it to others', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID157   ', N'May', CAST(N'2016-05-09T00:47:00.000' AS DateTime), 5, N'They serve very nice breakfast and the location of the hotel is very good. No complaint from my one night stay with them. I had made use of their paid sauna service before I caught overnight bus to Rovaniemi and that was nice. Thank you for the great serv', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID158   ', N'Mamie', CAST(N'2016-05-08T00:54:00.000' AS DateTime), 5, N'This is tidy, friendly hotel that gives good value for money and the location is excellent!', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID159   ', N'Blanche', CAST(N'2016-05-07T00:07:00.000' AS DateTime), 5, N'unique, great stay, wonderful time hotel monaco, location excellent short stroll main downtown shopping area, pet friendly room showed no signs animal hair smells, monaco suite sleeping area big striped curtains pulled closed nice touch felt cosy, goldfis', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID160   ', N'Stella', CAST(N'2016-05-02T00:29:00.000' AS DateTime), 5, N'love monaco staff husband stayed hotel crazy weekend attending memorial service best friend husband celebrating 12th wedding anniversary, talk mixed emotions, booked suite hotel monte carlos, loaned beautiful fan-tanned goldfish named joliet weekend visit', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID161   ', N'Ellen', CAST(N'2016-04-18T23:44:00.000' AS DateTime), 5, N'cozy stay rainy city, husband spent 7 nights monaco early january 2008. business trip chance come ride.we booked monte carlo suite proved comfortable longish stay, room 905 located street building, street noise not problem view interesting rooms building ', N'HS0016    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID162   ', N'Nancy', CAST(N'2016-04-15T22:41:00.000' AS DateTime), 5, N'hotel stayed hotel monaco cruise, rooms generous decorated uniquely, hotel remodeled pacific bell building charm sturdiness, everytime walked bell men felt like coming home, secure, great single travelers, location fabulous, walk things pike market space ', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID163   ', N'Effie', CAST(N'2016-04-11T01:34:00.000' AS DateTime), 5, N'excellent stayed hotel monaco past w/e delight, reception staff friendly professional room smart comfortable bed, particularly liked reception small dog received staff guests spoke loved, mild negative distance uphill ppmarket restaurants 1st, overall gre', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID164   ', N'Sallie', CAST(N'2016-04-11T00:36:00.000' AS DateTime), 5, N'fantastic stay monaco seattle hotel monaco holds high standards kimpton hotel line, having stayed kimpton hotels cities easily say seattle hotel monaco best seen, service attentive prompt, based member kimpton loyalty program upgraded 10th floor room grea', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID165   ', N'Nettie', CAST(N'2016-04-10T23:39:00.000' AS DateTime), 5, N'good choice hotel recommended sister, great location room nice, comfortable bed- quiet- staff helpful recommendations restaurants, pike market 4 block walk, stay,  ', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID166   ', N'Della', CAST(N'2016-04-10T01:45:00.000' AS DateTime), 5, N'service service service spent week g-friend labor day bumbershoot, gray line airporter drops corner hotel 10 person cab 28 total make sure flat rate town car 38. location central downtown street w. it__Ã‡_Ã©_ quick walk points tourist business, yes space ', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID167   ', N'Lizzie', CAST(N'2016-04-02T23:08:00.000' AS DateTime), 5, N'excellent stay, delightful surprise stay monaco, thoroughly enjoyed stay, room comfortable lovely amenities friendly staff, especially enjoyed hour indulgence, definitely come,  ', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID168   ', N'Flora', CAST(N'2016-04-02T23:05:00.000' AS DateTime), 5, N'hotel monaco great location service hotel monaco centrally located provides excellent service, recently stayed 4/23-5/1, originally checked slight problem informed booked queen beds expedia room king bed, fortunately fellow guest checking time swapped roo', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID169   ', N'Susie', CAST(N'2016-04-01T23:57:00.000' AS DateTime), 5, N'gem hotel absolute gem, small great service, room not huge certainly adequate clean comfortable, ask room high floor great view downtown space needle.best attentive staff, concierges friendly helpful, shuttle drivers went way literally, victoria ferry pic', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID170   ', N'Maud', CAST(N'2016-03-26T23:56:00.000' AS DateTime), 5, N'remarkable hotel needed days booked inn based tripadvisor reviews, great hotel, staff professional accomodating, town car service available airport immaculate rooms spacious bathroom great location, not great hotel price great hotel, room facing inner cou', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID171   ', N'Mae', CAST(N'2016-03-26T23:02:00.000' AS DateTime), 5, N'great location friendly staff stayed hotel easter throughly enjoyed time, superably located exploring seattle especially market rooms good size.the staff not friendly helpful reception area welcoming.our room exit stairwell night hear rumbling assume like', N'HS0017    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID172   ', N'Etta', CAST(N'2016-03-19T23:39:00.000' AS DateTime), 5, N'excellent way stayed inn market memorial day weekend, room large great view water sure request way advance, hotel quiet fully booked crowded, service impeccable staff well-mannered friendly, ca n''t fault anything.it great location right pike place market ', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID173   ', N'Harriet', CAST(N'2016-03-13T23:14:00.000' AS DateTime), 5, N'outstanding choice reserved city view room night week, checkin helpful desk staff amy gave complimentary upgrade 8th floor water view, access large deck overlooks seemingly, checkin housekeeping valet services checkout smooth friendly, pike place market c', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID174   ', N'Sadie', CAST(N'2016-03-08T22:52:00.000' AS DateTime), 5, N'great hotel great hotel, good sized clean rooms, helpful staff, unbeatable location, walk door pikes market original starbucks, hotel walked underground tour monorail space needle duck tours, stay,  ', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID175   ', N'Caroline', CAST(N'2016-03-01T23:52:00.000' AS DateTime), 5, N'nice place, lunatic 20000+ miles flying space days night kill seattle early trans-con flight nyc, night original plan needed hotel none prebooked.this place recommended just block excellent irish pub kells just happened ended in.just room left 220 tax.exc', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID176   ', N'Katie', CAST(N'2016-02-27T01:24:00.000' AS DateTime), 5, N'boutique charmer great location wife recently spent 5 nights inn market attended convention, nice time small comfortably furnished hotel great location just hill pike place market, walk convention center 8 blocks east pretty easy steep 1/2 block adjacent ', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID177   ', N'Lydia', CAST(N'2016-02-25T22:36:00.000' AS DateTime), 5, N'loved inn inn market awesome, not beat location right market, room large beds really comfortable, room partial view elliot bay, n''t miss rooftop deck best view seattle short space needle, staff friendly, highly recommended, staying future,  ', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID178   ', N'Elsie', CAST(N'2016-02-24T23:36:00.000' AS DateTime), 5, N'n''t asked better hotel experience, hotel perfect, stayed townhouse suite nights wish stayed month, soon walked room opened windows million dollar view, skyline city pike market literally 50 feet away water mountains distance, room levels kitchenette livin', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID179   ', N'Kate', CAST(N'2016-02-24T00:55:00.000' AS DateTime), 5, N'wonderful location great beds pretty rooms inn market lived positive reviews, tourists car location n''t better, countless excellent restaurants easy walking distance, rainy able explore area race hotel warm got wet cold socal little tolerance weather, sta', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID180   ', N'Susan', CAST(N'2016-02-20T00:01:00.000' AS DateTime), 5, N'tempur-pedic beds, minute literally driving past way hotel decided stay, great, staff extremely helpful accommodating room really comfortable clean location excellent, atmosphere location hotel great choice previously stayed grand hyatt returning, room in', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID181   ', N'Mollie', CAST(N'2016-02-14T23:03:00.000' AS DateTime), 5, N'loved inn stayed inn market 7/11/05 7/18/05, location hotel perfect sightseeing getting seattle car n''t want drive seattle, pikes market street waterfront steps monorail space needle short walk plenty great places eat short walk cab ride, service conceirg', N'HS0018    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID182   ', N'Alma', CAST(N'2016-02-14T22:47:00.000' AS DateTime), 5, N'loved inn husband wanted romantic away night, inn perfect met imagined, rooms clean quiet comfortable bath robes nice touch, staff helpful, location great good restaurants walking distance market right fun visit time free bus service close visit sites cit', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID183   ', N'Addie', CAST(N'2016-02-13T00:36:00.000' AS DateTime), 5, N'ace hotel awesome, stayed seattle ace hotel 5 days loved, great location belltown directly opposite macrina bakery quite possibly best breakfast/brunch/lunch place seattle wtih fabulous baked goods.all staff friendly helpful, check-in friendly receptionis', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID184   ', N'Georgia', CAST(N'2016-02-12T00:41:00.000' AS DateTime), 5, N'perfect way, stayed ace seattle short time august, perfect hotel, things need none things n''t, great design super comfy great location, staff friendly knew cool places helpful way, rooms super stylie great art ammenities really need, loved place planning ', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID185   ', N'Eliza', CAST(N'2016-02-10T00:29:00.000' AS DateTime), 5, N'great hotel non-traditional stay true feel seattle, actually stayed ace 2 new years eve ago live seattle, popped occasion make sure route friends people visiting seattle ace.it downtown busy street 1st ave rooms interior no view.but rooms funky modern roo', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID186   ', N'Lulu', CAST(N'2016-02-09T00:24:00.000' AS DateTime), 5, N'great hotel hotel nice room really comfortable clean, location pretty good blocks pike place market waterfront, definitely stay seattle,  ', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID187   ', N'Nannie', CAST(N'2016-02-08T01:37:00.000' AS DateTime), 5, N'great stay elevators, agree previous posts hotel elevators, stayed 4 nights 8/5 8/9, checked room early given corner club room 34th floor fabulous views elliott bay space needle lake union, bed great, think slept better weeks, morning club level continent', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID188   ', N'Lottie', CAST(N'2016-02-04T01:22:00.000' AS DateTime), 5, N'good experience having booked minute escape university tower hotel review proved excellent minute find.central clean rooms good views albeit rooms exec levels n''t exactly spacious.try book executive rooms possible good choice breakfast hors d''oeuvres day ', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID189   ', N'Amanda', CAST(N'2016-02-02T23:52:00.000' AS DateTime), 5, N'loved inn queen anne really great stay, great staff continental breakfast locationsuite included bedroom lounge room kitchen 2 walk-in robes den,  ', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID190   ', N'Belle', CAST(N'2016-01-28T00:41:00.000' AS DateTime), 5, N'absolutely charming good value stayed numerous hotels seattle characterless star chains suites westin olympic past 45 plus years, inn queen anne really stands crowd, just best value accommodation seattle, loved place, older converted brick apartment build', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID191   ', N'Charlotte', CAST(N'2016-01-28T00:18:00.000' AS DateTime), 5, N'nice touches arrived marqueen early hours moved noisy hotel downtown, receptionist helpful friendly colleague delivered earned bottle wine promptly room.all family friends hotel wedding, location easy reach space needle bars restaurants, welcomed use kitc', N'HS0019    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID192   ', N'Rebecca', CAST(N'2016-01-23T22:39:00.000' AS DateTime), 5, N'perfect bride/groom guests, husband chose marqueen wedding hotel july, talking hotel seattle marqueen best rates rooms/amenities run stay 3 nights 4th free- check website deals, excellent location amazingly easy work, offered small block rooms needing gua', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID193   ', N'Ruth', CAST(N'2016-01-19T22:33:00.000' AS DateTime), 5, N'gorgeous hotel great hotel huge elegant rooms, clean staff friendly helpful, fantastic value money great location interesting views seattle window seconds away seattle center, recommend anybody,  ', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID194   ', N'Viola', CAST(N'2016-01-18T23:39:00.000' AS DateTime), 5, N'perfect needs marqueen nice change typical boxy hotel room, like brand new not love sense history appreciate marqueen, advise trip advisor asked room not bothered noise fact thought maybe ones not case, apartment nice equipped kitchen space, proximity mar', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID195   ', N'Olive', CAST(N'2016-01-18T23:36:00.000' AS DateTime), 5, N'gem, just returned second delightful stay year mayflower park, 5th floor suite lovely sitting room separate bedroom, husband normally rises earlier perfect arrangement, wet sink bar coffee maker sitting room allows sit desk write enjoys morning coffee, co', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID196   ', N'Amelia', CAST(N'2016-01-17T00:51:00.000' AS DateTime), 5, N'best bar lobby meet friend year, pop elevator oliver great place drinks people watching, great location,  ', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID197   ', N'Hannah', CAST(N'2016-01-17T00:19:00.000' AS DateTime), 5, N'mayflower park hotel-great location great hotel enjoyed night stay mayflower park hotel august 2005. busy time seattle ring cycle opera week upgraded suite pleasant surprise, wet bar coffeemaker mini-refigerator sink large living area desk free wireless i', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID198   ', N'Jane', CAST(N'2016-01-15T02:22:00.000' AS DateTime), 5, N'trust great, just returned trip seattle, booked mayflower park hotel based comments site thought share experience add mix, happy stayed, request early check-in rollaway family package tickets ready waiting arrived, room fantastic children talking great ho', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID199   ', N'Virginia', CAST(N'2016-01-11T22:40:00.000' AS DateTime), 5, N'wonderful hotel, just spent nights mayflower park wonderful experience, neat old hotel lot charm, staff friendly concierge folks helpful, hardly noise rooms, good beds not rock-hard like hotels, oliver bar bit pricey convenient better nonsmoking like rest', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID200   ', N'Emily', CAST(N'2016-01-04T00:29:00.000' AS DateTime), 5, N'awesome location helpful staff clean rooms stayed moore hotel celebrate special occasion budget getaway downtown seattle, friendly staff offered helpful dining suggestions surprised spectacular room fifth floor, amazing close waterfront attractions walkin', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID201   ', N'Matilda', CAST(N'2016-01-03T00:44:00.000' AS DateTime), 5, N'moore hotel greatest place charming quaint friendly, great location ca n''t beat price 10 foot pole, love little shops block underpants jewelry toys stop shopping n''t need practical- nitelite bar downstairs awesome,  ', N'HS0020    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID202   ', N'Irene', CAST(N'2015-12-25T23:02:00.000' AS DateTime), 5, N'stay, stayed moore 3 nights- n''t better time, building old extra charming loved staff wireless network, great location right pike place market moore theater lots cute little independant shops, nice views cheap n''t believe, bar downstairs excellent decorat', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID203   ', N'Kathryn', CAST(N'2015-12-24T00:47:00.000' AS DateTime), 5, N'moore best great practical hotel outstanding price, walking distance, great friendly staff, great price great location, room simple bathrooms claw feet tubs definately visit,  ', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID204   ', N'Esther', CAST(N'2015-12-23T23:51:00.000' AS DateTime), 5, N'deal, picked moore basis reviews n''t disappointed, great seattle location close, rates reasonable larger room immaculately clean spacious comfortable, does n''t little things like shampoo hair dryers, knew brought, staff helpful provided internet access lo', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID205   ', N'Willie', CAST(N'2015-12-21T00:51:00.000' AS DateTime), 5, N'great little place fantastic staff makes place excellent exceptional staff, bob ed, love, moore hotel situated stewart virginia 2nd ave. just block pike place, major attractions easy reach foot free downtown metro bus, n''t pre-arranged transport bus 194 a', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID206   ', N'Henrietta', CAST(N'2015-12-17T22:32:00.000' AS DateTime), 5, N'just right love old buildings old hotels, room corner floor, directly fabulous seattle public library, room perfectly small bathroom great, love old deep porcelain bathtub endless hot water, makes love room, one-piece modern sink stunning know, walked fer', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID207   ', N'Ollie', CAST(N'2015-12-17T22:31:00.000' AS DateTime), 5, N'comfy super location, place fabulous, room little small coming nyc no biggie no pun intended, bed linens really nice duvet cover king size pillows, shower fantastic provided bathrobe, think best ammenities congierge, provided colorful map city gave really', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID208   ', N'Amy', CAST(N'2015-12-17T00:58:00.000' AS DateTime), 5, N'stay tonight, slept wonderful, love comforters double sheets, kids loved indoor pool morning hot chocolate, left upscale shower samples not typical brands, got room service dinner nights n''t terribly expensive actually tasted good, parking does cost 21 bu', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID209   ', N'Rachel', CAST(N'2015-12-16T23:05:00.000' AS DateTime), 5, N'great business hotel stayed hotel times year business really good experience overall, staff members encountered friendly desk staff staff members encountered elevators, rooms immaculate hotel well-maintained, room service quick complimentary beverage serv', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID210   ', N'Sara', CAST(N'2015-12-13T22:59:00.000' AS DateTime), 5, N'perfect convention property stayed april 7 11. attended conference held hotel.this property great location downtown seattle easy walking distance pike place market pacific place shopping convention center monorail space needle, older property way guess sl', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID211   ', N'Estella', CAST(N'2015-12-13T00:07:00.000' AS DateTime), 5, N'excellent choice great choice stay close airport right street, room lovely price right booked hotels, room quiet offered, just aware parking 15.00 overnight,  ', N'HS0021    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID212   ', N'Theresa', CAST(N'2015-12-11T23:29:00.000' AS DateTime), 3, N'good news/ bad news seattle just night opted location price lack air conditioning room quite uncomfortably warm large screened window ceiling bureau fan going speed, location prime walked right street wonderful tour seattle library walked street pike mark', N'HS0022    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID213   ', N'Augusta', CAST(N'2015-12-10T00:57:00.000' AS DateTime), 4, N'small good value spent nights pacific plaza not overly impressed hotel room perfectly adequate needed, bed quite comfortable pillows small bit squished, room contained queen-sized bed large upholstered chair medium dresser large television set, bathroom s', N'HS0023    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID214   ', N'Ora', CAST(N'2015-12-06T23:40:00.000' AS DateTime), 4, N'great deal great location, traveling stayed perfect, yes small like european hotels sleeping cares, charming unique, best clean, walking distance staff super helpful, n''t someplace want cram family definite good deal travelers,  ', N'HS0024    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID215   ', N'Pauline', CAST(N'2015-12-06T22:37:00.000' AS DateTime), 3, N'better just got week seattle loved minute, pacific plaza good buy use improvement, 8th floor heat builidng rise room, room non-smoking internal ventilation draw smoke rooms, staff courteous helpful location good,  ', N'HS0025    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID216   ', N'Josie', CAST(N'2015-12-06T00:02:00.000' AS DateTime), 4, N'happy hotel family husband toddler stayed week house hunting seattle, room located 23rd floor view space needle not facing i-5 water, felt lucky renovated room, sister family spent night 18th floor half-way renovated room, bathroom needed updating old, ma', N'HS0026    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID217   ', N'Lola', CAST(N'2015-11-30T00:48:00.000' AS DateTime), 4, N'good place stay stayed nights end august 2008. impressions n''t great building looks little long tooth main highway lobby dated room large clean bathroom, hotel location n''t bad easy walking distance downtown attractions steep hill doorstep tough negotiate', N'HS0027    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID218   ', N'Sophia', CAST(N'2015-11-29T00:51:00.000' AS DateTime), 1, N'upgrade outdated arrived given junior suite marriott silver status, upgraded room joke, switches broken linens old bed sagged lcd tv sitting radiator not bed, addition nearly impossible king size bed no walking room, room away highway road noise bad, wife', N'HS0028    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID219   ', N'Leona', CAST(N'2015-11-29T00:34:00.000' AS DateTime), 4, N'alright check great let check early, requested got mini refrigerator, quite walking distance pike place, nice supermarket block away, room ok,  ', N'HS0029    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID220   ', N'Anne', CAST(N'2015-11-27T23:43:00.000' AS DateTime), 1, N'dirty place, watch, limited english used, reading reviews sounds like complete different hotel stayed, stayed 9/12-9/15 room club level floor 26. say rooms needed updating understatement, not usually care decade style problem decades dirt cause room itch ', N'HS0030    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID221   ', N'Mildred', CAST(N'2015-11-26T22:59:00.000' AS DateTime), 4, N'great deal priceline bid win, live vancouver bc spend weekends seattle, having used priceline price function times happy renaissance, nicer crowne plaza red lion waaaay better sketchy holiday inn express stuck priceline.the renaissance lobby lovely staff ', N'HS0031    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID222   ', N'Ann', CAST(N'2015-11-24T00:54:00.000' AS DateTime), 4, N'great location friendly staff comfortable beds got great deal priceline 100/night treated paid price, room nice comfortable beds complimentary coffee cocoa nice start day, location makes easy sites hills make walk little bit exercise, grayline shuttle sea', N'HS0032    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID223   ', N'Beulah', CAST(N'2015-11-21T00:03:00.000' AS DateTime), 2, N'yuck, stayed hotel nights earlier month, stayed number renaissance hotels states europe happy, read reviews surprised mixed report felt worth risk trying use remaining marriott points free stay category 5 hotel bad, shocked, room straight 70s earlier, wor', N'HS0033    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID224   ', N'Callie', CAST(N'2015-11-19T23:24:00.000' AS DateTime), 4, N'nice hotel, good check fast staff friendly, breakfast cafe good expensive.the rooms clean beds comfortable, hotel centrally located walking distance quite attractions, 12 year old son loved indoor pool, floor great views, hung night.the bad, traffic east ', N'HS0034    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID225   ', N'Lou', CAST(N'2015-11-16T23:08:00.000' AS DateTime), 1, N'worst hotel experience thinking booking room hotel just n''t, traveled seattle 3 work colleagues seminar, booked room priceline asking 3-star hotel downtown seattle got reservations renaissance supposedly 4-star hotel, disaster half got rooms i-5 freeway b', N'HS0035    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID226   ', N'Delia', CAST(N'2015-11-13T01:24:00.000' AS DateTime), 2, N'enjoyed stay stayed hotel nights, water temperature shower barely luke warm calls desk problem fixed, staff friendly restaurant breakfast buffet nice, huge storm hardly noticable tv reception n''t big problem, overall happy accomodations stay,  ', N'HS0036    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID227   ', N'Eleanor', CAST(N'2015-11-12T23:00:00.000' AS DateTime), 4, N'nice hotel friendly staff no problem checking parking reviews suggested, hotels seattle charge parking went expecting, parking garage clean lit equipped elevator lobby hotel.the staff friendly met request smile, morning beverage option nice touch kids enj', N'HS0037    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID228   ', N'Barbara', CAST(N'2015-11-12T01:08:00.000' AS DateTime), 5, N'stay tonight, slept wonderful, love comforters double sheets, kids loved indoor pool morning hot chocolate, left upscale shower samples not typical brands, got room service dinner nights n''t terribly expensive actually tasted good, parking does cost 21 bu', N'HS0038    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID229   ', N'Iva', CAST(N'2015-11-11T00:50:00.000' AS DateTime), 5, N'great business hotel stayed hotel times year business really good experience overall, staff members encountered friendly desk staff staff members encountered elevators, rooms immaculate hotel well-maintained, room service quick complimentary beverage serv', N'HS0039    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID230   ', N'Louisa', CAST(N'2015-11-10T23:46:00.000' AS DateTime), 4, N'great service probably half star star hotel, guest services outstanding employees ask needed help walking getting hotel desk, ate hotel cafe 2nd floor quick bite checking steak sandwich tender tasted, hot water bathroom instant towels nice, paid 100 night', N'HS0040    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID231   ', N'Maria', CAST(N'2015-10-27T01:07:00.000' AS DateTime), 3, N'stayed saturday night stop flying home day, floor overlooking expressway, hear noise, restaurants walked square 4 blocks hotel nothing open 2000 saturday hotel restaurants decided not good choice, bed comfortable, today checking bank statements unexplaine', N'HS0041    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID232   ', N'Mayme', CAST(N'2015-10-23T00:17:00.000' AS DateTime), 3, N'expect saw rate online sites werent planning stay got group rate 129 room worthwhile certainly wouldnt pay seen rate 199.the room clean spacious comfortable, really great view city.the service friendly, desk pretty slow hotel fully booked busy.the pool pl', N'HS0042    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID233   ', N'Evelyn', CAST(N'2015-10-19T22:52:00.000' AS DateTime), 2, N'happier reservation hotels minute taxes paid 200 room, free coffee hot chocolate request wake-up, stayed similar boutique-style hotels cities in-room coffee fan bathroom non-chipping tiles bathroom, personally not recommend hotel desk personnel helpful re', N'HS0043    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID234   ', N'Estelle', CAST(N'2015-10-18T00:57:00.000' AS DateTime), 2, N'bad vibrations short version air conditioning hotel builds harmonic modulating vibration ducts coming basement, room air returns coming 2 minute buildup release noise drove nuts, figured nicely moved room realize problem probably hear rooms loud did not d', N'HS0044    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID235   ', N'Nina', CAST(N'2015-10-16T01:28:00.000' AS DateTime), 2, N'checked early wo n''t stay room dirty checked food substances carpet, late night let, got evening no maid service n''t provide maid service stay week, furnishings cheap room small simply not worth price, motel 6 masquerading pricier simply not worth,  ', N'HS0045    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID236   ', N'Betty', CAST(N'2015-10-10T00:52:00.000' AS DateTime), 2, N'parking fee stinks, husband booked room year half ago wonderful view city lights, unfortunately gotten 11 p.m. did n''t chance, wanted thrilled got great deal priceline days ago looked forward nice time weekend.at check-in parking car lot informed park hot', N'HS0046    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID237   ', N'Marion', CAST(N'2015-10-09T01:49:00.000' AS DateTime), 4, N'fine hotel stayed august 2004 hotel better expected, hotel internet no experience seattle environs, renaissance sits atop hill suppose nearly mile seattle straight walk seafront, walking different matter n''t stay not walk hills b n''t want pay taxi fare ho', N'HS0047    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID238   ', N'Bettie', CAST(N'2015-10-04T01:42:00.000' AS DateTime), 3, N'overpriced got friends family discount room way overpriced, location great walking various places city room tiny, no idea hilton insists making people pay internet access especially room expensive, not particularly impressive,  ', N'HS0048    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID239   ', N'Dorothy', CAST(N'2015-10-01T00:30:00.000' AS DateTime), 4, N'better previous reviews suggest stayed downtown hilton recently nights conference, apprehensive stay given negative reviews travellers, positive experience stay did not use exercise facility business features, suggestion requested upper floor room view pu', N'HS0049    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID240   ', N'Luella', CAST(N'2015-09-28T22:47:00.000' AS DateTime), 1, N'horrible customer service worst hilton possibly worst hotel, trying review guidelines feel important people know kinds business practices ran into.we stayed hilton nights second night having wedding reception hilton.all booking went smoothly room decent e', N'HS0050    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID241   ', N'Inez', CAST(N'2015-09-26T23:22:00.000' AS DateTime), 1, N'agree worst hilton, absolute worst hilton stayed, gold hh members travel lot absolute worst hilton world, leg week vacation 10 year old daughter took hilton properties south lake tahoe ca way whistler bc, rate hiltons excellentfirst charge 9.95 night use ', N'HS0051    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID242   ', N'Lela', CAST(N'2015-09-26T02:09:00.000' AS DateTime), 5, N'perfect convention property stayed april 7 11. attended conference held hotel.this property great location downtown seattle easy walking distance pike place market pacific place shopping convention center monorail space needle, older property way guess sl', N'HS0052    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID243   ', N'Rosie', CAST(N'2015-09-25T01:16:00.000' AS DateTime), 3, N'good location average rooms great exec lounge stayed daughters downtown hilton property night holiday weekend, nice view bay buildings got way, desk staff polite helpful did treat older guests little disrespect, parking joke 26.00 nite, positive executive', N'HS0053    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID244   ', N'Allie', CAST(N'2015-09-25T01:13:00.000' AS DateTime), 1, N'stay plenty nice hotels seattle, not, terrible stay bellman lost luggage phones did n''t work dirty sheets letter manager answered acknowledged, better staying,  ', N'HS0054    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID245   ', N'Millie', CAST(N'2015-09-24T01:12:00.000' AS DateTime), 3, N'average facilities need overhaul feel dated, service ok. reason stay good rate need central location,  ', N'HS0055    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID246   ', N'Janie', CAST(N'2015-09-23T01:56:00.000' AS DateTime), 2, N'no miss hotel vanish no miss, hotel far jewel hilton family crown, long-in-the-tooth, room carpet pronounced grease stain temperature difficult control, room pooly lit, taking elevators thrill ride half time floor number display elevator did n''t work miss', N'HS0056    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID247   ', N'Cornelia', CAST(N'2015-09-21T01:13:00.000' AS DateTime), 5, N'excellent choice great choice stay close airport right street, room lovely price right booked hotels, room quiet offered, just aware parking 15.00 overnight,  ', N'HS0057    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID248   ', N'Victoria', CAST(N'2015-09-17T23:51:00.000' AS DateTime), 4, N'posh hotel husband stayed hilton seattle september 2003 night really liked, stayed queen room bed, bed linens wall paper furniture bathroom really nice, nice view, centrally located, reserved room hotwire.com room 100,  ', N'HS0058    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID249   ', N'Ruby', CAST(N'2015-09-17T00:38:00.000' AS DateTime), 4, N'ok price people agree hotel ok price, reason given 4 instead 3 points think having returned 4 week united states trip hotel average prize charge. 99 high season people including average breakfast located not far downtown seattle sounds like pretty good de', N'HS0059    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID250   ', N'Winifred', CAST(N'2015-09-15T00:01:00.000' AS DateTime), 3, N'just fine make minute trip seattle conventions going closest hotel downtown area, arrive dingy 70 exterior does n''t lot ease mind nor does location room things improve, newly renovated clean, bed quite comfortable room quiet despite facing busy street, ro', N'HS0060    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID251   ', N'Alta', CAST(N'2015-09-10T00:52:00.000' AS DateTime), 2, N'ok just need clean space sleep just finished 5-night stay comfort suites downtown seattle moved hotel road night heading home, boy surprised difference hotel facility, stayed quality inn/suites past far favorite, quality inns/suites not comfort inns/suite', N'HS0061    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID252   ', N'Celia', CAST(N'2015-09-05T00:58:00.000' AS DateTime), 3, N'seattle stay quality inn suites seattle located blocks seattle center home space needle, area originally built 1962 world fair, area appears offices t.v, stations, did walk blocks restaurants food court center house near space needle, monorail seattle cen', N'HS0062    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID253   ', N'Christine', CAST(N'2015-09-03T23:27:00.000' AS DateTime), 3, N'left hand does n''t know right doing desk clerks not helpful getting type room booked 4 month advance.the maids baggage handlers courteous helpful.ricky desk clerk know doing.the pool closed nights promises open soon.double room did not book nicer queen be', N'HS0063    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID254   ', N'Beatrice', CAST(N'2015-09-02T00:44:00.000' AS DateTime), 2, N'ok price older hotel somewhat run, check quick, room king bed small, a/c noisy, good breakfast dining area grungy looking.hotel plus convenient space needle.their transport safeco field small shuttle bus told handle 14 passengers, realizing not hold crowd', N'HS0064    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID255   ', N'Birdie', CAST(N'2015-08-28T01:11:00.000' AS DateTime), 1, N'avoid costs place nightmare, understaffed messy, arrived 10 pm guests deep desk telephone continually ringing employee, later lone employee hired week ago, room clean medicinal smell cleaning fluids overwhelming, hallways elevator dirty littered, place ab', N'HS0065    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID256   ', N'Harriett', CAST(N'2015-08-26T23:16:00.000' AS DateTime), 5, N'great location parking expensive loved location modern clean comfort amenities staff service value got 140 hotwire, definitely stay recommend friends.it located right retail core 6 blocks pike place market 5 minutes definite, major chain stores restaurant', N'HS0066    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID257   ', N'Mable', CAST(N'2015-08-22T23:10:00.000' AS DateTime), 5, N'great hotel great location, stayed august round world trip, hotel great central location tour boeing factory left lobby, hotel little shop souveniers necessities food toiletries check fast easy, room spacious mini bar locked unless asked key clean, iron i', N'HS0067    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID258   ', N'Myra', CAST(N'2015-08-22T01:08:00.000' AS DateTime), 4, N'great service location great hotel, location amazing, able walk safeco field bit walk public market shopping, chose walk sapce needle easily monorail couple blocks away.the rooms nice clean comfortable.the problem parking, self parking consisted public lo', N'HS0068    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID259   ', N'Sophie', CAST(N'2015-08-22T00:18:00.000' AS DateTime), 3, N'nice stay sheraton stayed sheraton nights july seattle area business, assigned club floor room pike st. tower, pike st. tower older rooms corridors quite clean fresh.i happened 34th floor just fitness center pool 35th floor renovation, quite bit drilling/', N'HS0069    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID260   ', N'Tillie', CAST(N'2015-08-17T23:19:00.000' AS DateTime), 4, N'great priceline rate large room live seattle suburb wanted stay downtown wedding, selected 4 star downtown seattle priceline 99, reservation accurate no problems check, given king bed old tower, room large comfortable bed, duvet traditional old blanket, k', N'HS0070    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID261   ', N'Isabel', CAST(N'2015-08-16T01:41:00.000' AS DateTime), 4, N'great location reservation mixup great hotel superb location, new tower attend conference, facilities superb food excellent, mixup fact extended original reservation definately recommend hotel,  ', N'HS0071    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID262   ', N'Sylvia', CAST(N'2015-08-14T23:10:00.000' AS DateTime), 5, N'book priceline reviewers suggested place 100 night priceline, easily accomadated request king room new tower, beautiful hotel perfect location, walked took ferry bainbridge bus locks ballard, nobody renting car stay, bus downtown airport 1.50 person takes', N'HS0072    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID263   ', N'Carolyn', CAST(N'2015-08-13T23:18:00.000' AS DateTime), 3, N'not impressive, husband attending conference hotel chose stay directly hotel conference, days spent alexis absolutely gorgeous, booked directly sheraton website unable accommodate room newly refurbished section hotel unless chose room double beds, room go', N'HS0073    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID264   ', N'Isabelle', CAST(N'2015-08-12T00:34:00.000' AS DateTime), 5, N'sheraton place stay, stayed hotel gf easter long weekend, central location downtown decided, booking easy hotel website really good price stay friday promo 129 great considering star hotel, got confirmation number called hotel reserve room union street to', N'HS0074    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID265   ', N'Leila', CAST(N'2015-08-06T00:44:00.000' AS DateTime), 5, N'relaxing stay great location sheraton hotel prime location heart downtown seattle, convenient shopping easy stroll away pike place market, stayed hotel times staff professional courteous, opening new pine street tower completion lobby renovations added at', N'HS0075    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID266   ', N'Sally', CAST(N'2015-08-05T23:20:00.000' AS DateTime), 5, N'nice place good staff clean good location used priceline price got room 2 night stay 101 night, got noon wait 2:30 check held bags just went grabbed lunch, little bit mix-up regarding request king size bed management ended upgrading corner room larger roo', N'HS0076    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID267   ', N'Ina', CAST(N'2015-08-02T00:39:00.000' AS DateTime), 5, N'great hotel stayed sheraton town wedding church reception close hotel, little did know booked hotel close seattle attractions, hotel located downtown near shopping, monterail blocks away space needle, pike place market throw fish 5 blocks 15 min walk, did', N'HS0077    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID268   ', N'Essie', CAST(N'2015-08-01T23:39:00.000' AS DateTime), 4, N'great hotel great location, stayed mlk weekend really liked hotel, users recommendations requested room new tower, flight delayed 2 a.m. pst pulled sheraton, gentleman working desk entered having difficult time figuring switch new tower, finally succeeded', N'HS0078    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID269   ', N'Bertie', CAST(N'2015-07-30T23:40:00.000' AS DateTime), 5, N'great seattle location great downtown hotel, parking problem, read reviews hotel parking 35 overnite, parked block away convention center 18.short 6 block walk pike place market, n''t miss excellent dinner hotel daily grill definitely stay,  ', N'HS0079    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID270   ', N'Nell', CAST(N'2015-07-23T23:02:00.000' AS DateTime), 4, N'thoroughly enjoyed stay spent 4 nights business july, stayed new tower room outstanding, bed comfortable, conference facilities excellent, downtown location terrific walking, problem fitness facilities limited, opened 5:30 lineup machines, 4 treadmills co', N'HS0080    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID271   ', N'Alberta', CAST(N'2015-07-21T00:02:00.000' AS DateTime), 5, N'fantastic hotel fabulous stay sheraton downtown seattle, stayed remodeled union tower king corner room.the room decorated shades chocolate brown caramel cream tasteful roomy clean.the staff helpful courteous, hotel walking distance things downtown seattle', N'HS0081    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID272   ', N'Katharine', CAST(N'2015-07-20T01:02:00.000' AS DateTime), 5, N'great hotel great location great hotel fantastic location, having read reviews trip advisor emailed hotel arrival ask room new block got, room nice big modern lovely bathroom, lobby massive check check no wait, ate restaurant evening quiet pricey lovely, ', N'HS0082    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID273   ', N'Lora', CAST(N'2015-07-17T01:14:00.000' AS DateTime), 5, N'wonderful time sheraton stayed sheraton auguest 20 2007. pleasantly surprised experience, emailed hotel earlier requesting king room new tower, did n''t really expect receive asked afterall payed 125 priceline, checkin pleasantly suprised assigned king roo', N'HS0083    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID274   ', N'Rena', CAST(N'2015-07-09T00:58:00.000' AS DateTime), 4, N'nice hotel stayed hotel times past, stay new tower, rooms new tower definitely nicer original tower, brighter fresher look, original tower rooms fine just n''t nice, pool area offers great view city, location hotel perfect parking expensive hotel stayed se', N'HS0084    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID275   ', N'Mina', CAST(N'2015-07-04T00:54:00.000' AS DateTime), 1, N'worse stay hotel, no help, concierge no idea sites city espically, finding concierge knew fishermans terminal advised taking cab did, not knowing cabs did not return area, stuck hour calling hotel assistance having tell use nothing, saw guests upset,  ', N'HS0085    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID276   ', N'Rhoda', CAST(N'2015-07-03T00:45:00.000' AS DateTime), 5, N'friendly staff comfortable beds stayed hotel tour included 6 hotel coast california, enjoyed hotel, great location tourists, close market place attractions, desk staff accommodating thanks christopher rest hotel staff friendly, loved beds comfortable, bre', N'HS0086    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID277   ', N'Mathilda', CAST(N'2015-06-21T00:44:00.000' AS DateTime), 2, N'avoid construction/refurbishment completed stayed sheraton seattle day cruise, hotel perfect location walk downtown restaurants shops, hotel construction entrance poorly marked hotel, taxi driver not pull curb construction materials street, no help luggag', N'HS0087    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID278   ', N'Abbie', CAST(N'2015-06-15T22:57:00.000' AS DateTime), 3, N'stay bellevue instead write review leisure traveller, hotel superb location beds super comfortable it.the valet parking 35.00 said, rooms not modern way starting 10 year old television, strikes odd lay-out bathroom, open door walk straight wall better sob', N'HS0088    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID279   ', N'Eula', CAST(N'2015-06-13T01:07:00.000' AS DateTime), 4, N'nice hotel beware 26 parking/valet fee, great location clean comfy stylish room great service nice views 26 parking fee, expecting 15 seriously 26 bucks, hurt cough money,  ', N'HS0089    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID280   ', N'Dollie', CAST(N'2015-06-10T23:21:00.000' AS DateTime), 4, N'nice location lovely room view good requesting view seattle fruitless did n''t realize view bay day checked clouds lifted ferry cruising grey water rewarding sun comes, room warm experience hotel rooms tend chilly cozily decorated sandy tones appealing bur', N'HS0090    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID281   ', N'Hettie', CAST(N'2015-06-08T01:05:00.000' AS DateTime), 4, N'pleases sheraton hotel towers, wife stayed sheraton nights prior alaska cruise, booked hotwire, stay expected, great room, upgrade 29th floor close pikes market.it 10 cab ride pier, purchased roundtrip ticket airporter sheraton, took cab pier, saved 15 n''', N'HS0091    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID282   ', N'Eunice', CAST(N'2015-06-07T00:45:00.000' AS DateTime), 3, N'careful book, careful room type person, husband room double beds no kings available beds took room, lounge chairs struck corner n''t really tv, going spending nights moved hotel bigger rooms inn harbor steps highly recommend.location central great shopping', N'HS0092    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID283   ', N'Fanny', CAST(N'2015-06-04T01:36:00.000' AS DateTime), 4, N'overall great hotel stayed 6 days october 2004 convention, brought wife toddler son.the location incredibly convenient downtown seattle close convention center pike marketplace restaurants.the desk staff cordial provided room wanted reasonable time.the ro', N'HS0093    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID284   ', N'Ola', CAST(N'2015-05-31T00:25:00.000' AS DateTime), 5, N'great view, great hotel stay travel seattle, stayed week march 28 night, view room terrific 23rd floor facing downtown, puget sound skyscrapers mountains, location great service great, overall great place stay,  ', N'HS0094    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID285   ', N'Lenora', CAST(N'2015-05-31T00:16:00.000' AS DateTime), 4, N'good location recently stayed 3 nights sheraton, did priceline got room 100 night fri mon, good location downtown area, walking distance pike street market little pioneer square walk not bad, highly recommend walking parking downtown area terrible, parkin', N'HS0095    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID286   ', N'Adelaide', CAST(N'2015-05-30T22:56:00.000' AS DateTime), 4, N'great hotel great location stay 9/23-9/24, happy room sheraton priceline 100/night excited able stay hotel arrived hotel did not disappoint, bed pillows comforter comfy clean, bathroom clean nice, location hotel wonderful just short walk 5 blocks pikes ma', N'HS0096    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID287   ', N'Christina', CAST(N'2015-05-28T01:23:00.000' AS DateTime), 1, N'wo n''t book, just returned seattle booked seattle sheraton towers nights, left hotel night desk did n''t inquire leaving, club floor 2 hours morning continental breakfast 2 hours evening canapes lounge closed tight, evening poured coffee used small plastic', N'HS0097    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID288   ', N'Lelia', CAST(N'2015-05-24T01:59:00.000' AS DateTime), 5, N'excellent location, enjoyed stay hotel close pike street market, nice short walk market sample fresh mini donuts spot eat award winning restaurants facing river mountains, rooms hotel clean day equipped accoutrements needed traveler, hotel staff friendly ', N'HS0098    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID289   ', N'Nelle', CAST(N'2015-05-21T23:11:00.000' AS DateTime), 4, N'great location nice hotel second stay hotel, amazing perspective changes depending price, time stayed sheraton towers baseball star weekend years paid 300.00, time used priceline stayed 100.00 plus tax, 100.00 night place steal, wonderfully central locati', N'HS0099    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID290   ', N'Sue', CAST(N'2015-05-21T01:42:00.000' AS DateTime), 5, N'loved sheraton towers seattle, great hotel great location, nicest rooms comfy beds, located blocks pike place public market shopping ideal, furla store, marla manger doll, lots great places shop eat, athenian market good, space needle cool dinner make wor', N'HS0100    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID291   ', N'Johanna', CAST(N'2015-05-13T23:09:00.000' AS DateTime), 5, N'best deal town write reviews feel compelled time, staying hotel currently times past, hotel center city 100 nearly impossible seattle, block westlake center blocks pike place market really ideal location, no-frills hotel rooms clean comfortable well-insul', N'HS0101    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID292   ', N'Lilly', CAST(N'2015-05-08T01:26:00.000' AS DateTime), 2, N'lemon 1 going check recheck 2 days later asked avenune inn heavey luggage 2 days come check desk refuesed, unbeliable, othere average hotelalways luggage recheck 2 days, avenue innis not kindness, not victoria easy hand free trip victoria carrying heavy l', N'HS0102    ')
GO
INSERT [dbo].[Reviews] ([ReviewId], [Cus_Name], [Date], [Star], [Feedback], [HomeStayId]) VALUES (N'RVID293   ', N'Tung', CAST(N'2015-05-03T23:32:00.000' AS DateTime), 3, N'decent room affordable price downtown seattle went visit friend seattle mid-september game husky stadium, chose place looking various websites affordable hotel room downtown, place fit bill.the room average typical midgrade hotel, clean, real downside wal', N'HS0103    ')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0001    ', N'Hotel rooms are rented for hotel days.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0002    ', N'The hotel reserves the right to pre-authorize your credit card upon check-in or collect a fee for the entire stay in the form of a cash deposit.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0003    ', N'In case the guest fails to appear in the hotel by 6 p.m. of the accommodation day despite making a reservation, the fee for the room shall be charged by the hotel.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0004    ', N'The hotel guest cannot hand over a room to third persons, even if the period for which the guest paid has not yet expired.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0005    ', N'Persons who are not checked in the hotel may stay in a hotel room from 07:00 a.m. till 10:00 p.m. Persons staying in a room after 10:00 p.m. must check in the hotel.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0006    ', N'The hotel accepts guests traveling with pets. Only one pet is allowed per room for an extra charge and the guest bears full responsibility for any damage caused by their pet.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0007    ', N'Pets must be leashed in common areas. Due to hygienic reasons, pets are not allowed in the hotel restaurant.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0008    ', N'The guest should notify the hotel''s reception desk immediately upon noticing any damage.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0009    ', N'The lights-out period starts at 10:00 p.m. and ends at 07:00 a.m. of the following day.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0010    ', N'When leaving the room, guests are expected to check whether the door is properly locked. Loss of a room card/key is subject to an extra charge of PLN 50.00.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0011    ', N'The hotel guest bears financial liability for damaging or destroying the hotel''s equipment and technical devices due to their fault or due to the fault of their visitors.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0012    ', N'Room heaters, electric irons and other similar devices which are not a part of the hotel room equipment are not allowed to be used inside the rooms due to the fire safety.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0013    ', N'Smoking in hotel rooms, corridor, staircase, restaurant, bar, spa&wellness zone, cloak rooms, gym and reception hall is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0014    ', N'It is prohibited to consume foodstuffs bought outside the hotel in the common area.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0015    ', N'Visitors must present personal documents for hotel records.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0016    ', N'Do not smoke in an area where is easily to cause a fire, "NO Smoking in bed".')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0017    ', N'When not being used, do not touch the fire extinguisher.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0018    ', N'Do not bother other guests, such as singing loudly, or any other noisy actions, etc.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0019    ', N'Gambling or any other behaviour that is against public morals in the hallways or guest rooms is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0020    ', N'Inviting strangers into the guest rooms, to use the facilities and or amenities is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0021    ', N'The use of guest rooms or the lobby as an office is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0022    ', N'The use of facilities and or amenities in the hallways or the guest rooms for any other purpose is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0023    ', N'Removing items from guest rooms or moving them to other places in the hotel is prohibited')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0024    ', N'Installation of any foreign item in to guest rooms or any part of our building is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0025    ', N'Hanging of any items in guest room windows that might ruin the beauty of our hotel appearance is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0026    ', N'Distribution of business flyers or any other business to clients in our hotel is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0027    ', N'Leaving unattended luggage or other items in the hallway or lobby is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0028    ', N'Ordering and delivery of food from outside our hotel is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0029    ', N'Left and unclaimed items will be kept for a period of 1 month from your departure date, unless otherwise instructed.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0030    ', N'Use of phones in guest rooms will be charged to your bill. There are public phones located in the lobby.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0031    ', N'Room check in is from 2 p.m. Check out is until 12 p.m.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0032    ', N'Rooms can only be used by guests who are duly registered at the reception with a valid identity document')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0033    ', N'Guests will be charged per night.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0034    ', N'Baby cot can be provided to a child under 2 years old upon request.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0035    ', N'Bills must be settled by cash or valid credit card, personal cheques are not accepted.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0036    ', N'Cancellation of individual reservation may occur only in written forms and be sent to the hotel via email or fax')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0037    ', N'Smoking is strictly not allowed in the hotel and violator is subject to a fine of 2,000 THB')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0038    ', N'Pets may not be brought into the Hotel.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0039    ', N'Extension of your stay without reservation is subject to room availability.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0040    ', N'There is no deposit required to make an individual room reservation.  However, a major credit card is required at the time of booking to guarantee the room and secure the reservation period.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0041    ', N'Valid photo identification required at check-in. Some rates will also require company identification.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0042    ', N'Always shut curtains in your room for your privacy.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0043    ', N'Keep noise to a minimum.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0044    ', N'A maximum of one extra bed is allowed in selected rooms for a fee.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0045    ', N'Guests must confirm their departure date upon arrival. If guests shorten their length of stay after check-in, one-night room rate and tax will be charged to the guest.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0046    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0047    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0048    ', N'Alcohol is not allowed in public areas such as the reception area, work area, lounge area, corridors, staircases, etc.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0049    ', N'Guests who check out of the hotel after 12:00PM and prior to their scheduled departure date are subject to an early departure fee of one night, plus tax.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0050    ', N'Crest Wave Boutique Hotel does NOT provide accommodations for pets. Pets are not allowed.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0051    ', N'Leaving unattended luggage or other items in the hallway or lobby is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0052    ', N'Ordering and delivery of food from outside our hotel is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0053    ', N'Left and unclaimed items will be kept for a period of 1 month from your departure date, unless otherwise instructed.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0054    ', N'Use of phones in guest rooms will be charged to your bill. There are public phones located in the lobby.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0055    ', N'Room check in is from 2 p.m. Check out is until 12 p.m.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0056    ', N'Rooms can only be used by guests who are duly registered at the reception with a valid identity document')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0057    ', N'Guests will be charged per night.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0058    ', N'Baby cot can be provided to a child under 2 years old upon request.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0059    ', N'Bills must be settled by cash or valid credit card, personal cheques are not accepted.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0060    ', N'Cancellation of individual reservation may occur only in written forms and be sent to the hotel via email or fax')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0061    ', N'Smoking is strictly not allowed in the hotel and violator is subject to a fine of 2,000 THB')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0062    ', N'Pets may not be brought into the Hotel.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0063    ', N'Extension of your stay without reservation is subject to room availability.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0064    ', N'A maximum of one extra bed is allowed in selected rooms for a fee.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0065    ', N'Guests must confirm their departure date upon arrival. If guests shorten their length of stay after check-in, one-night room rate and tax will be charged to the guest.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0066    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0067    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0068    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0069    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0070    ', N'Alcohol is not allowed in public areas such as the reception area, work area, lounge area, corridors, staircases, etc.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0071    ', N'Guests who check out of the hotel after 12:00PM and prior to their scheduled departure date are subject to an early departure fee of one night, plus tax.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0072    ', N'Crest Wave Boutique Hotel does NOT provide accommodations for pets. Pets are not allowed.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0073    ', N'Leaving unattended luggage or other items in the hallway or lobby is prohibited.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0074    ', N'Smoking is strictly not allowed in the hotel and violator is subject to a fine of 2,000 THB')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0075    ', N'Pets may not be brought into the Hotel.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0076    ', N'Extension of your stay without reservation is subject to room availability.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0077    ', N'A maximum of one extra bed is allowed in selected rooms for a fee.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0078    ', N'Guests must confirm their departure date upon arrival. If guests shorten their length of stay after check-in, one-night room rate and tax will be charged to the guest.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0079    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0080    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0081    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0082    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0083    ', N'Smoking is strictly not allowed in the hotel and violator is subject to a fine of 2,000 THB')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0084    ', N'Pets may not be brought into the Hotel.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0085    ', N'Extension of your stay without reservation is subject to room availability.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0086    ', N'A maximum of one extra bed is allowed in selected rooms for a fee.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0087    ', N'Guests must confirm their departure date upon arrival. If guests shorten their length of stay after check-in, one-night room rate and tax will be charged to the guest.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0088    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0089    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0090    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0091    ', N'Guests will be charged per night.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0092    ', N'A maximum of one extra bed is allowed in selected rooms for a fee.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0093    ', N'A maximum of two children under the age of 12 years old are allowed to share the room without additional charges using existing bedding (in selected rooms).')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0094    ', N'Room check in is from 2 p.m. Check out is until 12 p.m.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0095    ', N'Rooms can only be used by guests who are duly registered at the reception with a valid identity document')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0096    ', N'Guests will be charged per night.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0097    ', N'Baby cot can be provided to a child under 2 years old upon request.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0098    ', N'Bills must be settled by cash or valid credit card, personal cheques are not accepted.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0099    ', N'Cancellation of individual reservation may occur only in written forms and be sent to the hotel via email or fax')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0100    ', N'Smoking is strictly not allowed in the hotel and violator is subject to a fine of 2,000 THB')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0101    ', N'To redeem a gift certificate, guests are required to contact the hotel directly. All gift certificates are subject to hotel approval only.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0102    ', N'Guests will be charged per night.')
GO
INSERT [dbo].[Rules] ([HomeStayId], [ListRules]) VALUES (N'HS0103    ', N'Rooms can only be used by guests who are duly registered at the reception with a valid identity document')
GO
INSERT [dbo].[Slider] ([SliderID], [SliderName], [SliderImage], [AccountM]) VALUES (N'S01', N'HaNoi', N'HN.png', N'bautroikhongem')
GO
INSERT [dbo].[Slider] ([SliderID], [SliderName], [SliderImage], [AccountM]) VALUES (N'S02', N'Da Nang', N'DN.png', N'bautroikhongem')
GO
INSERT [dbo].[Slider] ([SliderID], [SliderName], [SliderImage], [AccountM]) VALUES (N'S03', N'Ho Chi Minh', N'HCM.png', N'bautroikhongem')
GO
INSERT [dbo].[Slider] ([SliderID], [SliderName], [SliderImage], [AccountM]) VALUES (N'S04', N'Da Lat', N'DL.png', N'bautroikhongem')
GO
INSERT [dbo].[Slider] ([SliderID], [SliderName], [SliderImage], [AccountM]) VALUES (N'S05', N'Quang Ninh', N'QN.png', N'bautroikhongem')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'123456cainha', N'Ho Chi Minh', N'Binh Thach', N'96 Le Van Duyet', N'Phuong 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'1danvit', N'Ha Noi', N'Hoang Mai', N'So 22, ngo 68 ', N'Dai Tu')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'2convitcon', N'Ha Noi', N'Hoan Kiem', N'so 47 Hang Bai', N'Dong Xuan')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'alice', N'Dong Thap', N'Mong Cai', N'So 195-197 Phan Xich Long', N'quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'alolao', N'Ho Chi Minh', N'Go Vap', N'70/4 Duong So 2, Phuong 3', N'Phuong 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'andi', N'Ca Mau ', N'Lang Son', N'So 5 Pham Ngoc Thach, P.Vo Thi Sau', N'quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'ariana', N'Hue', N'Thanh Hoa', N'89 Ha Huy Tap', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'aubame', N'Quang Ninh', N'My Tho', N'137C Nguyen Trai, Phuong Ben Thanh', N'quan tan phu')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'bachtuyet', N'Lam Dong', N'Phan Rang - Thap Cham', N'51B Tu Xuong, phuong 7', N'quan 3 ')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'baconga', N'Ha Noi', N'Hai Ba Trung', N'32A Ngo 762/1, Bach Dang', N'Bach Dang')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'baychulun', N'Tay Nam Bo', N'Ninh Binh', N'So 46 Thoai Ngoc Hau, Phuong Hoa Thanh', N'quan 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'bella', N'Binh Phuoc', N'Pleiku', N'72 le thanh ton', N'quan 7')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'candypop', N'Bien Hoa', N'Lai Chau', N'163 Pho Hue', N' Q. 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'congchua', N'dien bien', N'Phan Thiet', N'02 ngo duc ke', N'quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'damand', N'Lao Cai', N'Tuyen Quang', N'49 Tran Tong', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'deeper', N'Tien Giang', N'Viet Tri', N'308/2, Hoang Dieu, Binh Hien', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'ducson', N'Hai Duong', N'Song Cong', N'So 54 Nguyen Du, Phuong Thach Thang', N'quan thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'emmet', N'Hung Yen', N'Thu Dau Mot', N'30/1 Dang Thai Mai, Thac Gian', N'thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'genisit', N'Ha Giang', N'Quy Nhon', N'28 Pham Ngoc Thach, Phuong 6', N'quan 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'haianh', N'Hue', N'Thai Nguyen', N'49 Le Hong Phong, Phuoc Ninh', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'halathon', N'Ninh Binh', N'Vinh Phuc', N'122 Hoang Dieu, Hai Chau 2', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'hayle', N'Quang Ninh', N'Sa Dec', N'6 Phan Van Chuong, Phu My Hung, Phuong Tan Phu', N'quan thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'jaden', N'Lai Chau', N'Tuy Hoa', N'105 Le Duan', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'josephine', N'Ca Mau', N'Phuc Yen', N'33 Le Quy Don, Phuong 7', N'quan 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'jungleblack', N'An Giang', N'Uong Bi', N'32 Thai Phien', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'khongcoai', N'Ha Noi', N'Ha Dong', N'so 15 Yen Phuc, TDP Yen Phuc', N'Bien Giang')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'kimlieh', N'Quang Ninh', N'Vi Thanh', N'142/4, Le Duan', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'lamkhang', N'Bac Ninh', N'Hue', N'44 Le Ngoc Han', N'quan Hai Ba Trung')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'lethilo', N'Thua Thien', N'Thai Binh', N'58 Ha Huy Tap', N'thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'linda', N'Kon Tum', N'Tra Vinh', N' 181 Nguyen Hoang, Nam Duong', N'thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'madelyn', N'Quang Tri', N'Phu Ly', N'33 Le Quy Don, Phuong 7', N'quan 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'motconngan', N'Ha Noi', N'Long bien', N'212, Nguyen Van Cu', N'Bo De')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'nanbaka', N'An Giang', N'Nha Trang', N'106 Suong Nguyet Anh', N'quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'natalia', N'Ha Tinh', N'Soc Trang', N'So 51 Vo Nguyen Giap, Phuong My An', N'quan thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'nguyenphuong', N'Ho Chi Minh', N'Quan 1', N'59 Nguyen  Binh Khiem, Da Kao', N'quan Hai Ba Trung')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'nguyentung', N'Bao Loc', N'Ha Tinh', N'so 684, tang 18 khach san Sahul, pho Minh Khai', N'NULL')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'nguyenvup', N'Ho Chi Minh', N'Phu Nhuan', N'11 Nguyen Van Troi', N'Phuong 12')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'phamsang', N'Bac Giang', N'Hoa Binh', N'84 Tran Nhan Tong', N'quan Hai Ba Trung,')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'phamthoai', N'Cao Bang', N'Nam Dinh', N'393/9 Tran Hung Dao, P. Cau Kho', N'Quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'saddy', N'Ha Tinh', N'Sam Son', N'19B Nguyen Thi Dieu, phuong 6', N'quan hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'samsara', N'Lang Son', N'Thai Binh', N' 547 Nguyen Tat Thanh', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'sangp', N'Thai Binh', N'Vu thu', N'Vu Doai', N'Thon 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'skylar', N'Ha Giang', N'Quang Ngai', N'64 Pham Ngoc Thach, Phuong 6', N'quan 7')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'sofia', N'An Giang', N'Nam Dinh', N'so 2 hai trieu phuong ben nghe', N'quan 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'sophie', N'Quang Ninh', N'Rach Gia', N'2 Phan Van Chuong, Phuong Tan Phu', N'quan ngu hanh son')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'supp1', N'Ba Ria', N'Ha Tinh', N'614 Lac Long Quan', N'quan Hai Ba Trung')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'thanhtoai', N'Bao Loc ', N'Hai Duong', N'117 Bui Thi Xuan', N'NULL')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'theanh', N'Ha Tinh', N'Tam Diep', N'402 â€“ 404 Dien Bien Phu, Phuong Thanh Khe Dong', N'quan hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'thinhhuyen', N'Bien Hoa ', N'Kon Tum', N'81 Lang Ha', N'quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'tienlen', N'Dong Thap', N'Long Xuyen', N'39 Le Duan, Ben Nghe,', N'quan 1')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'tifany', N'Khanh Hoa', N'Vinh Long', N'182 Trieu Nu Vuong, Duong Nam', N'thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'trang', N'Hai Duong', N'Tam Ky', N'14 To Huu', N'thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'trangtrang', N'Hoa Binh', N'Tan An', N'560 Dien Bien Phu', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'trangtrann', N'Quang Nam', N'Tay Ninh', N'60 Nguyen Du, Thach Thang', N'thanh khe')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'trinhphuong', N'Bac Kan', N'Hoi An', N'2A Nguyen Thi Thap', N'quan Dong Da')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'trinhthangbinh', N'Bac Lieu', N'Ha Tien', N'64 Nguyen Du', N'Hai Ba Trung')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'tungson', N'Ben Tre', N'Hung Yen', N'so 684, tang 18 khach san Sahul, pho Minh Khai', N'quan 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'unclestan', N'Nam Dinh', N'Vinh', N' 106, Hoang Dieu, Phuoc Ninh', N'hai chau')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'vietgang', N'Khanh Hoa', N'Lao Cai', N'4/4 Nguyen Binh Khiem', N'quan Phu Nhuan')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'vitconkten', N'Ho Chi Minh', N'Binh Tan', N'khu pho 3', N'An Lac')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'winner', N'Thai Binh', N'An Nhone', N'Vu Doai', N'Thon 3')
GO
INSERT [dbo].[SupplierAddresses] ([AccountS], [City], [District], [Specific], [Ward]) VALUES (N'wuin', N'Kien Giang', N'Son La', N' 203 â€“ 211 Nguyen Van Linh, Phuong Thac Gian', N'hai chau')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'123456cainha', N'id6-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'1danvit', N'id7-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'2convitcon', N'ID1-f.png', N'ID1-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'alice', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'alolao', N'ID1-f.png', N'ID1-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'andi', N'id7-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'ariana', N'id-all.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'aubame', N'id-all.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'bachtuyet', N'id7-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'baconga', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'baychulun', N'id6-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'bella', N'id7-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'candypop', N'id-all.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'congchua', N'ID1-f.png', N'ID1-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'damand', N'id-all.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'deeper', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'ducson', N'id6-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'emmet', N'id-all.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'genisit', N'id-all.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'haianh', N'id7-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'haianh123', N'id-all.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'halathon', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'hayle', N'id-all.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'jaden', N'id-all.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'josephine', N'id-all.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'jungleblack', N'id-all.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'khongcoai', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'kimlieh', N'id6-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'lamkhang', N'id7-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'lethilo', N'id-all2.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'linda', N'ID1-f.png', N'ID1-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'madelyn', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'motconngan', N'id6-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'nanbaka', N'id-all2.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'natalia', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'nguyenphuong', N'id7-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'nguyentung', N'id-all2.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'nguyenvup', N'id6-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'phamsang', N'id5-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'phamthoai', N'id-all2.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'saddy', N'id7-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'samsara', N'ID2-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'sangp', N'id6-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'skylar', N'id-all2.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'sofia', N'id7-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'sophie', N'id-all2.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'supp1', N'id6-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'thanhtoai', N'ID2-f.png', N'ID2-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'theanh', N'id-all2.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'thilana', N'id7-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'thinhhuyen', N'id-all2.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'tienlen', N'id6-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'tifany', N'id-all2.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'trang', N'id5-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'trangtrang', N'id-all2.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'trangtrann', N'id6-f.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'trinhphuong', N'id-all2.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'trinhthangbinh', N'id7-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'tungson', N'id-all2.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'unclestan', N'id6-f.png', N'id3-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'vietgang', N'id-all2.png', N'id4-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'vitconkten', N'id-all2.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'winner', N'id7-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[SupplierImage] ([AccountS], [Img_ID_front], [Img_ID_back], [Img_Avatar]) VALUES (N'wuin', N'id6-f.png', N'id5-b.png', N'AvatarDefault.jpg')
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'123456cainha', N'nhat', N'nguyen', N'8415485307', N'nhatnguyen@gmail.com', N'8496231658', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'1danvit', N'phuong', N'nguyen', N'8415485301', N'phuongnguyen@gmail.com', N'8453258965', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'2convitcon', N'phong', N'nguyen', N'8415485302', N'phongnguyen@gmail.com', N'8458458745', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'alice', N'Eleanor', N'Alice', N'8415485325', N'eleanoralice@gmail.com', N'8415485325', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'alolao', N'nhat tan', N'le', N'8415485308', N'nhat tanle@gmail.com', N'8475865262', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'andi', N'Luna', N'Audrey', N'8415485321', N'lunaaudrey@gmail.com', N'8415485321', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'ariana', N'Willow', N'Ariana', N'8415485349', N'willowariana@gmail.com', N'8415485349', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'aubame', N'Ella', N'Aubrey', N'8415485326', N'ellaaubrey@gmail.com', N'9415485326', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'bachtuyet', N'Scarlett', N'Valentina', N'8415485330', N'scarlettvalentina@gmail.com', N'8415485330', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'baconga', N'minh', N'nhat', N'8415485304', N'minhnhat@gmail.com', N'8456225623', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'baychulun', N'Avery', N'Savannah', N'8415485329', N'averysavannah@gmail.com', N'8415485329', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'bella', N'Chloe', N'Bella', N'8415485334', N'chloebella@gmail.com', N'8415485334', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'candypop', N'Harper', N'Claire', N'8415485320', N'harperclaire@gmail.com', N'8415485320', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'congchua', N'Emily', N'Kennedy', N'8415485331', N'emilykennedy@gmail.com', N'8415485331', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'damand', N'Hannah', N'Eva', N'8415485354', N'hannaheva@gmail.com', N'841545354', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'deeper', N'Lucy', N'Piper', N'8415485357', N'lucypiper@gmail.com', N'841585357', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'ducson', N'Nova', N'Caroline', N'8415485342', N'novacaroline@gmail.com', N'8415485342', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'emmet', N'Emilia', N'Emery', N'8415485350', N'emiliaemery@gmail.com', N'8415485350', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'genisit', N'Mila', N'Genesis', N'8415485336', N'milagenesis@gmail.com', N'8415485336', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'haianh', N'Zoey', N'Cora', N'8415485348', N'zoeycora@gmail.com', N'8415485348', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'haianh123', N'Tung', N'Nguyen', N'123456789', N'tungnon@123', N'0865965402', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'halathon', N'Everly', N'Peyton', N'8415485360', N'everlypeyton@gmail.com', N'841485360', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'hayle', N'Hazel', N'Hailey', N'8415485338', N'hazelhailey@gmail.com', N'8415485338', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'jaden', N'Zoe', N'Jade', N'8415485352', N'zoejade@gmail.com', N'8415485352', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'josephine', N'Penelope', N'Josephine', N'8415485333', N'penelopejosephine@gmail.com', N'8415485333', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'jungleblack', N'Addison', N'Adeline', N'8415485355', N'addisonadeline@gmail.com', N'841585355', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'khongcoai', N'huy', N'phan', N'8415485305', N'huyphan@gmail.com', N'8493526326', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'kimlieh', N'Leah', N'Madeline', N'8415485356', N'leahmadeline@gmail.com', N'4159453569', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'lamkhang', N'Isabella', N'Natalie', N'8415485317', N'isabellanatalie@gmail.com', N'8415485317', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'lethilo', N'Riley', N'Nevaeh', N'8415485347', N'rileynevaeh@gmail.com', N'8415485347', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'linda', N'Stella', N'Lydia', N'8415485351', N'stellalydia@gmail.com', N'8415485351', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'madelyn', N'Aria', N'Madelyn', N'8415485332', N'ariamadelyn@gmail.com', N'8415485332', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'motconngan', N'hang', N'minh', N'8415485303', N'hangminh@gmail.com', N'8458512535', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'nanbaka', N'Sofia', N'Leilani', N'8415485328', N'sofialeilani@gmail.com', N'8415485328', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'natalia', N'Ellie', N'Natalia', N'8415485340', N'ellienatalia@gmail.com', N'8415485340', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'nguyenphuong', N'duy', N'nguyen', N'8415485310', N'duynguyen@gmail.com', N'8459659562', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'nguyentung', N'Charlotte', N'Paisley', N'8415485313', N'charlottepaisley@gmail.com', N'8415485313', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'nguyenvup', N'hung', N'vu', N'8415485309', N'hungvu@gmail.com', N'8434322806', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'phamsang', N'Ava', N'Naomi', N'8415485315', N'avanaomi@gmail.com', N'8415485315', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'phamthoai', N'Gianna', N'Ruby', N'8415485323', N'giannaruby@gmail.com', N'8415485323', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'saddy', N'Madison', N'Sadie', N'8415485339', N'madisonsadie@gmail.com', N'8415485339', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'samsara', N'Victoria', N'Sarah', N'8415485353', N'victoriasarah@gmail.com', N'8415485353', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'sangp', N'Sang', N'Pham Ngoc', N'1234567', N'phamsangvd1@gmail.com', N'0123456789', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'skylar', N'Layla', N'Skylar', N'8415485335', N'laylaskylar@gmail.com', N'8415485335', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'sofia', N'Abigail', N'Autumn', N'8415485327', N'abigailautumn@gmail.com', N'8415485327', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'sophie', N'Nora', N'Sophie', N'8415485337', N'norasophie@gmail.com', N'8415485337', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'supp1', N'Olivia', N'Will', N'8415485311', N'oliviawill@gmail.com', N'8415485311', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'thanhtoai', N'Amelia', N'Elena', N'8415485314', N'ameliaelena@gmail.com', N'8415485314', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'theanh', N'Isla', N'Allison', N'8415485343', N'islaallison@gmail.com', N'8415485343', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'thilana', N'tung', N'nam', N'123456789', N'tugn@1234', N'0865965123', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'thinhhuyen', N'Evelyn', N'Delilah', N'8415485319', N'evelyndelilah@gmail.com', N'8415485319', 1)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'tienlen', N'Elizabeth', N'Brooklyn', N'8415485324', N'elizabethbrooklyn@gmail.com', N'8415485324', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'tifany', N'Ivy', N'Athena', N'8415485359', N'ivyathena@gmail.com', N'841585359', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'trang', N'Grace', N'Gabriella', N'8415485344', N'gracegabriella@gmail.com', N'8415485344', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'trangtrang', N'Violet', N'Anna', N'8415485345', N'violetanna@gmail.com', N'8415485345', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'trangtrann', N'Aurora', N'Serenity', N'8415485346', N'auroraserenity@gmail.com', N'8415485346', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'trinhphuong', N'Sophia', N'Maya', N'8415485316', N'sophiamaya@gmail.com', N'8415485316', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'trinhthangbinh', N'Emma', N'Paisley', N'8415485312', N'emmapaisley@gmail.com', N'8415485312', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'tungson', N'Mia', N'Kinsley', N'8415485318', N'miakinsley@gmail.com', N'8415485318', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'unclestan', N'Eliana', N'Rylee', N'8415485358', N'elianarylee@gmail.com', N'841585358', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'vietgang', N'Camila', N'Aaliyah', N'8415485322', N'camilaaaliyah@gmail.com', N'8415485322', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'vitconkten', N'thao', N'lam', N'8415485306', N'thaolam@gmail.com', N'8451231323', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'winner', N'Tran Thuy', N'Trang', N'1234567', N'phamsangvd1@gmail.com', N'0123456789', 0)
GO
INSERT [dbo].[Suppliers] ([AccountS], [FirstName], [LastName], [Fax], [Email], [Phone], [Status]) VALUES (N'wuin', N'Lily', N'Quinn', N'8415485341', N'lilyquinn@gmail.com', N'8415485341', 1)
GO
INSERT [dbo].[Types] ([TypeId], [TypeName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Types] ([TypeId], [TypeName]) VALUES (2, N'MKT')
GO
INSERT [dbo].[Types] ([TypeId], [TypeName]) VALUES (3, N'Suppliers')
GO
INSERT [dbo].[Types] ([TypeId], [TypeName]) VALUES (4, N'Customer')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC001     ', NULL, NULL, NULL, 10, 50, N'benbohanhphuc')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC002     ', NULL, NULL, NULL, 20, 50, N'danbolangman')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC003     ', NULL, NULL, NULL, 15, 50, N'caoboimiennui')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC004     ', NULL, NULL, NULL, 25, 50, N'satthudongbang')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC005     ', NULL, NULL, NULL, 30, 30, N'motminhcodon')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC006     ', NULL, NULL, NULL, 35, 25, N'binhminhdaysong')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC007     ', NULL, NULL, NULL, 5, 100, N'thaisuonghasan')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC008     ', NULL, NULL, NULL, 40, 20, N'khongcongbang')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC009     ', NULL, NULL, NULL, 45, 15, N'motnguoithu3')
GO
INSERT [dbo].[VoucherCustomer] ([VoucherId], [Title], [Description], [Image], [Discount], [Quantity], [AccountC]) VALUES (N'VC010     ', NULL, NULL, NULL, 50, 5, N'motnguoithu4')
GO
ALTER TABLE [dbo].[HomeStays] ADD  DEFAULT ((2)) FOR [Status]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[Types] ([TypeId])
GO
ALTER TABLE [dbo].[AdminImage]  WITH CHECK ADD FOREIGN KEY([AccountA])
REFERENCES [dbo].[Admins] ([AccountA])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([AccountA])
REFERENCES [dbo].[Accounts] ([Account])
GO
ALTER TABLE [dbo].[BlogDetails]  WITH CHECK ADD FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([BlogId])
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD FOREIGN KEY([AccountM])
REFERENCES [dbo].[Marketing] ([AccountM])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[BookingHistories]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[BookingHistories]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[CustomerAddresses]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[CustomerImage]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Accounts] ([Account])
GO
ALTER TABLE [dbo].[Extensions]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[HomeStayAddressses]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[HomeStayDetails]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[HomeStayHistories]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[HomeStays]  WITH CHECK ADD FOREIGN KEY([AccountS])
REFERENCES [dbo].[Suppliers] ([AccountS])
GO
ALTER TABLE [dbo].[HomeStays]  WITH CHECK ADD FOREIGN KEY([CateId])
REFERENCES [dbo].[Categories] ([CateId])
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[Marketing]  WITH CHECK ADD FOREIGN KEY([AccountM])
REFERENCES [dbo].[Accounts] ([Account])
GO
ALTER TABLE [dbo].[MarketingImage]  WITH CHECK ADD FOREIGN KEY([AccountM])
REFERENCES [dbo].[Marketing] ([AccountM])
GO
ALTER TABLE [dbo].[Messenger]  WITH CHECK ADD FOREIGN KEY([AccountS])
REFERENCES [dbo].[Suppliers] ([AccountS])
GO
ALTER TABLE [dbo].[Messenger]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[MessengerCA]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[Rules]  WITH CHECK ADD FOREIGN KEY([HomeStayId])
REFERENCES [dbo].[HomeStays] ([HomeStayId])
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD FOREIGN KEY([AccountM])
REFERENCES [dbo].[Marketing] ([AccountM])
GO
ALTER TABLE [dbo].[SupplierAddresses]  WITH CHECK ADD FOREIGN KEY([AccountS])
REFERENCES [dbo].[Suppliers] ([AccountS])
GO
ALTER TABLE [dbo].[SupplierImage]  WITH CHECK ADD FOREIGN KEY([AccountS])
REFERENCES [dbo].[Suppliers] ([AccountS])
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD FOREIGN KEY([AccountS])
REFERENCES [dbo].[Accounts] ([Account])
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([AccountM])
REFERENCES [dbo].[Marketing] ([AccountM])
GO
ALTER TABLE [dbo].[VoucherCustomer]  WITH CHECK ADD FOREIGN KEY([AccountC])
REFERENCES [dbo].[Customers] ([AccountC])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD CHECK  (([Status]>=(0) AND [Status]<=(2)))
GO
ALTER TABLE [dbo].[HomeStays]  WITH CHECK ADD CHECK  (([Status]>=(0) AND [Status]<=(2)))
GO

USE [LibertyFurniture]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_date] [date] NOT NULL,
	[manager_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_billid] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[billdetail_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_bdid] PRIMARY KEY CLUSTERED 
(
	[billdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[brand]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [varchar](10) NOT NULL,
	[brand_name] [varchar](200) NOT NULL,
	[nation_id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_brid] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](50) NULL,
	[customer_gender] [int] NULL,
	[customer_DOB] [date] NULL,
	[customer_email] [varchar](50) NULL,
	[customer_phone] [varchar](10) NULL,
	[customer_address] [varchar](100) NULL,
	[customer_username] [varchar](50) NULL,
	[customer_pass] [varchar](50) NULL,
 CONSTRAINT [PK_cuid] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[manager]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[manager](
	[manager_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [varchar](50) NULL,
	[gender] [int] NULL,
	[dOB] [date] NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[salary] [int] NULL,
	[position] [varchar](20) NULL,
	[username] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_maid] PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nation]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nation](
	[nation_id] [varchar](10) NOT NULL,
	[nation_name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_naid] PRIMARY KEY CLUSTERED 
(
	[nation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productlist]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productlist](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](200) NOT NULL,
	[product_detail] [varchar](1000) NOT NULL,
	[price] [int] NOT NULL,
	[brand_id] [varchar](10) NOT NULL,
	[producttype_id] [varchar](10) NOT NULL,
	[images] [varchar](max) NULL,
 CONSTRAINT [PK_pdid] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producttype]    Script Date: 10/25/2020 6:39:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producttype](
	[producttype_id] [varchar](10) NOT NULL,
	[producttype_name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_pd_type_id] PRIMARY KEY CLUSTERED 
(
	[producttype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (1, CAST(0xCA400B00 AS Date), 4, 1)
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (2, CAST(0xCC400B00 AS Date), 4, 2)
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (3, CAST(0xD1400B00 AS Date), 4, 3)
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (4, CAST(0xD0400B00 AS Date), 5, 4)
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (5, CAST(0xD1400B00 AS Date), 5, 5)
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (6, CAST(0xD3400B00 AS Date), 5, 6)
INSERT [dbo].[bill] ([bill_id], [bill_date], [manager_id], [customer_id]) VALUES (7, CAST(0xD6400B00 AS Date), 5, 7)
SET IDENTITY_INSERT [dbo].[bill] OFF
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (1, 1, 1, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (2, 1, 3, 5)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (3, 1, 5, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (4, 2, 2, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (5, 2, 4, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (6, 2, 6, 6)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (7, 3, 9, 3)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (8, 3, 11, 7)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (9, 3, 14, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (10, 4, 15, 12)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (11, 4, 16, 10)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (12, 4, 17, 14)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (13, 5, 9, 6)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (14, 5, 3, 9)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (15, 5, 12, 14)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (16, 6, 8, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (17, 6, 10, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (18, 6, 14, 16)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (19, 7, 9, 1)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (20, 7, 10, 2)
INSERT [dbo].[bill_detail] ([billdetail_id], [bill_id], [product_id], [amount]) VALUES (21, 7, 16, 6)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'AB', N'Amazon Brand', N'US')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'CB', N'CubiCubi', N'VN')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'CCS', N'Convenience Concepts Store', N'US')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'CG', N'Christopher Guy', N'SING')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'ILM', N'Index Living Mall', N'VN')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'IV', N'Italiano Vintage', N'Y')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'NJ', N'Nathan James', N'US')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'TC', N'Tango Company', N'Y')
INSERT [dbo].[brand] ([brand_id], [brand_name], [nation_id]) VALUES (N'TP', N'The Platform', N'US')
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (1, N'Huynh Ngoc Tram', 2, CAST(0x2F240B00 AS Date), N'tram01@gmail.com', N'0908069741', N'159 Au Co, Tan Binh District, HCM City', N'abc', N'12345')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (2, N'Tran Ngoc Phuong Uyen', 2, CAST(0x31260B00 AS Date), N'uyen021@gmail.com', N'0912358123', N'56 Nguyen Hue, District 1, HCM City', N'uyen021', N'h7WVDD4cYCK1')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (3, N'Truong Thanh Viet', 1, CAST(0x7E270B00 AS Date), N'viet51@gmail.com', N'0908126485', N'25 Luong Dinh Cua, District 2, HCM City', N'viet51', N'H7pV5gPe8l9D')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (4, N'Huynh Do Anh Dao', 2, CAST(0x4F280B00 AS Date), N'dao45@gmail.com', N'0908024128', N'169 Su Van Hanh, District 10, HCM City', N'dao45', N'e0Fo1HWgPfc7')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (5, N'Tran My Uyen', 2, CAST(0x9B2A0B00 AS Date), N'myuyenh2004@gmail.com', N'0908364895', N'34 Pham The Hien, District 8, HCM City', N'myuyenh2004', N'yfxmg71evPRu')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (6, N'To Thi Mai Loan', 2, CAST(0xA72B0B00 AS Date), N'loan153@gmail.com', N'0908360156', N'64 Nguyen Trai, District 5, HCM City', N'loan153', N'1inS0UBeOCOT')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (7, N'Pham Mai Loan', 2, CAST(0x2E2D0B00 AS Date), N'mailoan785@gmail.com', N'0908123948', N'599 Hau Giang, District 6, HCM City', N'mailoan785', N'ATwqV4Yuz4xP')
INSERT [dbo].[customer] ([customer_id], [customer_name], [customer_gender], [customer_DOB], [customer_email], [customer_phone], [customer_address], [customer_username], [customer_pass]) VALUES (8, N'Phan Duc Hai', 1, CAST(0xBB220B00 AS Date), N'hai296@gmail.com', N'0908985103', N'10 Ly Thuong Kiet, District 5, HCM City', N'hai296', N'8nHOn8wy4RZE')
SET IDENTITY_INSERT [dbo].[customer] OFF
SET IDENTITY_INSERT [dbo].[manager] ON 

INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (1, N'Nguyen Nhat Tien', 1, CAST(0x57170B00 AS Date), N'tien01@gmail.com', N'0908069741', 1000, N'Director', N'tien01', N'1234567')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (2, N'Nguyen Thu Ha', 2, CAST(0xDD180B00 AS Date), N'ha1192@gmail.com', N'0908069741', 800, N'Vice Director', N'ha1192', N'aMmqoK96qst6')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (3, N'Ha Huy Hoang', 1, CAST(0xA91A0B00 AS Date), N'hoang016@gmail.com', N'0908069741', 500, N'HRM', N'hoang016', N'rvp0SQRDBo4o')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (4, N'Nguyen Duy Nam', 1, CAST(0x311C0B00 AS Date), N'nam94@gmail.com', N'0908069741', 500, N'Chief Accountant', N'nam94', N'0wPi2bxLCyJm')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (5, N'Le Thao Nguyen', 2, CAST(0x8A1C0B00 AS Date), N'nguyen05@gmail.com', N'0908069741', 300, N'Accountant', N'nguyen05', N'gMll2wK9VwSf')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (6, N'Pham Ngoc Bao Tran', 2, CAST(0x3B1E0B00 AS Date), N'tran95@gmail.com', N'0908069741', 300, N'Librarian', N'tran95', N'TRgV0Hgt5l9o')
INSERT [dbo].[manager] ([manager_id], [fullname], [gender], [dOB], [email], [phone], [salary], [position], [username], [pass]) VALUES (7, N'Ngo Thi Thuy Anh', 2, CAST(0x261D0B00 AS Date), N'anh102@gmail.com', N'0908069741', 300, N'Librarian', N'anh102', N'Zd1Wdd0P0SFA')
SET IDENTITY_INSERT [dbo].[manager] OFF
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (N'SING', N'Singapore')
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (N'US', N'United States')
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (N'VN', N'Viet Nam')
INSERT [dbo].[nation] ([nation_id], [nation_name]) VALUES (N'Y', N'Italia')
SET IDENTITY_INSERT [dbo].[productlist] ON 

INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (1, N'Amy Recliner Vinyl Upholstery and Wood Frame Office Chairs', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 299, N'CG', N'OC', N'amy-recliner.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (2, N'Bergen Vinyl Upholstery and Wood Frame Office Chairs', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 159, N'CG', N'OC', N'bergen.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (3, N'Harley Faux Vinyl Upholstery and Wood Frame Dinner', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 99, N'IV', N'DC', N'Harley-Faux.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (4, N'Poly and Bark Upholstery and Wood Frame Dinner Chair', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 99, N'TP', N'DC', N'Poly-and-Bark.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (5, N'Berlin Sue Vinyl Upholstery and Wood Frame Sofa', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 199, N'CG', N'SF', N'berlin.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (6, N'Monti Vinyl Upholstery and Wood Frame Sofa', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 179, N'TC', N'SF', N'monti.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (7, N'Baxton Vinyl Upholstery and Wood Frame Rocking Chairs', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 179, N'CG', N'RC', N'Baxton.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (8, N'Butsea Vinyl Upholstery and Wood Frame Rocking Chair', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 129, N'IV', N'RC', N'Butsea.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (9, N'Accent White Vinyl Upholstery and Wood Frame Glider Chairs', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 129, N'CG', N'GC', N'Accent-Chair.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (10, N'Osgood Natural Upholstery and Wood Frame Glider Chair', N'<h5>Features:</h5>
                <ul>
                    <li>Counter Stool Weight Capacity: 500 lbs.</li>
                    <li>Elegant Modern Counter Stool.</li>
                    <li>Dense Foam Padding for Comfort.</li>
                    <li>Polished Nailhead Trim.</li>
                    <li>Solid Rubberwood Legs.</li>
                    <li>Non-Marking Foot Caps.</li>
                    <li>Soft Polyester Fabric Upholstery.</li>
                    <li>Assembly Required.</li>
                    <li>Two - Baron Counter Stool.</li>
                </ul>', 129, N'TP', N'GC', N'Osgood-Natural.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (11, N'Nathan James Amalia Nightstand Marble Solid Wood Accent Table, White/Dark Brown', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> <li>Durable marble-laminate top with scratch and stain-resistant finish.</li><li>Sturdy frame support is made of textured solid wood.</li><li>Lifetime manufacturer : try for 100 days.</li><li>Easy 15-minute assembly.</li><li>Mid-century modern style can match any furniture.</li><li>Length: 18" x Width: 18" x Height: 18" round nightstand.</li></ul>', 64, N'NJ', N'ST', N'Nathan-James-Amalia-Nightstand.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (12, N'ROSABELLA Side table 55cm WT', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> <li>Index Living Mall`s unique design.</li> <li>Durable rubber wood.</li> <li>Romantic & vintage look.</li></ul>', 197, N'ILM', N'ST', N'ROSABELLA-Side-table-55cm-WT.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (13, N'Ravenna Home Traditional Dining Table 29"H', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> <li>29.49'' W x 29.49'' D x 29'' H.</li><li>Solid pine wood.</li><li>Writing desk with one drawer to store office items.</li><li>Classic wood styling works with modern or transitional decor.</li><li>Avoid moisture. Wipes clean with soft, dry cloth.</li><li>Simple assembly in 15-30 minutes.</li> <li>Free returns for 30 days. 1-year warranty.</li></ul>', 159, N'AB', N'DC', N'Ravenna-Home-Traditional.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (14, N'Nathan James 41001 Kalos Solid Wood', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li><li>Keep the table leaves folded for everyday use or open them up to accommodate up to six guests.</li>
<li>The walnut brown wood tabletop can match any chair color while X-shaped solid wood base ensures stability.</li>
<li>Lifetime manufacturer warranty: try for 100 days.</li>
<li>Easy 20-minute assembly.</li>
<li>Full table Length: 43” x Width: 40” x Height: 31”.</li>
<li>Fold both sides and the width changes to 22”.</li></ul>', 94, N'NJ', N'DC', N'Nathan-James-41001-Kalos.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (15, N'Nathan James Mina Side, End Table Wood ', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> 
<li>Table-top: 30 lbs per shelf.</li>
<li>The Mina side or end table is small but offers plenty of storage with its open cubby and additional shelf hidden behind the boho-style door.</li>
<li>The open design of the Mina side table makes it a great small space solution.</li>
<li>Lifetime manufacturer : try for 100 days.</li> <li>Easy 30-minute assembly.</li>
<li>Length: 19" x Width: 17" x Height: 22" accent table.</li></ul>', 94, N'NJ', N'ET', N'Nathan-James-Mina.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (16, N'Convenience Concepts Oxford End Table, Black', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> 
<li>The Convenience Concepts side or end table is small but offers plenty of storage with its open cubby and additional shelf hidden behind the boho-style door.</li>
<li>The open design of the Mina side table makes it a great small space solution.</li>
<li>Lifetime manufacturer : try for 100 days.</li>
<li>Easy 30-minute assembly.</li>
<li>Length: 19" x Width: 17" x Height: 22" accent table.</li></ul>', 119, N'CCS', N'ET', N'Convenience-Concepts-Oxford-End-Table.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (17, N'CubiCubi Computer Desk 32" Study Writing Table for Home Office', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> 
<li>INDUSTRIAL CHARM DESK - The board texture along with dark metal legs, vintage-style desk.</li>
<li>STURDY DESIGN - Metal frame, triangular strut design and adjustable leg pads provide greater stability.</li>
<li>EASY TO ASSEMBLE - Finish the assembly within 10 minutes.</li>
<li>SIZE - 32"(L) * 19.7"(W) * 29"(H). Various sizes are available among this series.</li>
<li>WORRY FREE 2 YEAR WARRANTY - A 24 months warranty and lifetime customer service express our attitude to customers.</li></ul>', 89, N'CB', N'OC', N'CubiCubi-Computer-Desk.jpg')
INSERT [dbo].[productlist] ([product_id], [product_name], [product_detail], [price], [brand_id], [producttype_id], [images]) VALUES (18, N'Elephance 59" Large L Shaped Desk Corner ', N'<h5>Features:</h5>
                <ul>
                    <li>Weight Limit: 75 lbs.</li> 
<li>Make full use of space and beautify the space, the potential use of our space.</li>
<li>Its modern, fashion, and practical design ingeniously embellishes and grows artistic life taste.</li>
<li>Humanization design improve your writing, computer working, study & gaming experience.</li>
<li>Powder-coated finish on the wood top can protects the desk`s surface from daily wear and tear,easy to care for and can be wiped clean with a dry cloth.</li></ul>', 169, N'CB', N'OC', N'Elephance-L-Desk.jpg')
SET IDENTITY_INSERT [dbo].[productlist] OFF
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'DC', N'Dining Chairs/Tables')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'ET', N'End Tables')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'GC', N'Glider Chairs')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'OC', N'Office Chairs/Tables')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'RC', N'Rocking Chairs')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'SF', N'Sofa')
INSERT [dbo].[producttype] ([producttype_id], [producttype_name]) VALUES (N'ST', N'Side Tables')
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [PK_cu_bi_id] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [PK_cu_bi_id]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [PK_ma_bi_id] FOREIGN KEY([manager_id])
REFERENCES [dbo].[manager] ([manager_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [PK_ma_bi_id]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [PK_bi_pd_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[productlist] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [PK_bi_pd_id]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [PK_dt_bi_id] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([bill_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [PK_dt_bi_id]
GO
ALTER TABLE [dbo].[brand]  WITH CHECK ADD  CONSTRAINT [PK_br_na_id] FOREIGN KEY([nation_id])
REFERENCES [dbo].[nation] ([nation_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[brand] CHECK CONSTRAINT [PK_br_na_id]
GO
ALTER TABLE [dbo].[productlist]  WITH CHECK ADD  CONSTRAINT [PK_pd_br_id] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productlist] CHECK CONSTRAINT [PK_pd_br_id]
GO
ALTER TABLE [dbo].[productlist]  WITH CHECK ADD  CONSTRAINT [PK_pd_ty_id] FOREIGN KEY([producttype_id])
REFERENCES [dbo].[producttype] ([producttype_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productlist] CHECK CONSTRAINT [PK_pd_ty_id]
GO

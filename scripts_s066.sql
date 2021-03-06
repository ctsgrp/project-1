USE [S066]
GO
/****** Object:  Table [dbo].[z_OrderMemberCard]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_OrderMemberCard](
	[CrdOrd] [nvarchar](10) NOT NULL,
	[CrdType] [smallint] NULL,
	[CrdID] [nvarchar](120) NULL,
	[CrdNet] [money] NULL,
	[CrdNetCharge] [smallmoney] NULL,
 CONSTRAINT [PK_z_OrderMemberCard] PRIMARY KEY CLUSTERED 
(
	[CrdOrd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_PosRun]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_PosRun](
	[RunCode] [nvarchar](3) NOT NULL,
	[RunName] [nvarchar](40) NULL,
	[RunIP] [nvarchar](15) NULL,
	[RunUpdate] [int] NULL,
	[RunSent] [int] NULL,
 CONSTRAINT [PK_z_PosRun] PRIMARY KEY CLUSTERED 
(
	[RunCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocumentRun]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocumentRun](
	[RunCode] [nvarchar](3) NOT NULL,
	[RunName] [nvarchar](100) NULL,
	[RunUpdate] [int] NULL,
	[RunSent] [int] NULL,
	[RunWhere] [tinyint] NULL,
 CONSTRAINT [PK_T_DocumentRun] PRIMARY KEY CLUSTERED 
(
	[RunCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Order]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Order](
	[OrdCode] [nvarchar](10) NOT NULL,
	[OrdDT_Create] [smalldatetime] NULL,
	[OrdNet] [money] NULL,
	[OrdNetGP] [money] NULL,
	[OrdVat] [smallmoney] NULL,
	[OrdUser] [nvarchar](20) NULL,
	[OrdPayCash] [money] NULL,
	[OrdPayCard] [money] NULL,
	[OrdPayCoupon] [money] NULL,
	[OrdPayOver] [money] NULL,
	[OrdDiscStep] [smallmoney] NULL,
	[OrdDiscPromotion] [smallmoney] NULL,
	[OrdDiscMember] [smallmoney] NULL,
	[OrdDiscOther] [smallmoney] NULL,
	[OrdStange] [smallmoney] NULL,
	[OrdStatus] [nvarchar](2) NULL,
	[OrdRemark1] [nvarchar](30) NULL,
	[OrdRemark2] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_Order] PRIMARY KEY CLUSTERED 
(
	[OrdCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OrderCreditCard]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OrderCreditCard](
	[CrdOrd] [nvarchar](10) NOT NULL,
	[CrdType] [smallint] NULL,
	[CrdID] [nvarchar](120) NULL,
	[CrdNet] [money] NULL,
	[CrdNetCharge] [smallmoney] NULL,
 CONSTRAINT [PK_T_OrderCreditCard] PRIMARY KEY CLUSTERED 
(
	[CrdOrd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OrderMemberCard]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OrderMemberCard](
	[CrdOrd] [nvarchar](10) NOT NULL,
	[CrdType] [smallint] NULL,
	[CrdID] [nvarchar](120) NULL,
	[CrdNet] [money] NULL,
	[CrdNetCharge] [smallmoney] NULL,
 CONSTRAINT [PK_T_OrderMemberCard] PRIMARY KEY CLUSTERED 
(
	[CrdOrd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OrderTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OrderTrn](
	[TrnOrd] [nvarchar](10) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [smallint] NULL,
	[TrnPrice] [money] NULL,
	[TrnDisc] [smallmoney] NULL,
	[TrnPrmt] [smallint] NULL,
 CONSTRAINT [PK_T_OrderTrn] PRIMARY KEY CLUSTERED 
(
	[TrnOrd] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_BalanceSale]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_BalanceSale](
	[BalStk] [nvarchar](13) NOT NULL,
	[BalDT_Sale] [smalldatetime] NOT NULL,
	[BalQty] [int] NULL,
	[BalNet] [money] NULL,
 CONSTRAINT [PK_T_BalanceSale] PRIMARY KEY CLUSTERED 
(
	[BalStk] ASC,
	[BalDT_Sale] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_BalanceStock]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_BalanceStock](
	[BalStk] [nvarchar](13) NOT NULL,
	[BalQty] [int] NULL,
	[BalTransferDate] [smalldatetime] NULL,
 CONSTRAINT [PK_T_BalanceStock] PRIMARY KEY CLUSTERED 
(
	[BalStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[y_Order]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[y_Order](
	[OrdCode] [nvarchar](10) NOT NULL,
	[OrdDT_Create] [smalldatetime] NULL,
	[OrdNet] [money] NULL,
	[OrdNetGP] [money] NULL,
	[OrdVat] [smallmoney] NULL,
	[OrdUser] [nvarchar](20) NULL,
	[OrdPayCash] [money] NULL,
	[OrdPayCard] [money] NULL,
	[OrdPayCoupon] [money] NULL,
	[OrdPayOver] [money] NULL,
	[OrdDiscStep] [smallmoney] NULL,
	[OrdDiscPromotion] [smallmoney] NULL,
	[OrdDiscMember] [smallmoney] NULL,
	[OrdDiscOther] [smallmoney] NULL,
	[OrdStange] [smallmoney] NULL,
	[OrdStatus] [nvarchar](2) NULL,
	[OrdRemark1] [nvarchar](30) NULL,
	[OrdRemark2] [nvarchar](30) NULL,
 CONSTRAINT [PK_y_Order] PRIMARY KEY CLUSTERED 
(
	[OrdCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CalendarSale]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CalendarSale](
	[YearMonth] [nvarchar](6) NOT NULL,
	[MNet] [money] NULL,
	[MCustomer] [int] NULL,
	[MGrp1] [money] NULL,
	[MGrp2] [money] NULL,
	[MGrp3] [money] NULL,
	[MGrp4] [money] NULL,
	[MGrp5] [money] NULL,
	[Sale_01] [money] NULL,
	[Sale_02] [money] NULL,
	[Sale_03] [money] NULL,
	[Sale_04] [money] NULL,
	[Sale_05] [money] NULL,
	[Sale_06] [money] NULL,
	[Sale_07] [money] NULL,
	[Sale_08] [money] NULL,
	[Sale_09] [money] NULL,
	[Sale_10] [money] NULL,
	[Sale_11] [money] NULL,
	[Sale_12] [money] NULL,
	[Sale_13] [money] NULL,
	[Sale_14] [money] NULL,
	[Sale_15] [money] NULL,
	[Sale_16] [money] NULL,
	[Sale_17] [money] NULL,
	[Sale_18] [money] NULL,
	[Sale_19] [money] NULL,
	[Sale_20] [money] NULL,
	[Sale_21] [money] NULL,
	[Sale_22] [money] NULL,
	[Sale_23] [money] NULL,
	[Sale_24] [money] NULL,
	[Sale_25] [money] NULL,
	[Sale_26] [money] NULL,
	[Sale_27] [money] NULL,
	[Sale_28] [money] NULL,
	[Sale_29] [money] NULL,
	[Sale_30] [money] NULL,
	[Sale_31] [money] NULL,
	[Cust_01] [int] NULL,
	[Cust_02] [int] NULL,
	[Cust_03] [int] NULL,
	[Cust_04] [int] NULL,
	[Cust_05] [int] NULL,
	[Cust_06] [int] NULL,
	[Cust_07] [int] NULL,
	[Cust_08] [int] NULL,
	[Cust_09] [int] NULL,
	[Cust_10] [int] NULL,
	[Cust_11] [int] NULL,
	[Cust_12] [int] NULL,
	[Cust_13] [int] NULL,
	[Cust_14] [int] NULL,
	[Cust_15] [int] NULL,
	[Cust_16] [int] NULL,
	[Cust_17] [int] NULL,
	[Cust_18] [int] NULL,
	[Cust_19] [int] NULL,
	[Cust_20] [int] NULL,
	[Cust_21] [int] NULL,
	[Cust_22] [int] NULL,
	[Cust_23] [int] NULL,
	[Cust_24] [int] NULL,
	[Cust_25] [int] NULL,
	[Cust_26] [int] NULL,
	[Cust_27] [int] NULL,
	[Cust_28] [int] NULL,
	[Cust_29] [int] NULL,
	[Cust_30] [int] NULL,
	[Cust_31] [int] NULL,
	[Grp1_01] [money] NULL,
	[Grp1_02] [money] NULL,
	[Grp1_03] [money] NULL,
	[Grp1_04] [money] NULL,
	[Grp1_05] [money] NULL,
	[Grp1_06] [money] NULL,
	[Grp1_07] [money] NULL,
	[Grp1_08] [money] NULL,
	[Grp1_09] [money] NULL,
	[Grp1_10] [money] NULL,
	[Grp1_11] [money] NULL,
	[Grp1_12] [money] NULL,
	[Grp1_13] [money] NULL,
	[Grp1_14] [money] NULL,
	[Grp1_15] [money] NULL,
	[Grp1_16] [money] NULL,
	[Grp1_17] [money] NULL,
	[Grp1_18] [money] NULL,
	[Grp1_19] [money] NULL,
	[Grp1_20] [money] NULL,
	[Grp1_21] [money] NULL,
	[Grp1_22] [money] NULL,
	[Grp1_23] [money] NULL,
	[Grp1_24] [money] NULL,
	[Grp1_25] [money] NULL,
	[Grp1_26] [money] NULL,
	[Grp1_27] [money] NULL,
	[Grp1_28] [money] NULL,
	[Grp1_29] [money] NULL,
	[Grp1_30] [money] NULL,
	[Grp1_31] [money] NULL,
	[Grp2_01] [money] NULL,
	[Grp2_02] [money] NULL,
	[Grp2_03] [money] NULL,
	[Grp2_04] [money] NULL,
	[Grp2_05] [money] NULL,
	[Grp2_06] [money] NULL,
	[Grp2_07] [money] NULL,
	[Grp2_08] [money] NULL,
	[Grp2_09] [money] NULL,
	[Grp2_10] [money] NULL,
	[Grp2_11] [money] NULL,
	[Grp2_12] [money] NULL,
	[Grp2_13] [money] NULL,
	[Grp2_14] [money] NULL,
	[Grp2_15] [money] NULL,
	[Grp2_16] [money] NULL,
	[Grp2_17] [money] NULL,
	[Grp2_18] [money] NULL,
	[Grp2_19] [money] NULL,
	[Grp2_20] [money] NULL,
	[Grp2_21] [money] NULL,
	[Grp2_22] [money] NULL,
	[Grp2_23] [money] NULL,
	[Grp2_24] [money] NULL,
	[Grp2_25] [money] NULL,
	[Grp2_26] [money] NULL,
	[Grp2_27] [money] NULL,
	[Grp2_28] [money] NULL,
	[Grp2_29] [money] NULL,
	[Grp2_30] [money] NULL,
	[Grp2_31] [money] NULL,
	[Grp3_01] [money] NULL,
	[Grp3_02] [money] NULL,
	[Grp3_03] [money] NULL,
	[Grp3_04] [money] NULL,
	[Grp3_05] [money] NULL,
	[Grp3_06] [money] NULL,
	[Grp3_07] [money] NULL,
	[Grp3_08] [money] NULL,
	[Grp3_09] [money] NULL,
	[Grp3_10] [money] NULL,
	[Grp3_11] [money] NULL,
	[Grp3_12] [money] NULL,
	[Grp3_13] [money] NULL,
	[Grp3_14] [money] NULL,
	[Grp3_15] [money] NULL,
	[Grp3_16] [money] NULL,
	[Grp3_17] [money] NULL,
	[Grp3_18] [money] NULL,
	[Grp3_19] [money] NULL,
	[Grp3_20] [money] NULL,
	[Grp3_21] [money] NULL,
	[Grp3_22] [money] NULL,
	[Grp3_23] [money] NULL,
	[Grp3_24] [money] NULL,
	[Grp3_25] [money] NULL,
	[Grp3_26] [money] NULL,
	[Grp3_27] [money] NULL,
	[Grp3_28] [money] NULL,
	[Grp3_29] [money] NULL,
	[Grp3_30] [money] NULL,
	[Grp3_31] [money] NULL,
	[Grp4_01] [money] NULL,
	[Grp4_02] [money] NULL,
	[Grp4_03] [money] NULL,
	[Grp4_04] [money] NULL,
	[Grp4_05] [money] NULL,
	[Grp4_06] [money] NULL,
	[Grp4_07] [money] NULL,
	[Grp4_08] [money] NULL,
	[Grp4_09] [money] NULL,
	[Grp4_10] [money] NULL,
	[Grp4_11] [money] NULL,
	[Grp4_12] [money] NULL,
	[Grp4_13] [money] NULL,
	[Grp4_14] [money] NULL,
	[Grp4_15] [money] NULL,
	[Grp4_16] [money] NULL,
	[Grp4_17] [money] NULL,
	[Grp4_18] [money] NULL,
	[Grp4_19] [money] NULL,
	[Grp4_20] [money] NULL,
	[Grp4_21] [money] NULL,
	[Grp4_22] [money] NULL,
	[Grp4_23] [money] NULL,
	[Grp4_24] [money] NULL,
	[Grp4_25] [money] NULL,
	[Grp4_26] [money] NULL,
	[Grp4_27] [money] NULL,
	[Grp4_28] [money] NULL,
	[Grp4_29] [money] NULL,
	[Grp4_30] [money] NULL,
	[Grp4_31] [money] NULL,
	[Grp5_01] [money] NULL,
	[Grp5_02] [money] NULL,
	[Grp5_03] [money] NULL,
	[Grp5_04] [money] NULL,
	[Grp5_05] [money] NULL,
	[Grp5_06] [money] NULL,
	[Grp5_07] [money] NULL,
	[Grp5_08] [money] NULL,
	[Grp5_09] [money] NULL,
	[Grp5_10] [money] NULL,
	[Grp5_11] [money] NULL,
	[Grp5_12] [money] NULL,
	[Grp5_13] [money] NULL,
	[Grp5_14] [money] NULL,
	[Grp5_15] [money] NULL,
	[Grp5_16] [money] NULL,
	[Grp5_17] [money] NULL,
	[Grp5_18] [money] NULL,
	[Grp5_19] [money] NULL,
	[Grp5_20] [money] NULL,
	[Grp5_21] [money] NULL,
	[Grp5_22] [money] NULL,
	[Grp5_23] [money] NULL,
	[Grp5_24] [money] NULL,
	[Grp5_25] [money] NULL,
	[Grp5_26] [money] NULL,
	[Grp5_27] [money] NULL,
	[Grp5_28] [money] NULL,
	[Grp5_29] [money] NULL,
	[Grp5_30] [money] NULL,
	[Grp5_31] [money] NULL,
	[MGrp6] [money] NULL,
	[Grp6_01] [money] NULL,
	[Grp6_02] [money] NULL,
	[Grp6_03] [money] NULL,
	[Grp6_04] [money] NULL,
	[Grp6_05] [money] NULL,
	[Grp6_06] [money] NULL,
	[Grp6_07] [money] NULL,
	[Grp6_08] [money] NULL,
	[Grp6_09] [money] NULL,
	[Grp6_10] [money] NULL,
	[Grp6_11] [money] NULL,
	[Grp6_12] [money] NULL,
	[Grp6_13] [money] NULL,
	[Grp6_14] [money] NULL,
	[Grp6_15] [money] NULL,
	[Grp6_16] [money] NULL,
	[Grp6_17] [money] NULL,
	[Grp6_18] [money] NULL,
	[Grp6_19] [money] NULL,
	[Grp6_20] [money] NULL,
	[Grp6_21] [money] NULL,
	[Grp6_22] [money] NULL,
	[Grp6_23] [money] NULL,
	[Grp6_24] [money] NULL,
	[Grp6_25] [money] NULL,
	[Grp6_26] [money] NULL,
	[Grp6_27] [money] NULL,
	[Grp6_28] [money] NULL,
	[Grp6_29] [money] NULL,
	[Grp6_30] [money] NULL,
	[Grp6_31] [money] NULL,
	[MGrp7] [money] NULL,
	[Grp7_01] [money] NULL,
	[Grp7_02] [money] NULL,
	[Grp7_03] [money] NULL,
	[Grp7_04] [money] NULL,
	[Grp7_05] [money] NULL,
	[Grp7_06] [money] NULL,
	[Grp7_07] [money] NULL,
	[Grp7_08] [money] NULL,
	[Grp7_09] [money] NULL,
	[Grp7_10] [money] NULL,
	[Grp7_11] [money] NULL,
	[Grp7_12] [money] NULL,
	[Grp7_13] [money] NULL,
	[Grp7_14] [money] NULL,
	[Grp7_15] [money] NULL,
	[Grp7_16] [money] NULL,
	[Grp7_17] [money] NULL,
	[Grp7_18] [money] NULL,
	[Grp7_19] [money] NULL,
	[Grp7_20] [money] NULL,
	[Grp7_21] [money] NULL,
	[Grp7_22] [money] NULL,
	[Grp7_23] [money] NULL,
	[Grp7_24] [money] NULL,
	[Grp7_25] [money] NULL,
	[Grp7_26] [money] NULL,
	[Grp7_27] [money] NULL,
	[Grp7_28] [money] NULL,
	[Grp7_29] [money] NULL,
	[Grp7_30] [money] NULL,
	[Grp7_31] [money] NULL,
	[MGrp8] [money] NULL,
	[Grp8_01] [money] NULL,
	[Grp8_02] [money] NULL,
	[Grp8_03] [money] NULL,
	[Grp8_04] [money] NULL,
	[Grp8_05] [money] NULL,
	[Grp8_06] [money] NULL,
	[Grp8_07] [money] NULL,
	[Grp8_08] [money] NULL,
	[Grp8_09] [money] NULL,
	[Grp8_10] [money] NULL,
	[Grp8_11] [money] NULL,
	[Grp8_12] [money] NULL,
	[Grp8_13] [money] NULL,
	[Grp8_14] [money] NULL,
	[Grp8_15] [money] NULL,
	[Grp8_16] [money] NULL,
	[Grp8_17] [money] NULL,
	[Grp8_18] [money] NULL,
	[Grp8_19] [money] NULL,
	[Grp8_20] [money] NULL,
	[Grp8_21] [money] NULL,
	[Grp8_22] [money] NULL,
	[Grp8_23] [money] NULL,
	[Grp8_24] [money] NULL,
	[Grp8_25] [money] NULL,
	[Grp8_26] [money] NULL,
	[Grp8_27] [money] NULL,
	[Grp8_28] [money] NULL,
	[Grp8_29] [money] NULL,
	[Grp8_30] [money] NULL,
	[Grp8_31] [money] NULL,
	[MGrp9] [money] NULL,
	[Grp9_01] [money] NULL,
	[Grp9_02] [money] NULL,
	[Grp9_03] [money] NULL,
	[Grp9_04] [money] NULL,
	[Grp9_05] [money] NULL,
	[Grp9_06] [money] NULL,
	[Grp9_07] [money] NULL,
	[Grp9_08] [money] NULL,
	[Grp9_09] [money] NULL,
	[Grp9_10] [money] NULL,
	[Grp9_11] [money] NULL,
	[Grp9_12] [money] NULL,
	[Grp9_13] [money] NULL,
	[Grp9_14] [money] NULL,
	[Grp9_15] [money] NULL,
	[Grp9_16] [money] NULL,
	[Grp9_17] [money] NULL,
	[Grp9_18] [money] NULL,
	[Grp9_19] [money] NULL,
	[Grp9_20] [money] NULL,
	[Grp9_21] [money] NULL,
	[Grp9_22] [money] NULL,
	[Grp9_23] [money] NULL,
	[Grp9_24] [money] NULL,
	[Grp9_25] [money] NULL,
	[Grp9_26] [money] NULL,
	[Grp9_27] [money] NULL,
	[Grp9_28] [money] NULL,
	[Grp9_29] [money] NULL,
	[Grp9_30] [money] NULL,
	[Grp9_31] [money] NULL,
	[MGrp10] [money] NULL,
	[Grp10_01] [money] NULL,
	[Grp10_02] [money] NULL,
	[Grp10_03] [money] NULL,
	[Grp10_04] [money] NULL,
	[Grp10_05] [money] NULL,
	[Grp10_06] [money] NULL,
	[Grp10_07] [money] NULL,
	[Grp10_08] [money] NULL,
	[Grp10_09] [money] NULL,
	[Grp10_10] [money] NULL,
	[Grp10_11] [money] NULL,
	[Grp10_12] [money] NULL,
	[Grp10_13] [money] NULL,
	[Grp10_14] [money] NULL,
	[Grp10_15] [money] NULL,
	[Grp10_16] [money] NULL,
	[Grp10_17] [money] NULL,
	[Grp10_18] [money] NULL,
	[Grp10_19] [money] NULL,
	[Grp10_20] [money] NULL,
	[Grp10_21] [money] NULL,
	[Grp10_22] [money] NULL,
	[Grp10_23] [money] NULL,
	[Grp10_24] [money] NULL,
	[Grp10_25] [money] NULL,
	[Grp10_26] [money] NULL,
	[Grp10_27] [money] NULL,
	[Grp10_28] [money] NULL,
	[Grp10_29] [money] NULL,
	[Grp10_30] [money] NULL,
	[Grp10_31] [money] NULL,
	[MGrp11] [money] NULL,
	[Grp11_01] [money] NULL,
	[Grp11_02] [money] NULL,
	[Grp11_03] [money] NULL,
	[Grp11_04] [money] NULL,
	[Grp11_05] [money] NULL,
	[Grp11_06] [money] NULL,
	[Grp11_07] [money] NULL,
	[Grp11_08] [money] NULL,
	[Grp11_09] [money] NULL,
	[Grp11_10] [money] NULL,
	[Grp11_11] [money] NULL,
	[Grp11_12] [money] NULL,
	[Grp11_13] [money] NULL,
	[Grp11_14] [money] NULL,
	[Grp11_15] [money] NULL,
	[Grp11_16] [money] NULL,
	[Grp11_17] [money] NULL,
	[Grp11_18] [money] NULL,
	[Grp11_19] [money] NULL,
	[Grp11_20] [money] NULL,
	[Grp11_21] [money] NULL,
	[Grp11_22] [money] NULL,
	[Grp11_23] [money] NULL,
	[Grp11_24] [money] NULL,
	[Grp11_25] [money] NULL,
	[Grp11_26] [money] NULL,
	[Grp11_27] [money] NULL,
	[Grp11_28] [money] NULL,
	[Grp11_29] [money] NULL,
	[Grp11_30] [money] NULL,
	[Grp11_31] [money] NULL,
	[MGrp12] [money] NULL,
	[Grp12_01] [money] NULL,
	[Grp12_02] [money] NULL,
	[Grp12_03] [money] NULL,
	[Grp12_04] [money] NULL,
	[Grp12_05] [money] NULL,
	[Grp12_06] [money] NULL,
	[Grp12_07] [money] NULL,
	[Grp12_08] [money] NULL,
	[Grp12_09] [money] NULL,
	[Grp12_10] [money] NULL,
	[Grp12_11] [money] NULL,
	[Grp12_12] [money] NULL,
	[Grp12_13] [money] NULL,
	[Grp12_14] [money] NULL,
	[Grp12_15] [money] NULL,
	[Grp12_16] [money] NULL,
	[Grp12_17] [money] NULL,
	[Grp12_18] [money] NULL,
	[Grp12_19] [money] NULL,
	[Grp12_20] [money] NULL,
	[Grp12_21] [money] NULL,
	[Grp12_22] [money] NULL,
	[Grp12_23] [money] NULL,
	[Grp12_24] [money] NULL,
	[Grp12_25] [money] NULL,
	[Grp12_26] [money] NULL,
	[Grp12_27] [money] NULL,
	[Grp12_28] [money] NULL,
	[Grp12_29] [money] NULL,
	[Grp12_30] [money] NULL,
	[Grp12_31] [money] NULL,
	[MGrp13] [money] NULL,
	[Grp13_01] [money] NULL,
	[Grp13_02] [money] NULL,
	[Grp13_03] [money] NULL,
	[Grp13_04] [money] NULL,
	[Grp13_05] [money] NULL,
	[Grp13_06] [money] NULL,
	[Grp13_07] [money] NULL,
	[Grp13_08] [money] NULL,
	[Grp13_09] [money] NULL,
	[Grp13_10] [money] NULL,
	[Grp13_11] [money] NULL,
	[Grp13_12] [money] NULL,
	[Grp13_13] [money] NULL,
	[Grp13_14] [money] NULL,
	[Grp13_15] [money] NULL,
	[Grp13_16] [money] NULL,
	[Grp13_17] [money] NULL,
	[Grp13_18] [money] NULL,
	[Grp13_19] [money] NULL,
	[Grp13_20] [money] NULL,
	[Grp13_21] [money] NULL,
	[Grp13_22] [money] NULL,
	[Grp13_23] [money] NULL,
	[Grp13_24] [money] NULL,
	[Grp13_25] [money] NULL,
	[Grp13_26] [money] NULL,
	[Grp13_27] [money] NULL,
	[Grp13_28] [money] NULL,
	[Grp13_29] [money] NULL,
	[Grp13_30] [money] NULL,
	[Grp13_31] [money] NULL,
	[MGrp14] [money] NULL,
	[Grp14_01] [money] NULL,
	[Grp14_02] [money] NULL,
	[Grp14_03] [money] NULL,
	[Grp14_04] [money] NULL,
	[Grp14_05] [money] NULL,
	[Grp14_06] [money] NULL,
	[Grp14_07] [money] NULL,
	[Grp14_08] [money] NULL,
	[Grp14_09] [money] NULL,
	[Grp14_10] [money] NULL,
	[Grp14_11] [money] NULL,
	[Grp14_12] [money] NULL,
	[Grp14_13] [money] NULL,
	[Grp14_14] [money] NULL,
	[Grp14_15] [money] NULL,
	[Grp14_16] [money] NULL,
	[Grp14_17] [money] NULL,
	[Grp14_18] [money] NULL,
	[Grp14_19] [money] NULL,
	[Grp14_20] [money] NULL,
	[Grp14_21] [money] NULL,
	[Grp14_22] [money] NULL,
	[Grp14_23] [money] NULL,
	[Grp14_24] [money] NULL,
	[Grp14_25] [money] NULL,
	[Grp14_26] [money] NULL,
	[Grp14_27] [money] NULL,
	[Grp14_28] [money] NULL,
	[Grp14_29] [money] NULL,
	[Grp14_30] [money] NULL,
	[Grp14_31] [money] NULL,
	[MGrp15] [money] NULL,
	[Grp15_01] [money] NULL,
	[Grp15_02] [money] NULL,
	[Grp15_03] [money] NULL,
	[Grp15_04] [money] NULL,
	[Grp15_05] [money] NULL,
	[Grp15_06] [money] NULL,
	[Grp15_07] [money] NULL,
	[Grp15_08] [money] NULL,
	[Grp15_09] [money] NULL,
	[Grp15_10] [money] NULL,
	[Grp15_11] [money] NULL,
	[Grp15_12] [money] NULL,
	[Grp15_13] [money] NULL,
	[Grp15_14] [money] NULL,
	[Grp15_15] [money] NULL,
	[Grp15_16] [money] NULL,
	[Grp15_17] [money] NULL,
	[Grp15_18] [money] NULL,
	[Grp15_19] [money] NULL,
	[Grp15_20] [money] NULL,
	[Grp15_21] [money] NULL,
	[Grp15_22] [money] NULL,
	[Grp15_23] [money] NULL,
	[Grp15_24] [money] NULL,
	[Grp15_25] [money] NULL,
	[Grp15_26] [money] NULL,
	[Grp15_27] [money] NULL,
	[Grp15_28] [money] NULL,
	[Grp15_29] [money] NULL,
	[Grp15_30] [money] NULL,
	[Grp15_31] [money] NULL,
	[MGrp16] [money] NULL,
	[Grp16_01] [money] NULL,
	[Grp16_02] [money] NULL,
	[Grp16_03] [money] NULL,
	[Grp16_04] [money] NULL,
	[Grp16_05] [money] NULL,
	[Grp16_06] [money] NULL,
	[Grp16_07] [money] NULL,
	[Grp16_08] [money] NULL,
	[Grp16_09] [money] NULL,
	[Grp16_10] [money] NULL,
	[Grp16_11] [money] NULL,
	[Grp16_12] [money] NULL,
	[Grp16_13] [money] NULL,
	[Grp16_14] [money] NULL,
	[Grp16_15] [money] NULL,
	[Grp16_16] [money] NULL,
	[Grp16_17] [money] NULL,
	[Grp16_18] [money] NULL,
	[Grp16_19] [money] NULL,
	[Grp16_20] [money] NULL,
	[Grp16_21] [money] NULL,
	[Grp16_22] [money] NULL,
	[Grp16_23] [money] NULL,
	[Grp16_24] [money] NULL,
	[Grp16_25] [money] NULL,
	[Grp16_26] [money] NULL,
	[Grp16_27] [money] NULL,
	[Grp16_28] [money] NULL,
	[Grp16_29] [money] NULL,
	[Grp16_30] [money] NULL,
	[Grp16_31] [money] NULL,
 CONSTRAINT [PK_T_CalendarSale] PRIMARY KEY CLUSTERED 
(
	[YearMonth] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_UpMoveImport]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_UpMoveImport](
	[MovStk] [nvarchar](13) NOT NULL,
	[MovBalance] [int] NULL,
 CONSTRAINT [PK_z_UpMoveImport] PRIMARY KEY CLUSTERED 
(
	[MovStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Document]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Document](
	[DocCode] [nvarchar](20) NOT NULL,
	[DocReferCode] [nvarchar](40) NULL,
	[DocAccountCode] [nvarchar](20) NULL,
	[DocType] [nvarchar](1) NULL,
	[DocVatType] [nvarchar](1) NULL,
	[DocDueDate] [smalldatetime] NULL,
	[DocTransferDate] [smalldatetime] NULL,
	[DocQty] [int] NULL,
	[DocNet] [money] NULL,
	[DocNetVat] [money] NULL,
	[DocDiscPercent] [smallmoney] NULL,
	[DocVatPercent] [smallmoney] NULL,
	[DocStatus] [nvarchar](2) NULL,
	[DocUser] [nvarchar](20) NULL,
	[DocRemark1] [nvarchar](100) NULL,
	[DocRemark2] [nvarchar](250) NULL,
	[DocDT_Create] [smalldatetime] NULL,
	[DocDT_Edit] [smalldatetime] NULL,
	[DocCodeImport] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_Document] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocNav]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocNav](
	[DocCode] [nvarchar](20) NOT NULL,
	[DocReferCode] [nvarchar](40) NULL,
	[DocAccountCode] [nvarchar](20) NULL,
	[DocType] [nvarchar](1) NULL,
	[DocVatType] [nvarchar](1) NULL,
	[DocDueDate] [smalldatetime] NULL,
	[DocTransferDate] [smalldatetime] NULL,
	[DocQty] [int] NULL,
	[DocNet] [money] NULL,
	[DocNetVat] [money] NULL,
	[DocDiscPercent] [smallmoney] NULL,
	[DocVatPercent] [smallmoney] NULL,
	[DocStatus] [nvarchar](2) NULL,
	[DocUser] [nvarchar](20) NULL,
	[DocRemark1] [nvarchar](100) NULL,
	[DocRemark2] [nvarchar](250) NULL,
	[DocDT_Create] [smalldatetime] NULL,
	[DocDT_Edit] [smalldatetime] NULL,
	[DocCodeImport] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_DocNav] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocNavTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocNavTrn](
	[TrnDoc] [nvarchar](20) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [int] NULL,
	[TrnPrice] [money] NULL,
	[TrnDiscPercent] [smallmoney] NULL,
 CONSTRAINT [PK_T_DocNavTrn] PRIMARY KEY CLUSTERED 
(
	[TrnDoc] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocumentTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocumentTrn](
	[TrnDoc] [nvarchar](20) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [smallint] NULL,
	[TrnPrice] [money] NULL,
	[TrnDiscPercent] [smallmoney] NULL,
 CONSTRAINT [PK_T_DocumentTrn] PRIMARY KEY CLUSTERED 
(
	[TrnDoc] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_MoveImport]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MoveImport](
	[MovStk] [nvarchar](13) NOT NULL,
	[MovBalance] [int] NULL,
 CONSTRAINT [PK_T_MoveImport] PRIMARY KEY CLUSTERED 
(
	[MovStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocNavBuf]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocNavBuf](
	[DocCode] [nvarchar](20) NOT NULL,
	[DocAccountCode] [nvarchar](20) NULL,
	[DocTransferDate] [smalldatetime] NULL,
	[DocQty] [int] NULL,
	[DocStatus] [nvarchar](2) NULL,
	[DocRemark1] [nvarchar](100) NULL,
	[DocDT_Create] [smalldatetime] NULL,
	[DocDT_Edit] [smalldatetime] NULL,
 CONSTRAINT [PK_T_DocNavBuf] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocNavTrnBuf]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocNavTrnBuf](
	[TrnDoc] [nvarchar](20) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [int] NULL,
 CONSTRAINT [PK_T_DocNavTrnBuf] PRIMARY KEY CLUSTERED 
(
	[TrnDoc] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PosRun]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PosRun](
	[RunCode] [nvarchar](3) NOT NULL,
	[RunName] [nvarchar](40) NULL,
	[RunIP] [nvarchar](15) NULL,
	[RunUpdate] [int] NULL,
	[RunSent] [int] NULL,
 CONSTRAINT [PK_T_PosRun] PRIMARY KEY CLUSTERED 
(
	[RunCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PromotionTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PromotionTrn](
	[TrnPrmt] [smallint] NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnPrice] [money] NULL,
	[TrnMin] [smallint] NULL,
	[TrnMax] [smallint] NULL,
 CONSTRAINT [PK_T_PromotionTrn] PRIMARY KEY CLUSTERED 
(
	[TrnPrmt] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PrinterUsage]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PrinterUsage](
	[Code] [nvarchar](10) NOT NULL,
	[Branch] [nvarchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[IP] [nvarchar](15) NULL,
	[Port] [nvarchar](5) NULL,
	[SerialNo] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[UserID] [nvarchar](20) NULL,
	[DT_Edit] [smalldatetime] NULL,
	[QtyM_01] [int] NULL,
	[QtyM_02] [int] NULL,
	[QtyM_03] [int] NULL,
	[QtyM_04] [int] NULL,
	[QtyM_05] [int] NULL,
	[QtyM_06] [int] NULL,
	[QtyM_07] [int] NULL,
	[QtyM_08] [int] NULL,
	[QtyM_09] [int] NULL,
	[QtyM_10] [int] NULL,
	[QtyM_11] [int] NULL,
	[QtyM_12] [int] NULL,
 CONSTRAINT [PK_T_PrinterUsage] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocStd]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocStd](
	[DocCode] [nvarchar](20) NOT NULL,
	[DocReferCode] [nvarchar](40) NULL,
	[DocAccountCode] [nvarchar](20) NULL,
	[DocType] [nvarchar](1) NULL,
	[DocVatType] [nvarchar](1) NULL,
	[DocDueDate] [smalldatetime] NULL,
	[DocTransferDate] [smalldatetime] NULL,
	[DocQty] [smallint] NULL,
	[DocNet] [money] NULL,
	[DocNetVat] [money] NULL,
	[DocDiscPercent] [smallmoney] NULL,
	[DocVatPercent] [smallmoney] NULL,
	[DocStatus] [nvarchar](2) NULL,
	[DocUser] [nvarchar](20) NULL,
	[DocRemark1] [nvarchar](100) NULL,
	[DocRemark2] [nvarchar](250) NULL,
	[DocDT_Create] [smalldatetime] NULL,
	[DocDt_Edit] [smalldatetime] NULL,
	[DocCodeImport] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_DocStd] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocStdTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocStdTrn](
	[TrnDoc] [nvarchar](20) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [smallint] NULL,
	[TrnPrice] [money] NULL,
	[TrnDiscPercent] [smallmoney] NULL,
 CONSTRAINT [PK_T_DocStdTrn] PRIMARY KEY CLUSTERED 
(
	[TrnDoc] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocNavPost]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocNavPost](
	[DocCode] [nvarchar](20) NOT NULL,
	[DocTransferDate] [smalldatetime] NULL,
	[DocStatus] [nvarchar](2) NULL,
 CONSTRAINT [PK_T_DocNavPost] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Foundation]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Foundation](
	[Code] [nvarchar](20) NOT NULL,
	[Branch] [nvarchar](20) NULL,
	[Customer] [nvarchar](100) NULL,
	[Address] [nvarchar](300) NULL,
	[DT_Create] [smalldatetime] NULL,
	[DT_Edit] [smalldatetime] NULL,
	[Net] [money] NULL,
	[PayType] [nvarchar](2) NULL,
	[PayTypeDesc1] [nvarchar](100) NULL,
	[PayTypeDesc2] [nvarchar](20) NULL,
	[PayTypeDesc3] [nvarchar](20) NULL,
	[UserID] [nvarchar](20) NULL,
	[Remark1] [nvarchar](100) NULL,
	[Remark2] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_Foundation] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DepositTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DepositTrn](
	[Branch] [nvarchar](20) NOT NULL,
	[TrnDep] [nvarchar](20) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [smallint] NULL,
	[TrnPrice] [money] NULL,
	[TrnDiscReceive] [smallmoney] NULL,
	[TrnPriceReceive] [money] NULL,
	[TrnVat] [smallmoney] NULL,
	[TrnPrmt] [smallint] NULL,
	[TrnStatus] [nvarchar](2) NULL,
	[TrnUser] [nvarchar](20) NULL,
	[TrnRemark] [nvarchar](100) NULL,
	[TrnDT_Edit] [smalldatetime] NULL,
	[TrnDT_Receive] [smalldatetime] NULL,
	[TrnQtyReceive] [smallint] NULL,
 CONSTRAINT [PK_T_DepositTrn] PRIMARY KEY CLUSTERED 
(
	[Branch] ASC,
	[TrnDep] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocNavUpdate]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocNavUpdate](
	[DocCode] [nvarchar](20) NOT NULL,
	[DocTransferDate] [smalldatetime] NULL,
	[DocStatus] [nvarchar](2) NULL,
 CONSTRAINT [PK_T_DocNavUpdate] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Deposit]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Deposit](
	[Branch] [nvarchar](20) NOT NULL,
	[DepCode] [nvarchar](20) NOT NULL,
	[DepCustomer] [nvarchar](100) NULL,
	[DepTel] [nvarchar](50) NULL,
	[DepEmail] [nvarchar](100) NULL,
	[DepNet] [money] NULL,
	[DepPayCash] [money] NULL,
	[DepPayCard] [money] NULL,
	[DepPayCoupon] [money] NULL,
	[DepCrdType] [smallint] NULL,
	[DepCrdID] [nvarchar](120) NULL,
	[DepDiscPromotion] [smallmoney] NULL,
	[DepType] [nvarchar](1) NULL,
	[DepStatus] [nvarchar](2) NULL,
	[DepUser] [nvarchar](20) NULL,
	[DepPosCashier] [nvarchar](3) NULL,
	[DepRemark1] [nvarchar](300) NULL,
	[DepRemark2] [nvarchar](250) NULL,
	[DepDT_Create] [smalldatetime] NULL,
	[DepDT_Arrange] [smalldatetime] NULL,
	[DepSentType] [nvarchar](20) NULL,
	[DepDelivery] [nvarchar](20) NULL,
	[DepNetDelivery] [smallmoney] NULL,
	[DepVat] [smallmoney] NULL,
	[DepNetGP] [money] NULL,
	[DepPayOver] [money] NULL,
	[DepDiscStep] [smallmoney] NULL,
	[DepDiscMember] [smallmoney] NULL,
	[DepDiscOther] [smallmoney] NULL,
	[DepStange] [smallmoney] NULL,
	[DepMember_CrdID] [nvarchar](120) NULL,
	[DepMember_CrdType] [smallint] NULL,
 CONSTRAINT [PK_T_Deposit] PRIMARY KEY CLUSTERED 
(
	[Branch] ASC,
	[DepCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_OrderTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_OrderTrn](
	[TrnOrd] [nvarchar](10) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQty] [smallint] NULL,
	[TrnPrice] [money] NULL,
	[TrnDisc] [smallmoney] NULL,
	[TrnPrmt] [smallint] NULL,
 CONSTRAINT [PK_z_OrderTrn] PRIMARY KEY CLUSTERED 
(
	[TrnOrd] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OrderVat]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OrderVat](
	[KeyCode] [nvarchar](50) NOT NULL,
	[Branch] [nvarchar](20) NULL,
	[Code] [nvarchar](20) NULL,
	[DT_Code] [smalldatetime] NULL,
	[Document] [nvarchar](20) NULL,
	[Times] [tinyint] NULL,
	[DT_Print] [smalldatetime] NULL,
	[CustTel] [nvarchar](50) NULL,
	[CustName] [nvarchar](200) NULL,
	[CustID] [nvarchar](13) NULL,
	[UserID] [nvarchar](20) NULL,
	[TransferStatus] [nvarchar](2) NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_T_OrderVat] PRIMARY KEY CLUSTERED 
(
	[KeyCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DepositVat]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DepositVat](
	[KeyCode] [nvarchar](50) NOT NULL,
	[Branch] [nvarchar](20) NULL,
	[Code] [nvarchar](20) NULL,
	[DT_Code] [smalldatetime] NULL,
	[Document] [nvarchar](20) NULL,
	[Times] [tinyint] NULL,
	[DT_Print] [smalldatetime] NULL,
	[CustTel] [nvarchar](50) NULL,
	[CustName] [nvarchar](200) NULL,
	[CustID] [nvarchar](13) NULL,
	[UserID] [nvarchar](20) NULL,
	[TransferStatus] [nvarchar](2) NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_T_DepositVat] PRIMARY KEY CLUSTERED 
(
	[KeyCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AdjustVat]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AdjustVat](
	[Branch] [nvarchar](20) NOT NULL,
	[YearMonth] [nvarchar](6) NOT NULL,
	[Sequence] [smallint] NOT NULL,
	[DT_Create] [smalldatetime] NULL,
	[Cashier] [nvarchar](3) NULL,
	[PosID] [nvarchar](50) NULL,
	[CodeMin] [nvarchar](20) NULL,
	[CodeMax] [nvarchar](20) NULL,
	[Name] [nvarchar](200) NULL,
	[NoVatAmount] [money] NOT NULL,
	[VatAmount] [money] NOT NULL,
	[Vat] [money] NOT NULL,
 CONSTRAINT [PK_T_AdjustVat] PRIMARY KEY CLUSTERED 
(
	[Branch] ASC,
	[YearMonth] ASC,
	[Sequence] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Balance]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Balance](
	[BalStk] [nvarchar](13) NOT NULL,
	[BalYearMonth] [nvarchar](6) NULL,
	[BalThisMonth] [int] NULL,
	[BalThisMonthSale] [int] NULL,
	[BalQtyM_01] [int] NULL,
	[BalQtyM_02] [int] NULL,
	[BalQtyM_03] [int] NULL,
	[BalQtyM_04] [int] NULL,
	[BalQtyM_05] [int] NULL,
	[BalQtyM_06] [int] NULL,
	[BalQtyM_07] [int] NULL,
	[BalQtyM_08] [int] NULL,
	[BalQtyM_09] [int] NULL,
	[BalQtyM_10] [int] NULL,
	[BalQtyM_11] [int] NULL,
	[BalQtyM_12] [int] NULL,
	[BalQtySaleM_01] [int] NULL,
	[BalQtySaleM_02] [int] NULL,
	[BalQtySaleM_03] [int] NULL,
	[BalQtySaleM_04] [int] NULL,
	[BalQtySaleM_05] [int] NULL,
	[BalQtySaleM_06] [int] NULL,
	[BalQtySaleM_07] [int] NULL,
	[BalQtySaleM_08] [int] NULL,
	[BalQtySaleM_09] [int] NULL,
	[BalQtySaleM_10] [int] NULL,
	[BalQtySaleM_11] [int] NULL,
	[BalQtySaleM_12] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Check]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Check](
	[ChkCode] [nvarchar](20) NOT NULL,
	[ChkReferCode] [nvarchar](40) NULL,
	[ChkAccountCode] [nvarchar](20) NULL,
	[ChkType] [nvarchar](1) NULL,
	[ChkTransferDate] [datetime] NULL,
	[ChkQty] [int] NULL,
	[ChkNet] [money] NULL,
	[ChkLocation] [nvarchar](20) NULL,
	[ChkStatus] [nvarchar](2) NULL,
	[ChkUser] [nvarchar](20) NULL,
	[ChkRemark1] [nvarchar](100) NULL,
	[ChkDT_Create] [datetime] NULL,
	[ChkDT_Edit] [datetime] NULL,
 CONSTRAINT [PK_T_Check] PRIMARY KEY CLUSTERED 
(
	[ChkCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CheckTrn]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CheckTrn](
	[TrnChk] [nvarchar](20) NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnQtyRefer] [smallint] NULL,
	[TrnQty] [smallint] NULL,
	[TrnPrice] [money] NULL,
 CONSTRAINT [PK_T_CheckTrn] PRIMARY KEY CLUSTERED 
(
	[TrnChk] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_BalanceGrp]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_BalanceGrp](
	[BalStk] [nvarchar](13) NOT NULL,
	[BalLocSeq] [tinyint] NOT NULL,
	[BalQty] [int] NULL,
 CONSTRAINT [PK_T_BalanceGrp] PRIMARY KEY CLUSTERED 
(
	[BalStk] ASC,
	[BalLocSeq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Promotion]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Promotion](
	[PrmtCode] [smallint] NOT NULL,
	[PrmtName] [nvarchar](40) NULL,
	[PrmtType] [smallint] NULL,
	[PrmtItemCondition] [nvarchar](13) NULL,
	[PrmtItemConditionMin] [smallint] NULL,
	[PrmtSup] [nvarchar](7) NULL,
	[PrmtSupDisc] [smallmoney] NULL,
	[PrmtVipDisc] [smallmoney] NULL,
	[PrmtDT_Begin] [smalldatetime] NULL,
	[PrmtDT_End] [smalldatetime] NULL,
	[PrmtNet_Begin] [money] NULL,
	[PrmtNet_End] [money] NULL,
	[PrmtDT_Create] [smalldatetime] NULL,
	[PrmtDT_Edit] [smalldatetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[Publisher] [nvarchar](7) NULL,
	[Supplier] [nvarchar](7) NULL,
	[ProductGroup] [nvarchar](4) NULL,
	[Product] [nvarchar](4) NULL,
	[ConditionMin] [smallint] NULL,
	[ConditionMax] [smallint] NULL,
	[ConditionPrice1] [money] NULL,
	[ConditionPrice2] [money] NULL,
	[ConditionFormula] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_Promotion] PRIMARY KEY CLUSTERED 
(
	[PrmtCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DepositLocationDate]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DepositLocationDate](
	[DepDT_Create] [datetime] NOT NULL,
	[Seq_01] [datetime] NULL,
	[Seq_02] [datetime] NULL,
	[Seq_03] [datetime] NULL,
	[Seq_04] [datetime] NULL,
	[Seq_05] [datetime] NULL,
	[Seq_06] [datetime] NULL,
	[Seq_07] [datetime] NULL,
	[Seq_08] [datetime] NULL,
	[Seq_09] [datetime] NULL,
	[Seq_10] [datetime] NULL,
	[Seq_11] [datetime] NULL,
	[Seq_12] [datetime] NULL,
	[Seq_13] [datetime] NULL,
	[Seq_14] [datetime] NULL,
	[Seq_15] [datetime] NULL,
	[Seq_16] [datetime] NULL,
	[Seq_17] [datetime] NULL,
	[Seq_18] [datetime] NULL,
 CONSTRAINT [PK_T_DepositLocationDate] PRIMARY KEY CLUSTERED 
(
	[DepDT_Create] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DepositPlus]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DepositPlus](
	[DepStk] [nvarchar](13) NOT NULL,
	[DepMax] [int] NULL,
	[DepQty] [int] NULL,
	[DepDayArrange] [int] NULL,
	[DepDateArrange] [smalldatetime] NULL,
	[DepPriceMinimum] [smallmoney] NULL,
 CONSTRAINT [PK_T_DepositPlus] PRIMARY KEY CLUSTERED 
(
	[DepStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_HistoryDeposit]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_HistoryDeposit](
	[Branch] [nvarchar](20) NOT NULL,
	[YearMonth] [varchar](6) NOT NULL,
	[Net] [money] NULL,
	[Customer] [int] NULL,
 CONSTRAINT [PK_T_HistoryDeposit] PRIMARY KEY CLUSTERED 
(
	[Branch] ASC,
	[YearMonth] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_HistoryOrder]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_HistoryOrder](
	[Branch] [nvarchar](20) NOT NULL,
	[YearMonth] [nvarchar](6) NOT NULL,
	[Net] [money] NULL,
	[Customer] [int] NULL,
 CONSTRAINT [PK_T_HistoryOrder] PRIMARY KEY CLUSTERED 
(
	[Branch] ASC,
	[YearMonth] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LocationGrp]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LocationGrp](
	[LocSeq] [tinyint] NOT NULL,
	[LocName] [nvarchar](50) NULL,
	[LocRatio] [smallmoney] NULL,
	[LocEnable] [bit] NULL,
 CONSTRAINT [PK_T_LocationGrp] PRIMARY KEY CLUSTERED 
(
	[LocSeq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_EMS]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_EMS](
	[EMS_Min] [smallint] NOT NULL,
	[EMS_Max] [smallint] NOT NULL,
	[EMS_Price] [smallmoney] NOT NULL,
 CONSTRAINT [PK_T_EMS] PRIMARY KEY CLUSTERED 
(
	[EMS_Min] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogCard]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogCard](
	[DT_Create] [datetime] NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Branch] [nvarchar](20) NOT NULL,
	[UserID] [nvarchar](20) NOT NULL,
	[OldCard] [nvarchar](20) NULL,
	[NewCard] [nvarchar](20) NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_LogCard] PRIMARY KEY CLUSTERED 
(
	[DT_Create] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllPromotionTrn_Transfer$]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllPromotionTrn_Transfer$](
	[TrnPrmt] [float] NULL,
	[TrnStk] [float] NULL,
	[TrnPrice] [float] NULL,
	[TrnMin] [float] NULL,
	[TrnMax] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_AddMoveImport]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_AddMoveImport](
	[MovStk] [nvarchar](13) NOT NULL,
	[MovBalance] [int] NULL,
 CONSTRAINT [PK_z_AddMoveImport] PRIMARY KEY CLUSTERED 
(
	[MovStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_Order]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_Order](
	[OrdCode] [nvarchar](10) NOT NULL,
	[OrdDT_Create] [smalldatetime] NULL,
	[OrdNet] [money] NULL,
	[OrdNetGP] [money] NULL,
	[OrdVat] [smallmoney] NULL,
	[OrdUser] [nvarchar](20) NULL,
	[OrdPayCash] [money] NULL,
	[OrdPayCard] [money] NULL,
	[OrdPayCoupon] [money] NULL,
	[OrdPayOver] [money] NULL,
	[OrdDiscStep] [smallmoney] NULL,
	[OrdDiscPromotion] [smallmoney] NULL,
	[OrdDiscMember] [smallmoney] NULL,
	[OrdDiscOther] [smallmoney] NULL,
	[OrdStange] [smallmoney] NULL,
	[OrdStatus] [nvarchar](2) NULL,
	[OrdRemark1] [nvarchar](30) NULL,
	[OrdRemark2] [nvarchar](30) NULL,
 CONSTRAINT [PK_z_Order] PRIMARY KEY CLUSTERED 
(
	[OrdCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[z_OrderCreditCard]    Script Date: 06/28/2016 14:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[z_OrderCreditCard](
	[CrdOrd] [nvarchar](10) NOT NULL,
	[CrdType] [smallint] NULL,
	[CrdID] [nvarchar](120) NULL,
	[CrdNet] [money] NULL,
	[CrdNetCharge] [smallmoney] NULL,
 CONSTRAINT [PK_z_OrderCreditCard] PRIMARY KEY CLUSTERED 
(
	[CrdOrd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

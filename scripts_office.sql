USE [Office]
GO
/****** Object:  Table [dbo].[T_Customer]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Customer](
	[CustTel] [nvarchar](50) NOT NULL,
	[CustName] [nvarchar](100) NULL,
	[CustAddress] [nvarchar](300) NULL,
	[CustFax] [nvarchar](50) NULL,
	[CustID] [nvarchar](20) NULL,
	[CustEmail] [nvarchar](100) NULL,
	[CustDT_Create] [smalldatetime] NULL,
	[CustDT_Edit] [smalldatetime] NULL,
	[CustPostCode] [nvarchar](10) NULL,
	[CustTelDelivery] [nvarchar](50) NULL,
	[CustNameDelivery] [nvarchar](100) NULL,
	[CustAddressDelivery] [nvarchar](300) NULL,
	[CustPostCodeDelivery] [nvarchar](10) NULL,
	[CustRemark1] [nvarchar](100) NULL,
	[CustRemark2] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_Customer] PRIMARY KEY CLUSTERED 
(
	[CustTel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CardType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CardType](
	[TypeCode] [smallint] NOT NULL,
	[TypeName] [nvarchar](40) NULL,
	[TypeRatio] [smallmoney] NULL,
	[TypeRatioStatus] [bit] NULL,
	[TypeRegExp] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_CardType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocumentStatus]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocumentStatus](
	[StsCode] [nvarchar](2) NOT NULL,
	[StsName] [nvarchar](40) NULL,
	[StsType] [tinyint] NULL,
 CONSTRAINT [PK_T_DocumentStatus] PRIMARY KEY CLUSTERED 
(
	[StsCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Product]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Product](
	[PrdCode] [nvarchar](4) NOT NULL,
	[PrdH1] [nvarchar](50) NULL,
	[PrdH2] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_Product] PRIMARY KEY CLUSTERED 
(
	[PrdCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PromotionType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PromotionType](
	[TypeCode] [smallint] NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_PromotionType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Role]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Role](
	[RoleCode] [smallint] NOT NULL,
	[RoleName] [nvarchar](40) NULL,
	[RoleRight] [ntext] NULL,
 CONSTRAINT [PK_T_Role] PRIMARY KEY CLUSTERED 
(
	[RoleCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_StockPlus]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_StockPlus](
	[StkCode] [nvarchar](13) NOT NULL,
	[StkComment] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_StockPlus] PRIMARY KEY CLUSTERED 
(
	[StkCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SupplierDiscType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SupplierDiscType](
	[TypeCode] [nvarchar](1) NOT NULL,
	[TypeName] [nvarchar](40) NULL,
 CONSTRAINT [PK_T_SupplierDiscType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SupplierType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SupplierType](
	[TypeCode] [nvarchar](2) NOT NULL,
	[TypeName] [nvarchar](40) NULL,
 CONSTRAINT [PK_T_SupplierType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllPromotionTrn]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllPromotionTrn](
	[TrnPrmt] [smallint] NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnPrice] [money] NULL,
	[TrnMin] [smallint] NULL,
	[TrnMax] [smallint] NULL,
 CONSTRAINT [PK_T_AllPromotionTrn] PRIMARY KEY CLUSTERED 
(
	[TrnPrmt] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductType](
	[TypeCode] [nvarchar](4) NOT NULL,
	[TypeName] [nvarchar](40) NULL,
 CONSTRAINT [PK_T_ProductType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Company]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Company](
	[CmpCode] [smallint] NOT NULL,
	[CmpName] [nvarchar](60) NULL,
	[CmpAddress] [ntext] NULL,
	[CmpZip] [nvarchar](5) NULL,
	[CmpTel] [nvarchar](40) NULL,
	[CmpFax] [nvarchar](40) NULL,
	[CmpTaxID] [nvarchar](20) NULL,
	[CmpEmail] [nvarchar](40) NULL,
	[CmpLink] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_Company] PRIMARY KEY CLUSTERED 
(
	[CmpCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Keyword]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Keyword](
	[KeyStk] [nvarchar](13) NOT NULL,
	[KeyName] [nvarchar](60) NULL,
	[KeySequence] [smallint] NULL,
 CONSTRAINT [PK_T_Keyword] PRIMARY KEY CLUSTERED 
(
	[KeyStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Program]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Program](
	[PrgCode] [nvarchar](4) NOT NULL,
	[PrgH1] [nvarchar](50) NULL,
	[PrgH2] [nvarchar](50) NULL,
	[PrgH3] [nvarchar](50) NULL,
	[PrgH4] [nvarchar](50) NULL,
	[PrgLink] [nvarchar](50) NULL,
	[PrgDesc] [nvarchar](80) NULL,
 CONSTRAINT [PK_T_Program] PRIMARY KEY CLUSTERED 
(
	[PrgCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Publisher]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Publisher](
	[PubCode] [nvarchar](7) NOT NULL,
	[PubName] [nvarchar](100) NULL,
	[PubNamePrefix] [nvarchar](30) NULL,
	[PubNameSuffix] [nvarchar](30) NULL,
	[PubNameCopyright] [nvarchar](100) NULL,
	[PubLink] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_Publisher] PRIMARY KEY CLUSTERED 
(
	[PubCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllNews]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllNews](
	[NewsRun] [int] IDENTITY(1,1) NOT NULL,
	[NewsName] [ntext] NULL,
	[NewsComment] [ntext] NULL,
	[NewsFile] [nvarchar](50) NULL,
	[NewsGrp] [tinyint] NULL,
	[NewsDT_Edit] [smalldatetime] NULL,
 CONSTRAINT [PK_T_AllNews] PRIMARY KEY CLUSTERED 
(
	[NewsRun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Supplier]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Supplier](
	[SupCode] [nvarchar](7) NOT NULL,
	[SupName] [nvarchar](100) NULL,
	[SupNamePrefix] [nvarchar](30) NULL,
	[SupNameSuffix] [nvarchar](30) NULL,
	[SupNameCopyright] [nvarchar](100) NULL,
	[SupPerson] [nvarchar](100) NULL,
	[SupAddress] [ntext] NULL,
	[SupZip] [nvarchar](5) NULL,
	[SupTel] [nvarchar](40) NULL,
	[SupFax] [nvarchar](40) NULL,
	[SupEmail] [nvarchar](40) NULL,
	[SupType] [nvarchar](2) NULL,
	[SupDisc1] [smallmoney] NULL,
	[SupDisc2] [smallmoney] NULL,
	[SupDisc3] [smallmoney] NULL,
	[SupDisc4] [smallmoney] NULL,
	[SupTerm1] [smallint] NULL,
	[SupTerm2] [smallint] NULL,
	[SupTerm3] [smallint] NULL,
	[SupTerm4] [smallint] NULL,
	[SupDiscType1] [nvarchar](1) NULL,
	[SupDiscType2] [nvarchar](1) NULL,
	[SupDiscType3] [nvarchar](1) NULL,
	[SupDiscType4] [nvarchar](1) NULL,
	[SupStandingDisc] [smallmoney] NULL,
	[SupStandingTerm] [smallint] NULL,
	[SupConsignDisc] [smallmoney] NULL,
	[SupConsignTerm] [smallint] NULL,
	[SupLink] [nvarchar](100) NULL,
	[SupPublisher] [bit] NULL,
	[SupDistributor] [bit] NULL,
	[SupDT_Create] [smalldatetime] NULL,
	[SupDT_Edit] [smalldatetime] NULL,
 CONSTRAINT [PK_T_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllPromotionTrn_Transfer]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllPromotionTrn_Transfer](
	[TrnPrmt] [smallint] NOT NULL,
	[TrnStk] [nvarchar](13) NOT NULL,
	[TrnPrice] [money] NULL,
	[TrnMin] [smallint] NULL,
	[TrnMax] [smallint] NULL,
 CONSTRAINT [PK_T_AllPromotionTrn_Transfer] PRIMARY KEY CLUSTERED 
(
	[TrnPrmt] ASC,
	[TrnStk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Province]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Province](
	[PrvCode] [nvarchar](4) NOT NULL,
	[PrvName] [nvarchar](50) NULL,
	[PrvRgn] [nvarchar](1) NULL,
	[PrvX] [smallint] NULL,
	[PrvY] [smallint] NULL,
 CONSTRAINT [PK_T_Province] PRIMARY KEY CLUSTERED 
(
	[PrvCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_RewardType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_RewardType](
	[TypeCode] [smallint] NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_RewardType] PRIMARY KEY CLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Author]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Author](
	[AutStk] [nvarchar](13) NOT NULL,
	[AutName] [nvarchar](100) NULL,
	[AutNamePrefix] [nvarchar](30) NULL,
	[AutNameSuffix] [nvarchar](30) NULL,
	[AutLink] [nvarchar](100) NULL,
	[AutSequence] [smallint] NOT NULL,
 CONSTRAINT [PK_T_Author] PRIMARY KEY CLUSTERED 
(
	[AutStk] ASC,
	[AutSequence] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Member]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Member](
	[MemCode] [nvarchar](13) NOT NULL,
	[MemName] [nvarchar](100) NULL,
	[MemAddress] [varchar](300) NULL,
	[MemZip] [nvarchar](5) NULL,
	[MemTel] [nvarchar](50) NULL,
	[MemType] [smallint] NULL,
	[MemBirthday] [datetime] NULL,
	[MemExpire] [nvarchar](7) NULL,
	[MemDT_Create] [datetime] NULL,
	[MemDT_Edit] [datetime] NULL,
	[MemRemark1] [nvarchar](50) NULL,
	[MemRemark2] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_Member] PRIMARY KEY CLUSTERED 
(
	[MemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Agency]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Agency](
	[AgcCode] [nvarchar](10) NOT NULL,
	[AgcBranch] [nvarchar](20) NOT NULL,
	[AgcName] [nvarchar](100) NULL,
	[AgcSequence] [tinyint] NULL,
	[AgcCondition] [bit] NULL,
	[AgcDiscount] [smallmoney] NULL,
 CONSTRAINT [PK_T_Agency] PRIMARY KEY CLUSTERED 
(
	[AgcCode] ASC,
	[AgcBranch] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AgencyTrn]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AgencyTrn](
	[Branch] [nvarchar](20) NOT NULL,
	[Item] [nvarchar](13) NOT NULL,
	[Code] [nvarchar](10) NULL,
 CONSTRAINT [PK_T_AgencyTrn] PRIMARY KEY CLUSTERED 
(
	[Branch] ASC,
	[Item] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllReward]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllReward](
	[Code] [smallint] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Type] [smallint] NULL,
	[Point] [smallint] NULL,
	[Item] [nvarchar](13) NULL,
	[Price] [money] NULL,
	[Supplier] [nvarchar](7) NULL,
	[Publisher] [nvarchar](7) NULL,
	[Product] [nvarchar](4) NULL,
	[Discount_Percent] [smallmoney] NULL,
	[Discount_Baht] [smallmoney] NULL,
	[DT_Begin] [smalldatetime] NULL,
	[DT_End] [smalldatetime] NULL,
	[DT_Create] [smalldatetime] NULL,
	[DT_Edit] [smalldatetime] NULL,
 CONSTRAINT [PK_T_AllReward] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllPromotion]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllPromotion](
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
 CONSTRAINT [PK_T_AllPromotion] PRIMARY KEY CLUSTERED 
(
	[PrmtCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogType]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogType](
	[Type] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_T_LogType] PRIMARY KEY CLUSTERED 
(
	[Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllUser_Cancel]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllUser_Cancel](
	[UserID] [nvarchar](20) NOT NULL,
	[UserPassword] [nvarchar](20) NULL,
	[UserName] [nvarchar](60) NULL,
	[UserEmail] [nvarchar](40) NULL,
	[UserVipPassword] [nvarchar](20) NULL,
	[UserRole] [smallint] NULL,
	[UserBranch] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Stock]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Stock](
	[StkCode] [nvarchar](13) NOT NULL,
	[StkISBN] [nvarchar](13) NULL,
	[StkName] [nvarchar](100) NULL,
	[StkPrice] [money] NULL,
	[StkPub] [nvarchar](7) NULL,
	[StkSup] [nvarchar](7) NULL,
	[StkPrdGrp] [nvarchar](4) NULL,
	[StkPrd] [nvarchar](4) NULL,
	[StkVat] [nvarchar](1) NULL,
	[StkCanDisc] [nvarchar](1) NULL,
	[StkGP] [bit] NULL,
	[StkDiscRecv] [smallmoney] NULL,
	[StkDiscSE] [smallmoney] NULL,
	[StkDiscOther] [smallmoney] NULL,
	[StkStatus] [nvarchar](2) NULL,
	[StkDT_Create] [smalldatetime] NULL,
	[StkDT_Edit] [smalldatetime] NULL,
 CONSTRAINT [PK_T_Stock] PRIMARY KEY CLUSTERED 
(
	[StkCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Cashier]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Cashier](
	[CshIP] [nvarchar](15) NOT NULL,
	[CshBranch] [nvarchar](20) NOT NULL,
	[CshCode] [nvarchar](3) NULL,
	[CshName] [nvarchar](50) NULL,
	[CshDatabaseServerAlone] [nvarchar](50) NULL,
	[CshAloneUser] [nvarchar](50) NULL,
	[CshAlonePassword] [nvarchar](50) NULL,
	[CshMemberNew] [nvarchar](50) NULL,
	[CshMemberForwardMonth] [tinyint] NULL,
	[CshPrinterType] [tinyint] NULL,
	[CshPrinterPort] [tinyint] NULL,
	[CshPrinterSlip] [nvarchar](50) NULL,
	[CshPrinterCode] [tinyint] NULL,
	[CshScreenCode] [tinyint] NULL,
	[CshReceiptHeader] [nvarchar](50) NULL,
	[CshReceiptPosCashier] [nvarchar](50) NULL,
	[CshReceiptTaxID] [nvarchar](50) NULL,
	[CshReceiptTaxMessage] [nvarchar](100) NULL,
	[CshReceiptFooter] [nvarchar](100) NULL,
	[CshJournalHeader] [nvarchar](50) NULL,
	[CshJournalPosCashier] [nvarchar](50) NULL,
	[CshJournalTaxID] [nvarchar](50) NULL,
	[CshEDCLink] [tinyint] NULL,
	[CshWorkForPrint] [bit] NULL,
	[CshTypeGP] [nvarchar](10) NULL,
 CONSTRAINT [PK_T_Cashier] PRIMARY KEY CLUSTERED 
(
	[CshIP] ASC,
	[CshBranch] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Stange]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Stange](
	[StgRun] [smallint] NOT NULL,
	[StgRound] [smallint] NULL,
 CONSTRAINT [PK_T_Stange] PRIMARY KEY CLUSTERED 
(
	[StgRun] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Branch]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Branch](
	[BrnCode] [nvarchar](20) NOT NULL,
	[BrnOpen] [bit] NULL,
	[BrnName] [nvarchar](100) NULL,
	[BrnCompany] [nvarchar](40) NULL,
	[BrnWorkOpen] [nvarchar](5) NULL,
	[BrnWorkClose] [nvarchar](5) NULL,
	[BrnCodePO] [nvarchar](3) NULL,
	[BrnVat] [smallmoney] NULL,
	[BrnWebServerPublic] [nvarchar](50) NULL,
	[BrnWebServerLocal] [nvarchar](50) NULL,
	[BrnDatabaseServerPublic] [nvarchar](50) NULL,
	[BrnPublicUser] [nvarchar](50) NULL,
	[BrnPublicPassword] [nvarchar](50) NULL,
	[BrnDatabaseServerLocal] [nvarchar](50) NULL,
	[BrnLocalUser] [nvarchar](50) NULL,
	[BrnLocalPassword] [nvarchar](50) NULL,
	[BrnDocumentFolder] [nvarchar](50) NULL,
	[BrnTransferFolder] [nvarchar](50) NULL,
	[BrnVatPlace] [nvarchar](100) NULL,
	[BrnAddress] [nvarchar](200) NULL,
	[BrnTel] [nvarchar](50) NULL,
	[BrnFax] [nvarchar](50) NULL,
	[BrnPrv] [nvarchar](4) NULL,
	[BrnWebServerShare] [nvarchar](50) NULL,
	[BrnDatabaseServerShare] [nvarchar](50) NULL,
	[BrnShareUser] [nvarchar](50) NULL,
	[BrnSharePassword] [nvarchar](50) NULL,
	[BrnShareDatabase] [nvarchar](50) NULL,
	[BrnShowQuoDesc] [bit] NULL,
	[BrnTaxT1] [nvarchar](100) NULL,
	[BrnTaxT2] [nvarchar](100) NULL,
	[BrnTaxT3] [nvarchar](100) NULL,
	[BrnTaxT4] [nvarchar](100) NULL,
	[BrnTaxT5] [nvarchar](100) NULL,
	[BrnTaxE1] [nvarchar](100) NULL,
	[BrnTaxE2] [nvarchar](100) NULL,
	[BrnTaxE3] [nvarchar](100) NULL,
	[BrnTaxE4] [nvarchar](100) NULL,
	[BrnTaxE5] [nvarchar](100) NULL,
	[BrnTaxCompanyCSS] [nvarchar](20) NULL,
	[BrnTypeGP] [bit] NULL,
 CONSTRAINT [PK_T_Branch] PRIMARY KEY CLUSTERED 
(
	[BrnCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CustomerLocal]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CustomerLocal](
	[CustTel] [nvarchar](50) NOT NULL,
	[CustName] [nvarchar](100) NULL,
	[CustAddress] [nvarchar](300) NULL,
	[CustFax] [nvarchar](50) NULL,
	[CustID] [nvarchar](20) NULL,
	[CustEmail] [nvarchar](100) NULL,
	[CustDT_Create] [smalldatetime] NULL,
	[CustDT_Edit] [smalldatetime] NULL,
	[CustPostCode] [nvarchar](10) NULL,
	[CustTelDelivery] [nvarchar](50) NULL,
	[CustNameDelivery] [nvarchar](100) NULL,
	[CustAddressDelivery] [nvarchar](300) NULL,
	[CustPostCodeDelivery] [nvarchar](10) NULL,
	[CustRemark1] [nvarchar](100) NULL,
	[CustRemark2] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_CustomerLocal] PRIMARY KEY CLUSTERED 
(
	[CustTel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_AllUser]    Script Date: 06/28/2016 14:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_AllUser](
	[UserID] [nvarchar](20) NOT NULL,
	[UserPassword] [nvarchar](20) NULL,
	[UserName] [nvarchar](60) NULL,
	[UserEmail] [nvarchar](40) NULL,
	[UserVipPassword] [nvarchar](20) NULL,
	[UserRole] [smallint] NULL,
	[UserBranch] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_AllUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

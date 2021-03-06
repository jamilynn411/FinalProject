IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_Reservations_StudioLocation]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_Reservations_Pets]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
ALTER TABLE [dbo].[Photos] DROP CONSTRAINT [FK_Photos_Pets1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets] DROP CONSTRAINT [FK_Pets_AspNetUsers]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[StudioLocation]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudioLocation]') AND type in (N'U'))
DROP TABLE [dbo].[StudioLocation]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservations]') AND type in (N'U'))
DROP TABLE [dbo].[Reservations]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
DROP TABLE [dbo].[Photos]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
DROP TABLE [dbo].[Pets]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/4/2018 1:33:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pets](
	[PetID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[OwnerID] [nvarchar](128) NOT NULL,
	[SpecialNotes] [varchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[DateAdded] [date] NOT NULL,
 CONSTRAINT [PK_Pets] PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Photos](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[PetID] [int] NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reservations](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[StudioID] [int] NOT NULL,
	[PetID] [int] NOT NULL,
	[SessionDate] [date] NOT NULL,
	[PhotographerID] [nvarchar](128) NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StudioLocation]    Script Date: 4/4/2018 1:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudioLocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudioLocation](
	[StudioID] [int] IDENTITY(1,1) NOT NULL,
	[StudioName] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [char](2) NOT NULL,
	[ZipCode] [int] NOT NULL,
	[SessionLimit] [tinyint] NOT NULL,
 CONSTRAINT [PK_StudioLocation] PRIMARY KEY CLUSTERED 
(
	[StudioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201803281819133_InitialCreate', N'FSWDFinalProject.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CD96EE4B8157D0F907F10F494049E929774A36354CDC053764D8C784397DDC95B8325B1CA4C4B9446A23C3682F9B279C827E517424AD4C24D4B956AF16080411797732F2F0FC9CBAB4BFFEFB7FF8E7F780D7CEB05C6090AF1C43E191DDB16C46EE821BC9AD829597EF7C9FEE1FB3FFE617CE505AFD697A2DD196B477BE264623F13129D3B4EE23EC30024A300B97198844B3272C3C0015EE89C1E1FFFCD3939712085B02996658D3FA798A000663FE8CF69885D189114F8B7A107FD8497D39A79866ADD8100261170E1C49ECDFF79394318F80F71F86FE892D1D3F5E8F6CB7494F7B4AD0B1F01AAD51CFA4BDB0218870410AAF3F95302E7240EF16A1ED102E03FBE4590B65B023F817C2CE755F3AEC33A3E65C372AA8E05949B26240C7A029E9C713B3972F7B5AC6D9776A496BCA216276F6CD4993527F6B507B3A2CFA14F0D200B3C9FFA316B3CB16F4B1117497407C9A8E838CA21673185FB258CBF8DEA884756E77E4725AF4E47C7ECBF236B9AFA248DE104C394C4C03FB21ED2858FDC7FC0B7C7F01BC493B393C5F2ECD3878FC03BFBF85778F6A13E523A56DA4E28A045942D118CA96E70598EDFB61CB19F23772CBBD5FAE456A15CA24BC4B66EC1EB0DC42BF24C17CFE927DB9AA157E815259C5C4F18D115453B9138A53FEF52DF070B1F96F54EA34CF6FF06A9A71F3E0E22F50EBCA05536F5927CBA7062BAAE3E433FAB4D9E51942F2F61BEBFF266B3380CD86F915F79EDD77998C62E1B4C686CF208E21524A27663A7226F274A33A8E1695DA01E3EB599A62ABDB54DD980D6590985885DAF8642DFEDCAEDCCB88B28A29397518B59A48970CD07D748423AB20CED2B4A9D74A514A643FD3DEF90331427A4659BA4FFEC24BA59D20DD891A087E710C3BB3458304E6D59D65500903FC009D3410A75F496280E6049921F43BA9E01EE3DE50F2049E806EBFD1D24CF5B37D01CBA694CD7FD9C8020DAE5D40F66AEC75FC2197049185F61D66B63BC9BD0FD16A6E40A7B9780C027E21680ECE7230ABA030CA2CE85EBC224995182416F1AD2BB4501788DC9D9696F38B6FFEEDBEB9AFA00057AB74B3A29BE164D2BD74BDF4271BF0CCD742E5893AA37E10AE16EAA164DCDAAE62D5A55E5CDFAAACAC0BA69CA5B9A15CD1AB4EA99B71ACCA9CD666878AF36833D7CB776337FC4B417D4CC38A73B24FC096218D36DCC7B0084C0185733D065DFD887FF934D1F13BAF5B32993F405F8E9D0A2D65A0DD92630FC6AC8600F7F35646AD2E217E43127B1C35DAF684CE13BB5D75F23DBD79CA4D9AE978330CC5D0BDFCD1E605A2E174912BA285B059A281F8FD188FA531FCE6A0FD8E4A391833E746094E8881D79B4848ECD9649758F2FA10F09B42EDC3C0A3A05890B3CD58C74405E0FC58A1355A35815FC1195FB8B2293321DC6AC1360179384AE548489BA2C10765104FC562B493D3B1E616CECA50CB9E61246103381AD96E8225C1FEB610A9472A44969B3D0D8A931AE998806AFD534E76D2E6C35EF4A0866279C6CF19D0DBCE4FEDB5688D96CB11D90B3D9245D1430C62DF741507E57E94A00F9E2726804956E4C068272976A2704152DB607828A26797704CDAFA85DE75FBAAF1E1A3DC58BF2EE8FF54673ED819B823D0E8C9AB9EF49FB10DA03C62A3D2F17AC12BE12CDE58CEAC9EF67097775658A30F0392462C8A6F277B57EA8D30C2293A809B0225A0B28FFE2A900290BAA8772452CAF513BEE45F4802DE26E8DB07CEF97606B1C50B1EB5F7E6B0DCDDF87657276BA7D94232BD9A090BCD365A186A32184BC798903EF6014535C56354C175FB88F375C1B189F8C0603B578AE0623158319DC4A0535DBADA473C8FAB8641B5949729F0C562A0633B8953847DB8DA4710A7AB8051B99483CC2075A6C45A4A33C6DCABAB1932787F182B163C8221BDF8228427855CB2AE325D63C4F299B7E37EF9F5F15E4188E9B68D2AC4A6D4B49248CC10A4AB55434D534FB7C7D0908580016E7997A81D24C7BB61AB6FF4264FDF85427B138078AD6ECDFFC6B7A739E8270EEAA8E09C79BD1D106CCBBC942EA1A2EE8BB5B2CE30FF820D644F1A7A19F06D8EC6C997BE7DFF2EAFDF3121561EC48FA2BCE946239C5E515A7A1D324A90B640B1356FA35EB4F9A19C264FAC22BAD1BDFE4A99A518AC0551DC514CCDADB249A1C9CB5274EF623FBCF5B2BC276D65B2D1FA70E522BEE8E5565DCD4A1AAD2EE48424A4D1D4CA8E88EC7D366EA48BCA827462DCB4301ABD5F518A9901C230C55A8E98E2865C0D421A5AAB5E6C360017D8BEE12D4AC973ABA5ADB83956AFE8B404FB57A0D6C8DCE725D77544D8A4C1D5853DD1DBBCA9791B7F9033E678D77AE410EDAFC8ABED9496BC0D8CE9E3DCC415DCB44A803D58A7B62F15C03058C971F24B38CF7D4419895476936639601C3BC2309DFF3C50DA93109C18C297CA41736FDA62405335E3FFE6E9525CA95556E524A2FAFAED21575CCAF8BEDAFA194FB63DEC4B60A33D203FA2D213018B106A3F9CFFED447906DEF45835B80D11226244F4CB14F8F4F4EA5475487F3A0C94912CFD75CB74DAF9AC439DB418E197E01B1FB0C6235E36383473F15A8124CBFC61E7C9DD8FFC97A9D677119F6AFACF8C8BA4E9E30FA39A5158F710AAD5FD50CD6611E41345F0F0FF4C94A77AB5EFFEB6BDEF5C8BA8FE98A39B78E255BAE33C3E243965EDAE45D37D066EDE72DEF7741296F440AE43F05E0F5CF75B875DE816C04A679EBB1119EF09E436B4069EDAFFF7C6381C8204F37361AAFF679C6503332C8904DCF2FD6C1323EBDF0E84F923DBDE8C965ED538C7554333EC340B83F98FC08A3FB0E59F4DCE329A8B9BAED62B7CCECDC9AC4BE5146EBBE8F4D25D77DA385AEE6B3F780DB20677D0D66BCB374EFC10E6E4D36F760D8FBA4F6D653B80F256BBBCAA7D96FB2F62EF3B31BBEB5FDAED2B20F2091509318B5FFE4EB5D73CD146E3EF00CD67E29D60746369E2EB7FF44EA5D93CD14813E70B2F54A973E30AEEDEBFCDC33D33A1FA17B4F7E56F3B80C9F8D7461EAB6E4E63CA64F6FF88B909220F728F337A9FA6CBAA64CE016815513B350731A9F2C5859388A5CA545B3D87E63E5077EE360799B66B186E4D726D97CFF6F94CDDB34CB36A494EE232D5B9BD4A94B956FD9C79A32CBDE531AB6309296ACFF369FB53107E03D655D0F621461F5183E5FBF9F24EB414C32E4D2E99154AD7E89A66767EDAF77D2F33B41AB0A82FD2D4F0C5DE1D42CDB5CE365581CDE924645132942730B09F0E8917A1113B4042EA1D52CC69C3DAACFE276ECCBC4027AD7F83E25514AE89061B0F085801773029AE46799E3A2CEE3FB28FBFB30430C81AA89586CFE1EFF9822DF2BF59E6962420608E65DF0882E9B4BC222BBABB712E92EC41D81B8F94AA7E81106914FC1927B3C072F701DDD28FD6EE00AB86F5504D004D23E11A2D9C79708AC6210241CA3EA4F7F520E7BC1EBF7FF07BC0C79BEC4560000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c7e0b1da-d321-428a-9b27-4e481a32add0', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd1e48550-a4df-4575-8879-730ab3cc6eed', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7e728d13-3f36-4d01-9608-922a07c835b4', N'Photographer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4806192f-41df-4d02-83ee-b2c3daee4705', N'7e728d13-3f36-4d01-9608-922a07c835b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddba68fa-778b-48af-bf09-3d26d31900ed', N'7e728d13-3f36-4d01-9608-922a07c835b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd368be53-fc2d-47d8-8e20-ed7d7a2237e5', N'c7e0b1da-d321-428a-9b27-4e481a32add0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'233e2059-9a94-4442-b669-6d516f7a2461', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'93baaa18-690a-41bf-8928-74b583efae8c', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'233e2059-9a94-4442-b669-6d516f7a2461', N'Michelle', N'Kern', NULL, N'Michelle@FinalProject.com', 0, N'AM8d6ssre3eoLZX66zZuMQYVGGrxdBNCa34iHCnC7lG+IZxzNQ9lmzX0E/MQyAinnw==', N'224c3389-a62c-4698-bdda-664bb243803a', 0, 0, NULL, 1, 0, N'Michelle@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4806192f-41df-4d02-83ee-b2c3daee4705', N'Jovani', N'Robles', NULL, N'Jovani@FinalProject.com', 1, N'AJK6VLMCLLJ+WTcK8cI7wkbdHMWZZDUCNCEqwAw8Rjqe5DGTRwkYMHksZZUQ/WGRfw==', N'950e9e7d-6ee8-4202-a256-ca5f843d8a3d', 0, 0, NULL, 1, 0, N'Jovani@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'Jami', N'Deghand', NULL, N'Jami@FinalProject.com', 0, N'ACw6TojpDAaf0HYN0t1KifdQ+jzcbPLRcTVEIWavsLnZnrV4hkcfYmLnXIpQAUbDBA==', N'ea1fa413-66a8-46ff-992c-5c762fa7e82e', 0, 0, NULL, 1, 0, N'Jami@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'93baaa18-690a-41bf-8928-74b583efae8c', N'Sally', N'Deghand', NULL, N'Sally@FinalProject.com', 0, N'AIDow4CwFDst7j9nfOQqXFC7zG2M9rexdLDelrDrEmDsoOcnIUuobEjixzbqiX4AsA==', N'33a8ea6b-d356-48d1-bded-da33fa89c316', 0, 0, NULL, 1, 0, N'Sally@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd368be53-fc2d-47d8-8e20-ed7d7a2237e5', N'Jami', N'Deghand', N'785-250-7505', N'Admin@FinalProject.com', 1, N'ANr2oIMm+Ey4xqjo1dvyGbJBFk487asTnySLxm0eQ5jXBoNPJRf3esKXEXI1DMCjQw==', N'b0433075-d2b0-4473-b2e8-2c81430c07a2', 0, 0, NULL, 1, 0, N'Admin@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ddba68fa-778b-48af-bf09-3d26d31900ed', N'Jorge', N'Celis', NULL, N'Jorge@FinalProject.com', 1, N'AD+TkshkS8WkUuRLbd53SNRhcfF2QfvTLTlrlsj7wGydr1AUa69bR7uUayzU73wWUQ==', N'9d98a2e1-b444-4627-8165-56b63783e22a', 0, 0, NULL, 1, 0, N'Jorge@FinalProject.com')
SET IDENTITY_INSERT [dbo].[Pets] ON 

INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (5, N'Chico', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'Super cute pictures expected', 1, CAST(0x073E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (6, N'Zeus', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (7, N'Rocky', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (8, N'Jinx', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (9, N'Bandito', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (10, N'Tucker', N'93baaa18-690a-41bf-8928-74b583efae8c', N'Large Lab Birthday Photos', 0, CAST(0x173D0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (11, N'Mona', N'93baaa18-690a-41bf-8928-74b583efae8c', N'Not Currently Scheduled ', 0, CAST(0x173D0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (12, N'Toby', N'93baaa18-690a-41bf-8928-74b583efae8c', NULL, 0, CAST(0x173D0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (13, N'Sammy', N'233e2059-9a94-4442-b669-6d516f7a2461', NULL, 1, CAST(0x0D3E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Pets] OFF
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([PhotoID], [PetID], [ImageName], [Description]) VALUES (15, 5, N'Chico.jpg', N'Fuzzy Chico')
INSERT [dbo].[Photos] ([PhotoID], [PetID], [ImageName], [Description]) VALUES (17, 5, N'Chico2.jpg', N'On a train')
INSERT [dbo].[Photos] ([PhotoID], [PetID], [ImageName], [Description]) VALUES (19, 5, N'cfa15ebb-461a-4499-a07e-fed583f9821f.jpg', N'Chico on the bench')
SET IDENTITY_INSERT [dbo].[Photos] OFF
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (28, 1, 5, CAST(0x1A3E0B00 AS Date), NULL)
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (29, 1, 6, CAST(0x1A3E0B00 AS Date), NULL)
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (30, 1, 7, CAST(0x1A3E0B00 AS Date), NULL)
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (31, 1, 8, CAST(0x1A3E0B00 AS Date), NULL)
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (32, 1, 9, CAST(0x1A3E0B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Reservations] OFF
SET IDENTITY_INSERT [dbo].[StudioLocation] ON 

INSERT [dbo].[StudioLocation] ([StudioID], [StudioName], [Address], [City], [State], [ZipCode], [SessionLimit]) VALUES (1, N'Furry Fotos, Inc. - Overland Park', N'8875 W 121 St', N'Overland Park', N'KS', 66213, 5)
INSERT [dbo].[StudioLocation] ([StudioID], [StudioName], [Address], [City], [State], [ZipCode], [SessionLimit]) VALUES (2, N'Furry Fotos, Inc. - Leawood', N'8900 S Stateline', N'Leawood', N'KS', 66206, 5)
INSERT [dbo].[StudioLocation] ([StudioID], [StudioName], [Address], [City], [State], [ZipCode], [SessionLimit]) VALUES (3, N'Furry Fotos, Inc. - KCMO', N'1405 Grand Blvd', N'Kansas City', N'MO', 64030, 15)
SET IDENTITY_INSERT [dbo].[StudioLocation] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_AspNetUsers] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_AspNetUsers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Pets1] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pets] ([PetID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Pets1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Pets] FOREIGN KEY([PetID])
REFERENCES [dbo].[Pets] ([PetID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Pets]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_StudioLocation] FOREIGN KEY([StudioID])
REFERENCES [dbo].[StudioLocation] ([StudioID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_StudioLocation]
GO

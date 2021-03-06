IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_Reservations_StudioLocation]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_Reservations_Pets]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
ALTER TABLE [dbo].[Photos] DROP CONSTRAINT [FK_Photos_Pets1]
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
/****** Object:  Table [dbo].[StudioLocation]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudioLocation]') AND type in (N'U'))
DROP TABLE [dbo].[StudioLocation]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservations]') AND type in (N'U'))
DROP TABLE [dbo].[Reservations]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
DROP TABLE [dbo].[Photos]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
DROP TABLE [dbo].[Pets]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/28/2018 9:05:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2018 9:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[Pets]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 3/28/2018 9:05:43 AM ******/
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
/****** Object:  Table [dbo].[Reservations]    Script Date: 3/28/2018 9:05:43 AM ******/
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
	[PhotographerID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StudioLocation]    Script Date: 3/28/2018 9:05:43 AM ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201803261959591_InitialCreate', N'FSWDFinalProject.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F20FF20E829BB705ABEEC0C668DEE044EDB9D35767CC1B43DBB6F03B6C46E6B47A21489726C2CF26579C827E517B62851375E74E9565F1C0408A6A5E2A962F1902C968AFEE3B7DFC73FBCF89EF18CA3D80DC8C43C191D9B062676E0B864353113BAFCEE83F9C3F7DFFC657CE5F82FC6E75CEE8CC9414B124FCC274AC373CB8AED27ECA378E4BB7614C4C1928EECC0B7901358A7C7C7FFB04E4E2C0C10266019C6F85342A8EBE3F407FC9C06C4C6214D90771338D88BF97378334F518D5BE4E33844369E98B3F9BF2F672E41DE7D14FC17DB74F4783DBAF93C1D652D4DE3C273115835C7DED23410210145146C3E7F8CF19C460159CD437880BC87D71083DC127931E67D392FC5BB76EBF89475CB2A1BE6507612D3C0EF097872C6FD6489CDD7F2B659F8113C79051EA7AFACD7A93727E6B583D3479F020F1C202A3C9F7A11139E9837858A8B38BCC57494371C6590B308E07E09A2AFA32AE291D1B9DD51C1ABD3D131FBEFC898261E4D223C2138A111F28E8CFB64E1B9F6BFF0EB43F01593C9D9C96279F6E1DD7BE49CBDFF3B3E7B57ED29F415E46A0FE011B025C411D8869745FF4DC3AAB7B3C48645B34A9BCC2BC0259822A671835E3E62B2A24F30794E3F98C6CC7DC14EFE8493EB91B830A3A0118D12F8799B781E5A78B8786F35EA64FF6FD07AFAEEFD205A6FD1B3BB4A875ED00F13278279F5097BE9DBF8C90DB3E9551BEF2F5C6C16053EFB5DE757F6F6CB3C48229B7526D08A3CA0688569DDBAB15592B713A519D4F0B4CE510F9FDACC5299DE4A51D6A1756642AE62D7B321B777BB7A3B33EE220C61F0526A318F3411AE79E31A0948478646BEA4D449574A11E8EA9F7985BCF291EB0DB04476D00291CAD28D7C5CF4F2C7000889486F9BEF511CC30AE1FC13C54F0DA6C33F07307D8EED2402E2CE29F2C3AD6BBB7F0A08BE4DFC059B0FBBD335D8D03CFC12CC904D83E88AB0561BE37D0CECAF4142AF887389287EA4760EC87E3EB87E778041CCB9B06D1CC733203376A60104E239E035A167A7BDE1D862B5EF1065EA21D757C728C2B2FA25172DE314B58414AB68C454F14A93A91F83954BBA999A8BEA4DCD245A4DE5627D4D6560DD2CE5927A435381563B33A9C122C07484860F0153D8C38F0137DBBC756B41C58D735821F14F98E0089631E71E518A23528E409775631FC1423A7C4CE9D6F7A654D367E42543AB5A6B36A48BC0F0B321853DFCD9909A098F9F5D8745251D0E46B930C07792579FB9DAE79C60D9AEA743AD9BBB56BE9B3540375D2EE238B0DD74162852623CA151B71F6238A33DBB91F546CC9040C780E82EDBF2E009F4CD144975472EB18729362EEC2C653845B18D1CD98DD021A78761F98EAA30ACCC94D48DFB9BA413988E23D608B143500C33D525549E162EB1DD1079AD5E125A76DCC258DF0B1DE29B4B1C62C214B67AA28B727562841950E81106A5CD4363ABC2B866226AA256DD98B785B0E5B84BF98A9D70B22576D6F092C76F5B2166B3C77640CE66977431409BE4DB0741F959A52B01C483CBA1115438316908CA43AA9D10B4EEB13D10B4EE923747D0EC88DA75FC85F3EAA1D1B37E50DEFDB6DEE8AE3D70B3E68F03A366167B421B0A2D7024D3F372C15EE217AA389C819DFC7C16F35057A408039F635A4FD994F1AE320EB59A414412350196446B01E59F0725206942F5302ECFE5355AC7A3881EB079DEAD1196AFFD026C85033276F533694550FF31552467A7D347D1B3820D12C93B1D162A380A42888B57BDE31D9CA2CBCBCA8EE9120BF789862B1DE383D1E0A096C855E3A4BC33837B29A766BB975401599F906C232F09E193C64B796706F712E768BB931441418FB0602317D5B7F081265B9EE928769BE2DDD8CA2AA9F883B1A529B91ADFA03074C9AA5282C59F18F3ACFE6AFADDBC7F31929F615876ACA8492AAC2D34D120422B2CBC05D560E9CC8D627A89285A2096E7993ABE24A6DC5B35CB7FAEB2BA7DCA8398EF03B934FB77D6A2E5A37E6DDF9503138E3783DEFA2CBA4953EA0A2EA89B1BAC3C0E79285264F1A78197F8441F6CE95B67DFF2AAEDB32732C2D812EC978229C97352C85B1F864E83244F902D0C5811D7AC3F687A089DEBF3A8B4EA7C5DA4AA47C9135755145D326B6F83A80B70D61E38318EEC3F6EAD08DB996FBC78A50AC01FF5C4A8D43F48609577DD51EB252A55CCFA9BEE88421D4A155278D5C3CA6AB549CDC8EA8BB5F0341E554B74D720D79754D1E5B7DD911595265568C5EB35B015368BEFBAA32A8A51AAC08AD7DDB1CBCA1471413DE01D4D7BBA19644BCB0EC39BED691A8CEDAC8EC36C89956FFE55A0CAE39E58FCABBE04C69F1F24B3B427C2419895E5433663960643BF22D5BE9CD717A4C6CFFD7ACCDAE7F0DAA2DF540EA0C7EBC7DFADB2443A1C8A2285F6E290281C06C7FC60D67E49473AA96522A691BB1136FCD798627FC40446F39FBDA9E762B6BCE7023788B84B1CD3AC04C43C3D3E3915EEF61CCE3D1B2B8E1D4F71B0D55DB6A98FD90EAAB9C8338AEC2714C9B5151BDC452941A5B4F53571F0CBC4FC5FDAEA3CCD80B07FA58F8F8CEBF891B83F27F0E2214AB0F1AB5C2B3A4C6D7EF341EC406F5274F7EAF57FBE644D8F8CBB0866CCB9712CF8729D11AEDFAFE8654DD674036BD6BE75F1762754EDEA8212559810EBDF5458B874905B0AB995DFFAE8E5AF7D4D53DE44D8085171DB6028BC415CA8BB4DB00E96F62681033F697A93A05F67D5370BD6314D7BABC025FDC1C43B05DD97A1BCE51EB71AC5F968174B52EAE7D69AEC8D0A34F7BD3749A5DB1B4D74B93CBB07DC0625D86B30E38D552F0FB63B2A8A9307C3DE27B5B75E917C2845C86579C87E6B8F77596EDCF0E9E84F55657C0075718A3A9FFDD712EF9A6BBA9CEE811764F6AB183E30B2F1EAAFFDD705EF9A6CBA34EF8193AD57F5EF81716D5FFBE79E99D6790BDD7B2DAF5C96A4F936A3CA05B7D5EA66897338E12F022041165166572CD5C5614D85AD2D0A4B11BD527D559AA8589A38925E49A2596DBFBEF20DBFB1B35CA659ADA696B349375FFF1B75739966DD9A0AC97D54192B6B145595DF2DEB5853A1D45BAA2AAEF5A4A588BD2D666DFCD0FE968A8807714A6DF668BE11BF9D9AE1415C32E4D4E951232C7FEE85BDB3F2971B61FF8EDD5509C1FE8E23C1766DD72C64AEC932C8376FC1A25C44C8D0DC608A1CD8522F22EA2E914DE135CB31A777C4D3BC1DFBD2B1C0CE35B94B689850E832F6175E2DE1C5828026FD692174DDE6F15D98FEB99321BA0066BA2C377F477E4C5CCF29EC9E2972421A08165DF08C2E1B4BCA32BBABD702E936201D81B8FB8AA0E801FBA10760F11D99A367BC8E6D40BF8F7885ECD73203A803691F88BADBC7972E5A45C88F3946D91E7E02871DFFE5FBFF03DD165641C0540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'de56163e-56fd-425d-993c-3f35b716834b', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd1e48550-a4df-4575-8879-730ab3cc6eed', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7e728d13-3f36-4d01-9608-922a07c835b4', N'Photographer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4806192f-41df-4d02-83ee-b2c3daee4705', N'7e728d13-3f36-4d01-9608-922a07c835b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddba68fa-778b-48af-bf09-3d26d31900ed', N'7e728d13-3f36-4d01-9608-922a07c835b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'233e2059-9a94-4442-b669-6d516f7a2461', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'93baaa18-690a-41bf-8928-74b583efae8c', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b70df98-738b-4e33-9e52-b7bc1539c365', N'de56163e-56fd-425d-993c-3f35b716834b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'de56163e-56fd-425d-993c-3f35b716834b')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0b70df98-738b-4e33-9e52-b7bc1539c365', N'admin@example.com', 0, N'AFij3geHVSHHar8U7RUSbwrcbL+uFpi+RIb3s5BE15M8T/k82xoCQmqFTMG6SvRFTg==', N'999c679a-34ba-41bc-898b-d7b58ead3eec', NULL, 0, 0, NULL, 0, 0, N'admin@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'233e2059-9a94-4442-b669-6d516f7a2461', N'Michelle@FinalProject.com', 0, N'AM8d6ssre3eoLZX66zZuMQYVGGrxdBNCa34iHCnC7lG+IZxzNQ9lmzX0E/MQyAinnw==', N'224c3389-a62c-4698-bdda-664bb243803a', NULL, 0, 0, NULL, 1, 0, N'Michelle@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4806192f-41df-4d02-83ee-b2c3daee4705', N'Jovani@FinalProject.com', 1, N'AJK6VLMCLLJ+WTcK8cI7wkbdHMWZZDUCNCEqwAw8Rjqe5DGTRwkYMHksZZUQ/WGRfw==', N'950e9e7d-6ee8-4202-a256-ca5f843d8a3d', NULL, 0, 0, NULL, 1, 0, N'Jovani@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'Jami@FinalProject.com', 0, N'ACw6TojpDAaf0HYN0t1KifdQ+jzcbPLRcTVEIWavsLnZnrV4hkcfYmLnXIpQAUbDBA==', N'ea1fa413-66a8-46ff-992c-5c762fa7e82e', NULL, 0, 0, NULL, 1, 0, N'Jami@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'93baaa18-690a-41bf-8928-74b583efae8c', N'Sally@FinalProject.com', 0, N'AIDow4CwFDst7j9nfOQqXFC7zG2M9rexdLDelrDrEmDsoOcnIUuobEjixzbqiX4AsA==', N'33a8ea6b-d356-48d1-bded-da33fa89c316', NULL, 0, 0, NULL, 1, 0, N'Sally@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ddba68fa-778b-48af-bf09-3d26d31900ed', N'Jorge@FinalProject.com', 1, N'AD+TkshkS8WkUuRLbd53SNRhcfF2QfvTLTlrlsj7wGydr1AUa69bR7uUayzU73wWUQ==', N'9d98a2e1-b444-4627-8165-56b63783e22a', NULL, 0, 0, NULL, 1, 0, N'Jorge@FinalProject.com')
SET IDENTITY_INSERT [dbo].[Pets] ON 

INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (5, N'Chico', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (6, N'Zeus', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (7, N'Rocky', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (8, N'Jinx', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (9, N'Bandito', N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'N/A', 1, CAST(0x0A3E0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (10, N'Tucker', N'93baaa18-690a-41bf-8928-74b583efae8c', N'N/A', 0, CAST(0x173D0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (11, N'Mona', N'93baaa18-690a-41bf-8928-74b583efae8c', N'N/A', 0, CAST(0x173D0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (12, N'Toby', N'93baaa18-690a-41bf-8928-74b583efae8c', NULL, 0, CAST(0x173D0B00 AS Date))
INSERT [dbo].[Pets] ([PetID], [Name], [OwnerID], [SpecialNotes], [IsActive], [DateAdded]) VALUES (13, N'Sammy', N'233e2059-9a94-4442-b669-6d516f7a2461', NULL, 1, CAST(0x0D3E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Pets] OFF
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([PhotoID], [PetID], [ImageName], [Description]) VALUES (1, 5, N'Chico.JPG', NULL)
INSERT [dbo].[Photos] ([PhotoID], [PetID], [ImageName], [Description]) VALUES (2, 5, N'Chico.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Photos] OFF
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (6, 1, 5, CAST(0xB63D0B00 AS Date), N'1123')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (7, 1, 6, CAST(0xFF3D0B00 AS Date), N'2669')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (8, 2, 7, CAST(0xD83D0B00 AS Date), N'4566')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (10, 2, 8, CAST(0x2E3E0B00 AS Date), N'4556')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (11, 2, 6, CAST(0x7F3E0B00 AS Date), N'3258')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (13, 2, 9, CAST(0x043E0B00 AS Date), N'4556')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (14, 2, 13, CAST(0xB73D0B00 AS Date), N'3258')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (15, 3, 11, CAST(0x463E0B00 AS Date), N'5820')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (16, 3, 12, CAST(0x6A3E0B00 AS Date), N'5820')
INSERT [dbo].[Reservations] ([ReservationID], [StudioID], [PetID], [SessionDate], [PhotographerID]) VALUES (17, 3, 10, CAST(0x2E3E0B00 AS Date), N'6910')
SET IDENTITY_INSERT [dbo].[Reservations] OFF
SET IDENTITY_INSERT [dbo].[StudioLocation] ON 

INSERT [dbo].[StudioLocation] ([StudioID], [StudioName], [Address], [City], [State], [ZipCode], [SessionLimit]) VALUES (1, N'Furry Fotos Inc. - Overland Park', N'8875 W 121 St', N'Overland Park', N'KS', 66213, 10)
INSERT [dbo].[StudioLocation] ([StudioID], [StudioName], [Address], [City], [State], [ZipCode], [SessionLimit]) VALUES (2, N'Furry Fotos Inc. - Leawood', N'8900 S Stateline', N'Leawood', N'KS', 66206, 5)
INSERT [dbo].[StudioLocation] ([StudioID], [StudioName], [Address], [City], [State], [ZipCode], [SessionLimit]) VALUES (3, N'Furry Fotos Inc. - KCMO', N'1405 Grand Blvd', N'Kansas City', N'MO', 64030, 15)
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

--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
--ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_Reservations_StudioLocation]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
--ALTER TABLE [dbo].[Reservations] DROP CONSTRAINT [FK_Reservations_Pets]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
--ALTER TABLE [dbo].[Photos] DROP CONSTRAINT [FK_Photos_Pets1]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
--ALTER TABLE [dbo].[Pets] DROP CONSTRAINT [FK_Pets_AspNetUsers]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
--ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
--ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
--ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
--ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
--GO
--/****** Object:  Table [dbo].[StudioLocation]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudioLocation]') AND type in (N'U'))
--DROP TABLE [dbo].[StudioLocation]
--GO
--/****** Object:  Table [dbo].[Reservations]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservations]') AND type in (N'U'))
--DROP TABLE [dbo].[Reservations]
--GO
--/****** Object:  Table [dbo].[Photos]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
--DROP TABLE [dbo].[Photos]
--GO
--/****** Object:  Table [dbo].[Pets]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
--DROP TABLE [dbo].[Pets]
--GO
--/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
--DROP TABLE [dbo].[AspNetUsers]
--GO
--/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
--DROP TABLE [dbo].[AspNetUserRoles]
--GO
--/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
--DROP TABLE [dbo].[AspNetUserLogins]
--GO
--/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
--DROP TABLE [dbo].[AspNetUserClaims]
--GO
--/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2018 3:52:18 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
--DROP TABLE [dbo].[AspNetRoles]
--GO
--/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[AspNetRoles](
--	[Id] [nvarchar](128) NOT NULL,
--	[Name] [nvarchar](256) NOT NULL,
-- CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[AspNetUserClaims](
--	[Id] [int] IDENTITY(1,1) NOT NULL,
--	[UserId] [nvarchar](128) NOT NULL,
--	[ClaimType] [nvarchar](max) NULL,
--	[ClaimValue] [nvarchar](max) NULL,
-- CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[AspNetUserLogins](
--	[LoginProvider] [nvarchar](128) NOT NULL,
--	[ProviderKey] [nvarchar](128) NOT NULL,
--	[UserId] [nvarchar](128) NOT NULL,
-- CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
--(
--	[LoginProvider] ASC,
--	[ProviderKey] ASC,
--	[UserId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[AspNetUserRoles](
--	[UserId] [nvarchar](128) NOT NULL,
--	[RoleId] [nvarchar](128) NOT NULL,
-- CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
--(
--	[UserId] ASC,
--	[RoleId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[AspNetUsers](
--	[Id] [nvarchar](128) NOT NULL,
--	[FirstName] [nvarchar](max) NULL,
--	[LastName] [nvarchar](max) NULL,
--	[PhoneNumber] [nvarchar](max) NULL,
--	[Email] [nvarchar](256) NULL,
--	[EmailConfirmed] [bit] NOT NULL,
--	[PasswordHash] [nvarchar](max) NULL,
--	[SecurityStamp] [nvarchar](max) NULL,
--	[PhoneNumberConfirmed] [bit] NOT NULL,
--	[TwoFactorEnabled] [bit] NOT NULL,
--	[LockoutEndDateUtc] [datetime] NULL,
--	[LockoutEnabled] [bit] NOT NULL,
--	[AccessFailedCount] [int] NOT NULL,
--	[UserName] [nvarchar](256) NOT NULL,
-- CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[Pets]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[Pets](
--	[PetID] [int] IDENTITY(1,1) NOT NULL,
--	[Name] [varchar](50) NOT NULL,
--	[OwnerID] [nvarchar](128) NOT NULL,
--	[SpecialNotes] [varchar](250) NULL,
--	[IsActive] [bit] NOT NULL,
--	[DateAdded] [date] NOT NULL,
-- CONSTRAINT [PK_Pets] PRIMARY KEY CLUSTERED 
--(
--	[PetID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
--GO
--SET ANSI_PADDING OFF
--GO
--/****** Object:  Table [dbo].[Photos]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[Photos](
--	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
--	[PetID] [int] NOT NULL,
--	[ImageName] [nvarchar](100) NOT NULL,
--	[Description] [nvarchar](500) NULL,
-- CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
--(
--	[PhotoID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[Reservations]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservations]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[Reservations](
--	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
--	[StudioID] [int] NOT NULL,
--	[PetID] [int] NOT NULL,
--	[SessionDate] [date] NOT NULL,
--	[PhotographerID] [nvarchar](128) NOT NULL,
-- CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
--(
--	[ReservationID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
--GO
--/****** Object:  Table [dbo].[StudioLocation]    Script Date: 3/28/2018 3:52:18 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET ANSI_PADDING ON
--GO
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudioLocation]') AND type in (N'U'))
--BEGIN
--CREATE TABLE [dbo].[StudioLocation](
--	[StudioID] [int] IDENTITY(1,1) NOT NULL,
--	[StudioName] [varchar](50) NOT NULL,
--	[Address] [varchar](100) NOT NULL,
--	[City] [varchar](50) NOT NULL,
--	[State] [char](2) NOT NULL,
--	[ZipCode] [int] NOT NULL,
--	[SessionLimit] [tinyint] NOT NULL,
-- CONSTRAINT [PK_StudioLocation] PRIMARY KEY CLUSTERED 
--(
--	[StudioID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--END
Use Reservations
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c7e0b1da-d321-428a-9b27-4e481a32add0', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd1e48550-a4df-4575-8879-730ab3cc6eed', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7e728d13-3f36-4d01-9608-922a07c835b4', N'Photographer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4806192f-41df-4d02-83ee-b2c3daee4705', N'7e728d13-3f36-4d01-9608-922a07c835b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddba68fa-778b-48af-bf09-3d26d31900ed', N'7e728d13-3f36-4d01-9608-922a07c835b4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8491c360-3dd9-480e-84f1-6051615ab8ba', N'c7e0b1da-d321-428a-9b27-4e481a32add0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bdb8090e-86b3-4e31-a543-eae4c4e82b60', N'c7e0b1da-d321-428a-9b27-4e481a32add0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'233e2059-9a94-4442-b669-6d516f7a2461', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'93baaa18-690a-41bf-8928-74b583efae8c', N'd1e48550-a4df-4575-8879-730ab3cc6eed')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'233e2059-9a94-4442-b669-6d516f7a2461', NULL, NULL, NULL, N'Michelle@FinalProject.com', 0, N'AM8d6ssre3eoLZX66zZuMQYVGGrxdBNCa34iHCnC7lG+IZxzNQ9lmzX0E/MQyAinnw==', N'224c3389-a62c-4698-bdda-664bb243803a', 0, 0, NULL, 1, 0, N'Michelle@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4806192f-41df-4d02-83ee-b2c3daee4705', NULL, NULL, NULL, N'Jovani@FinalProject.com', 1, N'AJK6VLMCLLJ+WTcK8cI7wkbdHMWZZDUCNCEqwAw8Rjqe5DGTRwkYMHksZZUQ/WGRfw==', N'950e9e7d-6ee8-4202-a256-ca5f843d8a3d', 0, 0, NULL, 1, 0, N'Jovani@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8491c360-3dd9-480e-84f1-6051615ab8ba', NULL, NULL, NULL, N'Jami@FinalProject.com', 0, N'ACw6TojpDAaf0HYN0t1KifdQ+jzcbPLRcTVEIWavsLnZnrV4hkcfYmLnXIpQAUbDBA==', N'ea1fa413-66a8-46ff-992c-5c762fa7e82e', 0, 0, NULL, 1, 0, N'Jami@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'93baaa18-690a-41bf-8928-74b583efae8c', NULL, NULL, NULL, N'Sally@FinalProject.com', 0, N'AIDow4CwFDst7j9nfOQqXFC7zG2M9rexdLDelrDrEmDsoOcnIUuobEjixzbqiX4AsA==', N'33a8ea6b-d356-48d1-bded-da33fa89c316', 0, 0, NULL, 1, 0, N'Sally@FinalProject.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bdb8090e-86b3-4e31-a543-eae4c4e82b60', NULL, NULL, NULL, N'admin@example.com', 0, N'AIB+o8CURFD5vFgsDXTC7wpNc1JIQomO1tVBOQdCrrxAbtpsVI+G4qr5u/y0sph9yw==', N'a1f962cb-85db-443d-b604-760a57ee1fe9', 0, 0, NULL, 0, 0, N'admin@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PhoneNumber], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ddba68fa-778b-48af-bf09-3d26d31900ed', NULL, NULL, NULL, N'Jorge@FinalProject.com', 1, N'AD+TkshkS8WkUuRLbd53SNRhcfF2QfvTLTlrlsj7wGydr1AUa69bR7uUayzU73wWUQ==', N'9d98a2e1-b444-4627-8165-56b63783e22a', 0, 0, NULL, 1, 0, N'Jorge@FinalProject.com')
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
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
--ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
--REFERENCES [dbo].[AspNetUsers] ([Id])
--ON DELETE CASCADE
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
--ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
--ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
--REFERENCES [dbo].[AspNetUsers] ([Id])
--ON DELETE CASCADE
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
--ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
--ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
--REFERENCES [dbo].[AspNetRoles] ([Id])
--ON DELETE CASCADE
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
--ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
--ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
--REFERENCES [dbo].[AspNetUsers] ([Id])
--ON DELETE CASCADE
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
--ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
--ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_AspNetUsers] FOREIGN KEY([OwnerID])
--REFERENCES [dbo].[AspNetUsers] ([Id])
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
--ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_AspNetUsers]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
--ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Pets1] FOREIGN KEY([PetID])
--REFERENCES [dbo].[Pets] ([PetID])
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Photos_Pets1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Photos]'))
--ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Pets1]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
--ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Pets] FOREIGN KEY([PetID])
--REFERENCES [dbo].[Pets] ([PetID])
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_Pets]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
--ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Pets]
--GO
--IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
--ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_StudioLocation] FOREIGN KEY([StudioID])
--REFERENCES [dbo].[StudioLocation] ([StudioID])
--GO
--IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservations_StudioLocation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservations]'))
--ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_StudioLocation]
GO

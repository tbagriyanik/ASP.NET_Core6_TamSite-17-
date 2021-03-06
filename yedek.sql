USE [master]
GO
/****** Object:  Database [aspnet-WebApp_Tam]    Script Date: 3.05.2022 22:51:46 ******/
CREATE DATABASE [aspnet-WebApp_Tam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-WebApp_Tam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-WebApp_Tam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-WebApp_Tam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-WebApp_Tam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-WebApp_Tam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET RECOVERY FULL 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'aspnet-WebApp_Tam', N'ON'
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET QUERY_STORE = OFF
GO
USE [aspnet-WebApp_Tam]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kampanya]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanya](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KampanyaAdi] [nvarchar](max) NULL,
	[Resmi] [nvarchar](max) NULL,
	[EklenmeTarihi] [datetime2](7) NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Kampanya] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesaj]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesaj](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[yollayanMaili] [nvarchar](max) NULL,
	[Mesaji] [nvarchar](max) NULL,
	[yollanmaTarihi] [datetime2](7) NOT NULL,
	[okunduMu] [bit] NOT NULL,
 CONSTRAINT [PK_Mesaj] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 3.05.2022 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](max) NULL,
	[Resmi] [nvarchar](max) NULL,
	[Detay] [nvarchar](max) NULL,
	[Fiyat] [real] NOT NULL,
	[GuncellenmeTarihi] [datetime2](7) NOT NULL,
	[KategoriId] [int] NOT NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220503105930_ilk', N'6.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220503110423_iki', N'6.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220503140747_uc', N'6.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'other', N'OTHER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'567b1ff5-490c-4be5-8f39-1d3f7c6a7ed0', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'567b1ff5-490c-4be5-8f39-1d3f7c6a7ed0', N'a@a.com', N'A@A.COM', N'a@a.com', N'A@A.COM', 1, N'AQAAAAEAACcQAAAAEESSSBWxhNljqrxHefoKQYqjKPyfhwVFm6g/2lWWvi/a2XCKFly1whldBq+sVtL8HA==', N'3KFV4WCE2CSMGBQP3F733ACYNA4BVKLB', N'9dacde44-e095-4988-8fed-d5d4c06e2804', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a757c0b7-ac09-41a0-86b4-7636277b6420', N'b@b.com', N'B@B.COM', N'b@b.com', N'B@B.COM', 1, N'AQAAAAEAACcQAAAAEOEVUhFalABb0n+X/Hwqn0HpdzIZ0hZOcrLoxdKoXmgN467x/NI0DjKtpfZM0odUmA==', N'QGHT57UKBOBETLV6VEMNW5WTTXHEXTYX', N'7773a630-3664-4bda-b8b3-c477c9227619', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Kampanya] ON 

INSERT [dbo].[Kampanya] ([Id], [KampanyaAdi], [Resmi], [EklenmeTarihi], [Aktif]) VALUES (1, N'Anneler günü', N'3-1080x300.jpg', CAST(N'2022-04-30T16:03:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Kampanya] ([Id], [KampanyaAdi], [Resmi], [EklenmeTarihi], [Aktif]) VALUES (2, N'23 Nisan', N'2-1080x300.jpg', CAST(N'2022-04-01T16:04:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Kampanya] ([Id], [KampanyaAdi], [Resmi], [EklenmeTarihi], [Aktif]) VALUES (3, N'Karne', N'1-1080x300.jpg', CAST(N'2022-05-28T16:04:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Kampanya] ([Id], [KampanyaAdi], [Resmi], [EklenmeTarihi], [Aktif]) VALUES (4, N'Babalar Günü', N'4-1080x300.jpg', CAST(N'2022-05-05T16:46:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Kampanya] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (1, N'İşlemci')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (2, N'Anakart')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (3, N'RAM')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (4, N'Ekran Kartı')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (5, N'Disk')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (6, N'Monitör')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (7, N'Kasa')
INSERT [dbo].[Kategori] ([Id], [KategoriAdi]) VALUES (8, N'Klavye ve Fare')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Mesaj] ON 

INSERT [dbo].[Mesaj] ([Id], [yollayanMaili], [Mesaji], [yollanmaTarihi], [okunduMu]) VALUES (1, N'asd@aa', N's', CAST(N'2022-05-03T22:25:20.3769267' AS DateTime2), 0)
INSERT [dbo].[Mesaj] ([Id], [yollayanMaili], [Mesaji], [yollanmaTarihi], [okunduMu]) VALUES (3, N'aa@a.cpo', N'ssasdasdsadasd', CAST(N'2022-05-03T22:29:12.5420000' AS DateTime2), 1)
INSERT [dbo].[Mesaj] ([Id], [yollayanMaili], [Mesaji], [yollanmaTarihi], [okunduMu]) VALUES (4, N'asd@aa', N'4444', CAST(N'2022-05-03T22:30:20.7520074' AS DateTime2), 0)
INSERT [dbo].[Mesaj] ([Id], [yollayanMaili], [Mesaji], [yollanmaTarihi], [okunduMu]) VALUES (6, N'bb@bb.com', N'bbebeb ebeee', CAST(N'2022-05-03T22:43:38.3224822' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Mesaj] OFF
GO
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([Id], [UrunAdi], [Resmi], [Detay], [Fiyat], [GuncellenmeTarihi], [KategoriId]) VALUES (1, N'İ5', N'i5core.jpg', N'4 çekirdek', 3000, CAST(N'2022-05-03T14:02:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Urun] ([Id], [UrunAdi], [Resmi], [Detay], [Fiyat], [GuncellenmeTarihi], [KategoriId]) VALUES (2, N'Ryzen 5', N'ryzenAMD.jpg', N'4 çekirr', 2999, CAST(N'2022-05-03T14:14:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Urun] ([Id], [UrunAdi], [Resmi], [Detay], [Fiyat], [GuncellenmeTarihi], [KategoriId]) VALUES (3, N'Cooler Master', N'coolerMasterKasa.jpg', N'Kasa', 2000, CAST(N'2022-05-07T14:15:00.0000000' AS DateTime2), 7)
INSERT [dbo].[Urun] ([Id], [UrunAdi], [Resmi], [Detay], [Fiyat], [GuncellenmeTarihi], [KategoriId]) VALUES (4, N'GSkill 16 RAM', N'gskillRAM.jpg', N'3600 MHz', 900, CAST(N'2022-05-07T17:21:00.0000000' AS DateTime2), 3)
SET IDENTITY_INSERT [dbo].[Urun] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3.05.2022 22:51:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3.05.2022 22:51:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3.05.2022 22:51:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3.05.2022 22:51:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3.05.2022 22:51:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3.05.2022 22:51:46 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3.05.2022 22:51:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Urun_KategoriId]    Script Date: 3.05.2022 22:51:46 ******/
CREATE NONCLUSTERED INDEX [IX_Urun_KategoriId] ON [dbo].[Urun]
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori_KategoriId] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori_KategoriId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-WebApp_Tam] SET  READ_WRITE 
GO

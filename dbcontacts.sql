USE [master]
GO
/****** Object:  Database [Db_ContactApp]    Script Date: 30-05-2024 13:52:40 ******/
CREATE DATABASE [Db_ContactApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_ContactApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.AHMAD\MSSQL\DATA\Db_ContactApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_ContactApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.AHMAD\MSSQL\DATA\Db_ContactApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Db_ContactApp] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_ContactApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_ContactApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_ContactApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_ContactApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_ContactApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_ContactApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_ContactApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_ContactApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_ContactApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_ContactApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_ContactApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_ContactApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_ContactApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_ContactApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_ContactApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_ContactApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db_ContactApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_ContactApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_ContactApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_ContactApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_ContactApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_ContactApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_ContactApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_ContactApp] SET RECOVERY FULL 
GO
ALTER DATABASE [Db_ContactApp] SET  MULTI_USER 
GO
ALTER DATABASE [Db_ContactApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_ContactApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_ContactApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_ContactApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_ContactApp] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Db_ContactApp', N'ON'
GO
ALTER DATABASE [Db_ContactApp] SET QUERY_STORE = OFF
GO
USE [Db_ContactApp]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[address_id] [uniqueidentifier] NOT NULL,
	[contact_id] [uniqueidentifier] NOT NULL,
	[address_type] [nvarchar](50) NOT NULL,
	[street] [nvarchar](100) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[postal_code] [nvarchar](20) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[middle_name] [nvarchar](50) NULL,
	[company] [nvarchar](100) NULL,
	[job_title] [nvarchar](100) NULL,
	[notes] [nvarchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAddress]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAddress](
	[email_id] [uniqueidentifier] NOT NULL,
	[contact_id] [uniqueidentifier] NOT NULL,
	[email_type] [nvarchar](50) NOT NULL,
	[email_address] [nvarchar](100) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneNumber]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneNumber](
	[phone_id] [uniqueidentifier] NOT NULL,
	[contact_id] [uniqueidentifier] NOT NULL,
	[phone_type] [nvarchar](50) NOT NULL,
	[phone_number] [nvarchar](20) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[tag_id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_contact]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_contact](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[phone1] [nvarchar](50) NULL,
	[phone2] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 30-05-2024 13:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[user_id] [uniqueidentifier] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password_hash] [nvarchar](255) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserMaster] ([user_id], [username], [password_hash], [email], [created_at], [updated_at]) VALUES (N'56aaffef-7bbf-4bc0-9b85-97c2cd30b0ec', N'Ahmad', N'1234', N'demo@gmail.com', CAST(N'2024-05-29T22:01:24.267' AS DateTime), CAST(N'2024-05-29T22:01:24.267' AS DateTime))
INSERT [dbo].[UserMaster] ([user_id], [username], [password_hash], [email], [created_at], [updated_at]) VALUES (N'910d0a0e-645b-4353-8e31-db7ca43108b2', N'Mohammad', N'7860', N'demo1@gmail.com', CAST(N'2024-05-29T22:02:14.570' AS DateTime), CAST(N'2024-05-29T22:02:14.570' AS DateTime))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Tag_User_Name]    Script Date: 30-05-2024 13:52:41 ******/
ALTER TABLE [dbo].[Tag] ADD  CONSTRAINT [UQ_Tag_User_Name] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__AB6E6164A9852F5A]    Script Date: 30-05-2024 13:52:41 ******/
ALTER TABLE [dbo].[UserMaster] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__F3DBC57235C783D4]    Script Date: 30-05-2024 13:52:41 ******/
ALTER TABLE [dbo].[UserMaster] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (newid()) FOR [address_id]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT (newid()) FOR [contact_id]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Contact] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[EmailAddress] ADD  DEFAULT (newid()) FOR [email_id]
GO
ALTER TABLE [dbo].[EmailAddress] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[EmailAddress] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[PhoneNumber] ADD  DEFAULT (newid()) FOR [phone_id]
GO
ALTER TABLE [dbo].[PhoneNumber] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[PhoneNumber] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT (newid()) FOR [tag_id]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Contact] FOREIGN KEY([contact_id])
REFERENCES [dbo].[Contact] ([contact_id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Contact]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[UserMaster] ([user_id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_User]
GO
ALTER TABLE [dbo].[EmailAddress]  WITH CHECK ADD  CONSTRAINT [FK_EmailAddress_Contact] FOREIGN KEY([contact_id])
REFERENCES [dbo].[Contact] ([contact_id])
GO
ALTER TABLE [dbo].[EmailAddress] CHECK CONSTRAINT [FK_EmailAddress_Contact]
GO
ALTER TABLE [dbo].[PhoneNumber]  WITH CHECK ADD  CONSTRAINT [FK_PhoneNumber_Contact] FOREIGN KEY([contact_id])
REFERENCES [dbo].[Contact] ([contact_id])
GO
ALTER TABLE [dbo].[PhoneNumber] CHECK CONSTRAINT [FK_PhoneNumber_Contact]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[UserMaster] ([user_id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_User]
GO
USE [master]
GO
ALTER DATABASE [Db_ContactApp] SET  READ_WRITE 
GO

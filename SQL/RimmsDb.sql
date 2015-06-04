USE [master]
GO
/****** Object:  Database [Rimss]    Script Date: 06/02/2015 22:53:23 ******/
CREATE DATABASE [Rimss] ON  PRIMARY 
( NAME = N'Rimss', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Rimss.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Rimss_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Rimss_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Rimss] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rimss].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rimss] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Rimss] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Rimss] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Rimss] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Rimss] SET ARITHABORT OFF
GO
ALTER DATABASE [Rimss] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Rimss] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Rimss] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Rimss] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Rimss] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Rimss] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Rimss] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Rimss] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Rimss] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Rimss] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Rimss] SET  ENABLE_BROKER
GO
ALTER DATABASE [Rimss] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Rimss] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Rimss] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Rimss] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Rimss] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Rimss] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Rimss] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Rimss] SET  READ_WRITE
GO
ALTER DATABASE [Rimss] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Rimss] SET  MULTI_USER
GO
ALTER DATABASE [Rimss] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Rimss] SET DB_CHAINING OFF
GO
USE [Rimss]
GO
/****** Object:  ForeignKey [FK_ConversionJob_SourceImage]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionJob] DROP CONSTRAINT [FK_ConversionJob_SourceImage]
GO
/****** Object:  ForeignKey [FK_ConversionJob_StartedBy]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionJob] DROP CONSTRAINT [FK_ConversionJob_StartedBy]
GO
/****** Object:  ForeignKey [FK_ConversionLog_ConvertedImage]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog] DROP CONSTRAINT [FK_ConversionLog_ConvertedImage]
GO
/****** Object:  ForeignKey [FK_ConversionLog_SourceImage]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog] DROP CONSTRAINT [FK_ConversionLog_SourceImage]
GO
/****** Object:  ForeignKey [FK_ConversionLog_StartedBy]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog] DROP CONSTRAINT [FK_ConversionLog_StartedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_ConvertedBy]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_ConvertedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_SourceImage]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_SourceImage]
GO
/****** Object:  ForeignKey [FK_SourceImage_Application]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Application]
GO
/****** Object:  ForeignKey [FK_SourceImage_CreatedBy]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_CreatedBy]
GO
/****** Object:  ForeignKey [FK_SourceImage_Folder]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Folder]
GO
/****** Object:  ForeignKey [FK_SourceImage_ModifiedBy]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_Folder_Application]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Application]
GO
/****** Object:  ForeignKey [FK_Folder_CreatedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Folder_ModifiedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_Folder_Parent]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Parent]
GO
/****** Object:  ForeignKey [FK_Application_CreatedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Application_ModifiedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_ModifiedBy]
GO
/****** Object:  StoredProcedure [dbo].[proc_StartConversionJob]    Script Date: 06/02/2015 22:53:34 ******/
DROP PROCEDURE [dbo].[proc_StartConversionJob]
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentUserIdentityCache]    Script Date: 06/02/2015 22:53:34 ******/
DROP PROCEDURE [dbo].[GetCurrentUserIdentityCache]
GO
/****** Object:  StoredProcedure [dbo].[EnsureCurrentUserIdentityCache]    Script Date: 06/02/2015 22:53:33 ******/
DROP PROCEDURE [dbo].[EnsureCurrentUserIdentityCache]
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Application]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_CreatedBy]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_ModifiedBy]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Parent]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [DF_Folder_Id]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [DF_Folder_MetaData]
GO
DROP TABLE [dbo].[Folder]
GO
/****** Object:  UserDefinedFunction [dbo].[IsDescendentOf]    Script Date: 06/02/2015 22:53:33 ******/
DROP FUNCTION [dbo].[IsDescendentOf]
GO
/****** Object:  StoredProcedure [dbo].[proc_FinishConversionJob]    Script Date: 06/02/2015 22:53:32 ******/
DROP PROCEDURE [dbo].[proc_FinishConversionJob]
GO
/****** Object:  Table [dbo].[ConversionLog]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog] DROP CONSTRAINT [FK_ConversionLog_ConvertedImage]
GO
ALTER TABLE [dbo].[ConversionLog] DROP CONSTRAINT [FK_ConversionLog_SourceImage]
GO
ALTER TABLE [dbo].[ConversionLog] DROP CONSTRAINT [FK_ConversionLog_StartedBy]
GO
DROP TABLE [dbo].[ConversionLog]
GO
/****** Object:  Table [dbo].[ConvertedImage]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_ConvertedBy]
GO
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_SourceImage]
GO
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [DF_ConversionCache_Id]
GO
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [DF_ConversionCache_MetaData]
GO
DROP TABLE [dbo].[ConvertedImage]
GO
/****** Object:  Table [dbo].[ConversionJob]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionJob] DROP CONSTRAINT [FK_ConversionJob_SourceImage]
GO
ALTER TABLE [dbo].[ConversionJob] DROP CONSTRAINT [FK_ConversionJob_StartedBy]
GO
ALTER TABLE [dbo].[ConversionJob] DROP CONSTRAINT [DF_ConversionJob_Id]
GO
DROP TABLE [dbo].[ConversionJob]
GO
/****** Object:  Table [dbo].[SourceImage]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Application]
GO
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_CreatedBy]
GO
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Folder]
GO
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_ModifiedBy]
GO
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [DF_Photo_Id]
GO
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [DF_SourceImage_MetaData]
GO
DROP TABLE [dbo].[SourceImage]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_CreatedBy]
GO
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_ModifiedBy]
GO
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [DF_Application_Id]
GO
DROP TABLE [dbo].[Application]
GO
/****** Object:  Table [dbo].[IdentityCache]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [DF_IdentityCache_Id]
GO
DROP TABLE [dbo].[IdentityCache]
GO
/****** Object:  Role [SiteAuditor]    Script Date: 06/02/2015 22:53:23 ******/
DECLARE @RoleName sysname
set @RoleName = N'SiteAuditor'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [SiteAuditor]
GO
/****** Object:  Role [SiteContributor]    Script Date: 06/02/2015 22:53:23 ******/
DECLARE @RoleName sysname
set @RoleName = N'SiteContributor'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [SiteContributor]
GO
/****** Object:  Role [SiteAdmin]    Script Date: 06/02/2015 22:53:23 ******/
DECLARE @RoleName sysname
set @RoleName = N'SiteAdmin'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [SiteAdmin]
GO
/****** Object:  Role [SiteAuditor]    Script Date: 06/02/2015 22:53:23 ******/
CREATE ROLE [SiteAuditor] AUTHORIZATION [dbo]
GO
/****** Object:  Role [SiteContributor]    Script Date: 06/02/2015 22:53:23 ******/
CREATE ROLE [SiteContributor] AUTHORIZATION [dbo]
GO
/****** Object:  Role [SiteAdmin]    Script Date: 06/02/2015 22:53:23 ******/
CREATE ROLE [SiteAdmin] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[IdentityCache]    Script Date: 06/02/2015 22:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IdentityCache](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_IdentityCache_Id]  DEFAULT (newid()),
	[SID] [varbinary](85) NOT NULL,
	[LoginName] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[EmailAddress] [nvarchar](1024) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedByLoginName] [nvarchar](128) NOT NULL,
	[CreatedBySID] [varbinary](85) NOT NULL,
	[VerifiedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedByLoginName] [nvarchar](128) NOT NULL,
	[ModifiedBySID] [varbinary](85) NOT NULL,
 CONSTRAINT [PK_IdentityCache] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Security Identifier associated with a specific login account or security group. This field may only be populated when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'SID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last known login string.  This field may only be populated when the record is created; otherwise, it cannot be modified.

Do not use this value as a persistent unique identifier. It is only guaranteed to be unique while the associated login account exists. Once a login account is deleted, the login name may be re-used. The ObjectGuid and SID should always remain unique.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'LoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display name to be associated with the login account or security group. Initially, it will be the same as the login name, unless otherwise specified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'DisplayName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address to be associated with the login account or security group. Initially, this will be null, unless otherwise specified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. This field may only be populated when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Login name of user account which created this record. This field may only be populated when the record is created; otherwise, it cannot be modified.

Do not use this value as a persistent unique identifier or in query relationships where you wish to form an association to a specific login account. Use CreatedBySID for that purpose, instead.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'CreatedByLoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Security Identifier of user account which created this record. This field may only be populated when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'CreatedBySID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field can be used to track when the display name and email address were last verified against the authentication source (typically, Windows Active Directory)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'VerifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Login name of user account which last modified this record.

Do not use this value as a persistent unique identifier or in query relationships where you wish to form an association to a specific login account. Use ModifiedBySID for that purpose, instead.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'ModifiedByLoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Security Identifier of user account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'ModifiedBySID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table serves as a cache of information related to individual authenticated user account. The modification of certain fields are restricted. See individual column descriptions for more informaiton.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache'
GO
/****** Object:  Table [dbo].[Application]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Application_Id]  DEFAULT (newid()),
	[Title] [nvarchar](255) NOT NULL,
	[Description] [text] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModfiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which created this record. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModfiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains photo application definitions.

An "Application" is defined as a means of grouping stored images according to their specific purpose or intended usage (ie. what they "apply to").' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO
/****** Object:  Table [dbo].[SourceImage]    Script Date: 06/02/2015 22:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceImage](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Photo_Id]  DEFAULT (newid()),
	[DisplayText] [nvarchar](1024) NOT NULL,
	[Name] [nvarchar](1024) NOT NULL,
	[Description] [text] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[Data] [image] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Format] [int] NOT NULL,
	[MetaData] [xml] NOT NULL CONSTRAINT [DF_SourceImage_MetaData]  DEFAULT ('<MetaData />'),
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModfiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SourceImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SourceImageApplication] ON [dbo].[SourceImage] 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SourceImageParent] ON [dbo].[SourceImage] 
(
	[ParentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SourceImagePublic] ON [dbo].[SourceImage] 
(
	[IsPublic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-friendly name of source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'DisplayText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of source image, which is to be unique among other source images and folders within its parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-provided description of the source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of source image''s parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of source image''s application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If true, then the image can be used on a read-only basis by any application; otherwise, false indicates that the image is to be assessible only by its associated application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column contains the actual binary image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the image data format as follows:
0 = Unknown / Unspecified.
1 = Bitmap (BMP) image format.
2 = Enhanced metafile (EMF) image format.
3 = Exchangeable Image File (Exif) format.
4 = Graphics Interchange Format (GIF) image format.
5 = Windows icon image format.
6 = Joint Photographic Experts Group (JPEG) image format.
7 = W3C Portable Network Graphics (PNG) image format.
8 = Tagged Image File Format (TIFF) image format.
9 = Windows metafile (WMF) image format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Format'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meta-data associated with source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'MetaData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which created this record. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ModfiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record which contains the binary source image data, and related information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage'
GO
/****** Object:  Table [dbo].[ConversionJob]    Script Date: 06/02/2015 22:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionJob](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_ConversionJob_Id]  DEFAULT (newid()),
	[SourceImageId] [uniqueidentifier] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Format] [int] NOT NULL,
	[StartedOn] [datetime] NOT NULL,
	[StartedById] [uniqueidentifier] NOT NULL,
	[StatusId] [int] NOT NULL,
	[StatusMessage] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_ConversionJob] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of converted image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJob', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of converted image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJob', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains information about currently running conversion jobs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJob'
GO
/****** Object:  Table [dbo].[ConvertedImage]    Script Date: 06/02/2015 22:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvertedImage](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_ConversionCache_Id]  DEFAULT (newid()),
	[SourceImageId] [uniqueidentifier] NOT NULL,
	[Data] [image] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Format] [int] NOT NULL,
	[MetaData] [xml] NOT NULL CONSTRAINT [DF_ConversionCache_MetaData]  DEFAULT ('<MetaData />'),
	[ConvertedOn] [datetime] NOT NULL,
	[ConvertedById] [uniqueidentifier] NOT NULL,
	[ExpiresOn] [datetime] NULL,
 CONSTRAINT [PK_ConvertedImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ConvertedImageParameters] ON [dbo].[ConvertedImage] 
(
	[Width] ASC,
	[Height] ASC,
	[Format] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ConvertedImageSourceImage] ON [dbo].[ConvertedImage] 
(
	[SourceImageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of source image from which this conversion was made.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'SourceImageId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the converted image data format as follows:
0 = Unknown / Unspecified.
1 = Bitmap (BMP) image format.
2 = Enhanced metafile (EMF) image format.
3 = Exchangeable Image File (Exif) format.
4 = Graphics Interchange Format (GIF) image format.
5 = Windows icon image format.
6 = Joint Photographic Experts Group (JPEG) image format.
7 = W3C Portable Network Graphics (PNG) image format.
8 = Tagged Image File Format (TIFF) image format.
9 = Windows metafile (WMF) image format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'Data'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of converted image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of converted image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meta-data associated with converted image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'MetaData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when source image was converted.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'ConvertedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which converted the associated source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'ConvertedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time at which this cache entry is to expire. A null value indicates a persistent image conversion which never expires.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'ExpiresOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains data relating to images that have been converted from the source image, including format and dimension conversions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage'
GO
/****** Object:  Table [dbo].[ConversionLog]    Script Date: 06/02/2015 22:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionLog](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[SourceImageId] [uniqueidentifier] NOT NULL,
	[ConvertedImageId] [uniqueidentifier] NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Format] [int] NOT NULL,
	[StartedOn] [datetime] NOT NULL,
	[StartedById] [uniqueidentifier] NOT NULL,
	[FinishedOn] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
	[StatusMessage] [nvarchar](1024) NOT NULL,
	[DetailMessage] [text] NOT NULL,
 CONSTRAINT [PK_ConversionLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of converted image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionLog', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of converted image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionLog', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Log entries for completed conversions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionLog'
GO
/****** Object:  Trigger [trig_DeleteConversionJob]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Prevents delete until a log entry is created.
-- =============================================
CREATE TRIGGER [dbo].[trig_DeleteConversionJob]
   ON [dbo].[ConversionJob]
   AFTER DELETE
AS 
BEGIN
	SET NOCOUNT ON;

    IF EXISTS (SELECT * FROM ConversionJob LEFT OUTER JOIN ConversionLog ON ConversionJob.Id = ConversionLog.Id WHERE (ConversionLog.SourceImageId IS NULL)) BEGIN
		RAISERROR('Conversion log entries must be created before the originating conversion job record is deleted.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[proc_FinishConversionJob]    Script Date: 06/02/2015 22:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Records the comletion of a conversion job
-- =============================================
CREATE PROCEDURE [dbo].[proc_FinishConversionJob]
	@Id UniqueIdentifier,
	@StatusId Int,
	@StatusMessage NVarChar(1024),
	@DetailMessage Text
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE ConversionJob SET StatusId = @StatusId, StatusMessage = @StatusMessage
		WHERE (Id = @Id);
	
	
    INSERT INTO ConversionLog (Id, SourceImageId, Width, Height, Format, StartedOn, StartedById, FinishedOn, StatusId, StatusMessage, DetailMessage)
		SELECT Id, SourceImageId, Width, Height, Format, StartedOn, StartedById, GETDATE(), StatusId, StatusMessage, @DetailMessage as DetailMessage
		FROM ConversionJob;
		
	DELETE FROM ConversionJob WHERE (Id = @Id);

	SELECT Id, SourceImageId, ConvertedImageId, Width, Height, Format, StartedOn, StartedById, FinishedOn, StatusId, StatusMessage, DetailMessage
		FROM ConversionLog
		WHERE (Id = @Id);
	END
GO
/****** Object:  UserDefinedFunction [dbo].[IsDescendentOf]    Script Date: 06/02/2015 22:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Determines if a folder belongs to an ancestor
-- =============================================
CREATE FUNCTION [dbo].[IsDescendentOf]
(
	@FolderId UniqueIdentifier,
	@AncestorId UniqueIdentifier
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;
	DECLARE @ApplicationId uniqueidentifier;
	DECLARE @AncestorApplicationId uniqueidentifier;
	DECLARE @ParentId uniqueidentifier;
	
	SELECT @ApplicationId = ApplicationId FROM Folder WHERE Id = @FolderId;
	IF @ApplicationId IS NULL BEGIN
		SET @ResultVar = 0;
		RETURN @ResultVar;
	END
	
	SELECT @AncestorApplicationId = ApplicationId FROM Folder WHERE Id = @AncestorId;
	IF @AncestorApplicationId IS NULL OR @ApplicationId <> @AncestorApplicationId BEGIN
		SET @ResultVar = 0;
		RETURN @ResultVar;
	END
	
	SELECT @ParentId = ParentId FROM Folder WHERE Id = @FolderId;

	IF @ParentId IS NULL BEGIN
		SET @ResultVar = 0;
		RETURN @ResultVar;
	END
	
	IF @ParentId = @AncestorId BEGIN
		SET @ResultVar = 1;
	END
	ELSE BEGIN
		SET @ResultVar = dbo.IsDescendentOf(@ParentId, @AncestorId);
	END
	
	RETURN @ResultVar;
END
GO
/****** Object:  Trigger [trig_UpsertConversionCache]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-01
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_UpsertConversionCache]
   ON  [dbo].[ConvertedImage] 
   AFTER INSERT,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.ConvertedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.Format < 0 OR inserted.Format > 9) BEGIN
		RAISERROR('Invalid Image Format value', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_UpdateConversionLog]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_UpdateConversionLog]
   ON  [dbo].[ConversionLog] 
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF EXISTS (SELECT * FROM inserted INNER JOIN deleted ON inserted.Id = deleted.Id WHERE (inserted.ConvertedImageId <> deleted.ConvertedImageId) OR (inserted.Format <> deleted.Format) OR
			(inserted.Height <> deleted.Height) OR (inserted.SourceImageId <> deleted.SourceImageId) OR (inserted.StartedById <> deleted.StartedById) OR
			(inserted.StartedOn <> deleted.StartedOn) OR (inserted.StatusId <> deleted.StatusId) OR (inserted.Width <> deleted.Width)) BEGIN
		RAISERROR('Properties which originated from conversion job values cannot be modified.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END

	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.StartedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to modify another user''s record.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN;
		END
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN ConversionJob ON inserted.Id = ConversionJob.Id INNER JOIN deleted on inserted.Id = deleted.Id WHERE (ConversionJob.SourceImageId IS NULL)) BEGIN
		RAISERROR('Cannot modify conversion log entry after the conversion job record has been dleeted.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
	ELSE BEGIN
		IF EXISTS (SELECT * FROM inserted WHERE (inserted.FinishedOn < inserted.StartedOn)) BEGIN
			RAISERROR('Finished date/time cannot occur before the start date/time.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN;
		END
	END
END
GO
/****** Object:  Trigger [trig_UpdateConversionJob]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_UpdateConversionJob]
   ON  [dbo].[ConversionJob] 
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.StartedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END
	IF EXISTS (SELECT * FROM inserted INNER JOIN deleted ON inserted.Id = deleted.Id WHERE (inserted.Format <> deleted.Format) OR (inserted.Height <> deleted.Height) OR 
		(inserted.SourceImageId <> deleted.SourceImageId) OR (inserted.StartedById <> deleted.StartedById) OR (inserted.StartedOn <> deleted.StartedOn) OR 
		(inserted.Width <> deleted.Width)) BEGIN
		RAISERROR('Cannot modify conversion parameter values.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
	IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN ConversionLog ON inserted.Id = ConversionLog.Id) BEGIN
		RAISERROR('Cannot modify conversion job values once the conversion log entry has been created.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
END
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Folder](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Folder_Id]  DEFAULT (newid()),
	[DisplayText] [nvarchar](1024) NOT NULL,
	[Name] [nvarchar](1024) NOT NULL,
	[Description] [text] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[MetaData] [xml] NOT NULL CONSTRAINT [DF_Folder_MetaData]  DEFAULT ('<MetaData />'),
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModfiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Folder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FolderApplication] ON [dbo].[Folder] 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FolderParent] ON [dbo].[Folder] 
(
	[ParentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FolderPublic] ON [dbo].[Folder] 
(
	[IsPublic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-friendly name of folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'DisplayText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of folder, which is to be unique among other folders and source images within its parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-specified description of the folder and/or its contents.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of the parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of folder''s application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If true, then the folder and its contents may be browsed by any application; otherwise, false indicates that the folder is intended only for its associated application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meta-data associated with folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'MetaData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which created this record. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ModfiedOn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provides a hierarchical folder structure for logically separating source images, similar to a disk file system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder'
GO
/****** Object:  Trigger [trig_AlterSourceImage]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AlterSourceImage]
   ON  [dbo].[SourceImage]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);

	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.ModifiedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to alter records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
			RAISERROR('Created date cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedById <> deleted.CreatedById) BEGIN
			RAISERROR('Created by cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn > inserted.ModfiedOn) BEGIN
		RAISERROR('Modified date cannot be older than created date', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.ApplicationId <> deleted.ApplicationId) BEGIN
		RAISERROR('Application Id cannot be modified', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Parent ON inserted.ParentId = Parent.Id WHERE inserted.ParentId IS NOT NULL AND inserted.ApplicationId <> Parent.ApplicationId) BEGIN
		RAISERROR('Parent must have same application id as image', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) BEGIN
		RAISERROR('Image name must be unique within its parent', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_AlterFolder]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AlterFolder]
   ON  [dbo].[Folder]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);

	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.ModifiedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to alter records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
			RAISERROR('Created date cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedById <> deleted.CreatedById) BEGIN
			RAISERROR('Created by cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn > inserted.ModfiedOn) BEGIN
		RAISERROR('Modified date cannot be older than created date', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Parent ON inserted.ParentId = Parent.Id WHERE inserted.ParentId <> NULL AND inserted.ApplicationId <> Parent.ApplicationId) BEGIN
		RAISERROR('Folder must have same application id as its parent', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.ApplicationId <> deleted.ApplicationId) BEGIN
		RAISERROR('Application Id cannot be modified', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.ParentId IS NOT NULL AND inserted.ParentId = inserted.Id) BEGIN
		RAISERROR('Folder cannot be parent of itself', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.ParentId IS NOT NULL AND dbo.IsDescendentOf(inserted.ParentId, inserted.Id) = 1) BEGIN
		RAISERROR('Circular hierarchical references not allowed.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) BEGIN
		RAISERROR('Folder name must be unique within its parent', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_AddSourceImage]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddSourceImage]
   ON  [dbo].[SourceImage]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.CreatedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedById <> inserted.ModifiedById) BEGIN
		RAISERROR('Created by must be same as modified by', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn <> inserted.ModfiedOn) BEGIN
		RAISERROR('Created on must be same as modified on', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.Format < 0 OR inserted.Format > 9) BEGIN
		RAISERROR('Invalid Image Format value', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	
	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Parent ON inserted.ParentId = Parent.Id WHERE (inserted.ParentId IS NOT NULL) AND (inserted.ApplicationId <> Parent.ApplicationId)) BEGIN
		RAISERROR('Image must have same application id as its parent', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) BEGIN
		RAISERROR('Image name must be unique within its parent', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_AddFolder]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddFolder]
   ON  [dbo].[Folder]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.CreatedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedById <> inserted.ModifiedById) BEGIN
			RAISERROR('Created by must be same as modified by', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn <> inserted.ModfiedOn) BEGIN
			RAISERROR('Created on must be same as modified on', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE  inserted.ParentId IS NOT NULL AND inserted.ParentId = inserted.Id) BEGIN
		RAISERROR('Folder cannot be parent of itself', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN Folder AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name)) AND (inserted.Id <> Sibling.Id)) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NULL) AND (Sibling.ParentId IS NULL) AND (inserted.ApplicationId = Sibling.ApplicationId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) OR
			EXISTS (SELECT * FROM inserted LEFT JOIN SourceImage AS Sibling ON inserted.ApplicationId = Sibling.ApplicationId
				WHERE (inserted.ParentId IS NOT NULL) AND (Sibling.ParentId IS NOT NULL) AND (inserted.ParentId = Sibling.ParentId) AND (LOWER(inserted.Name) = LOWER(Sibling.Name))) BEGIN
		RAISERROR('Folder name must be unique within its parent', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_AddConversionLog]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddConversionLog]
   ON  [dbo].[ConversionLog] 
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.StartedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN;
		END
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN ConversionJob ON inserted.Id = ConversionJob.Id WHERE (ConversionJob.SourceImageId IS NULL)) BEGIN
		RAISERROR('When creating a conversion log entry, its Id must be the same as its associated conversion job record.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
	
	IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN ConversionJob ON inserted.Id = ConversionJob.Id WHERE (ConversionJob.Format <> inserted.Format) OR 
			(ConversionJob.Height <> inserted.Height) OR (ConversionJob.SourceImageId <> inserted.SourceImageId) OR (ConversionJob.StartedById <> inserted.StartedById) OR 
			(ConversionJob.StartedOn <> inserted.StartedOn) OR (ConversionJob.StatusId <> inserted.StatusId) OR (ConversionJob.StatusMessage <> inserted.StatusMessage) OR 
			(ConversionJob.Width <> inserted.Width)) BEGIN
		RAISERROR('A conversion log entry must initialized with the current field values as its associated conversion job.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
	
	IF EXISTS (SELECT * FROM inserted WHERE (inserted.FinishedOn < inserted.StartedOn)) BEGIN
		RAISERROR('Finished date/time cannot occur before the start date/time.', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN;
	END
END
GO
/****** Object:  Trigger [trig_AddConversionJob]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddConversionJob]
   ON  [dbo].[ConversionJob] 
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.StartedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END
END
GO
/****** Object:  Trigger [trig_AlterIdentityCache]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AlterIdentityCache] 
   ON  [dbo].[IdentityCache]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	DECLARE @LoginName NVarChar(128);

	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE (inserted.SID <> deleted.SID)) BEGIN
			RAISERROR('SID cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.LoginName <> deleted.LoginName) BEGIN
			RAISERROR('Login Name cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE (inserted.CreatedByLoginName <> deleted.CreatedByLoginName) OR (inserted.CreatedBySID <> deleted.CreatedBySID)) BEGIN
			RAISERROR('Created By cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
			RAISERROR('Created On cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		SELECT @SID = SUSER_SID(), @LoginName = SUSER_SNAME();

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE (inserted.ModifiedByLoginName <> @LoginName) OR inserted.ModifiedBySID <> @SID) BEGIN
			RAISERROR('You do not have permission to alter identity cache records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		
		IF IS_MEMBER('dbo') <> 1 AND IS_MEMBER('SiteAdmin') <> 1 BEGIN
			IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE (inserted.LoginName <> @LoginName) OR inserted.SID <> @SID) BEGIN
				RAISERROR('You do not have permission to modify identity cache records of another user.', 12, 1);
				ROLLBACK TRANSACTION;
				RETURN
			END
		END
		ELSE BEGIN
			IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE ((deleted.SID <> inserted.SID) OR (deleted.LoginName <> inserted.LoginName)) AND (SUSER_SNAME(inserted.SID) <> inserted.LoginName)) BEGIN
				RAISERROR('Login name does not match the security identifier.', 12, 1);
				ROLLBACK TRANSACTION;
				RETURN
			END
		END
	END
	ELSE BEGIN
		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE ((deleted.SID <> inserted.SID) OR (deleted.LoginName <> inserted.LoginName)) AND (SUSER_SNAME(inserted.SID) <> inserted.LoginName)) BEGIN
			RAISERROR('Login name does not match the security identifier.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		
		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE ((deleted.CreatedBySID <> inserted.CreatedBySID) OR (deleted.CreatedByLoginName <> inserted.CreatedByLoginName)) AND (SUSER_SNAME(inserted.CreatedBySID) <> inserted.CreatedByLoginName)) BEGIN
			RAISERROR('Created By login name does not match the security identifier.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		
		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE ((deleted.ModifiedBySID <> inserted.ModifiedBySID) OR (deleted.ModifiedByLoginName <> inserted.ModifiedByLoginName)) AND (SUSER_SNAME(inserted.ModifiedBySID) <> inserted.ModifiedByLoginName)) BEGIN
			RAISERROR('Modified By login name does not match the security identifier.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE (inserted.CreatedOn > inserted.ModifiedOn)) BEGIN
		RAISERROR('Modification date cannot be older than the created date', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn > inserted.VerifiedOn) BEGIN
		RAISERROR('Verification date cannot be older than the created date', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  StoredProcedure [dbo].[EnsureCurrentUserIdentityCache]    Script Date: 06/02/2015 22:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-01
-- Description:	Ensures the current user is in the identity cache
-- =============================================
CREATE PROCEDURE [dbo].[EnsureCurrentUserIdentityCache]
	@Id UniqueIdentifier OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @CacheId UniqueIdentifier;
	DECLARE @SID VarBinary(85);
	DECLARE @LoginName NVarChar(128);
	DECLARE @CreatedOn DateTime;
	DECLARE @IdTable Table(Id UniqueIdentifier NOT NULL);
	
	SELECT @CacheId = Id FROM IdentityCache WHERE (SID = SUSER_SID());
	IF @CacheId IS NULL BEGIN
		SELECT @SID = SUSER_SID(), @LoginName = SUSER_SNAME(), @CreatedOn = GETDATE();
		INSERT INTO IdentityCache ([SID], LoginName, DisplayName, EmailAddress, CreatedOn, CreatedByLoginName, CreatedBySID, VerifiedOn, ModifiedOn, ModifiedByLoginName, ModifiedBySID)
			OUTPUT inserted.Id INTO @IdTable
			VALUES (@SID, @LoginName,@LoginName, NULL,@CreatedOn,@LoginName,@SID,@CreatedOn,@CreatedOn,@LoginName,@SID);
		SELECT @CacheId = Id FROM @IdTable
	END
    
    SET @Id = @CacheId;
END
GO
/****** Object:  Trigger [trig_AddIdentityCache]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddIdentityCache] 
   ON  [dbo].[IdentityCache]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	DECLARE @LoginName NVarChar(128);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		SELECT @SID = SUSER_SID(), @LoginName = SUSER_SNAME();

		IF EXISTS (SELECT * FROM inserted WHERE (inserted.CreatedByLoginName <> @LoginName) OR inserted.CreatedBySID <> @SID) BEGIN
			RAISERROR('You do not have permission to add identity cache records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		
		IF IS_MEMBER('dbo') <> 1 AND IS_MEMBER('SiteAdmin') <> 1 BEGIN
			IF EXISTS (SELECT * FROM inserted WHERE (inserted.LoginName <> @LoginName) OR inserted.SID <> @SID) BEGIN
				RAISERROR('You do not have permission to add identity cache records for another user.', 12, 1);
				ROLLBACK TRANSACTION;
				RETURN
			END
		END
		ELSE BEGIN
			IF EXISTS (SELECT * FROM inserted WHERE (SUSER_SNAME(inserted.SID) <> inserted.LoginName)) BEGIN
				RAISERROR('Login name does not match the security identifier.', 12, 1);
				ROLLBACK TRANSACTION;
				RETURN
			END
		END
	END
	ELSE BEGIN
		IF EXISTS (SELECT * FROM inserted WHERE (SUSER_SNAME(inserted.SID) <> inserted.LoginName)) BEGIN
			RAISERROR('Login name does not match the security identifier.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		IF EXISTS (SELECT * FROM inserted WHERE (SUSER_SNAME(inserted.CreatedBySID) <> inserted.CreatedByLoginName)) BEGIN
			RAISERROR('Created By login name does not match the security identifier.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE (inserted.CreatedOn <> inserted.VerifiedOn) OR (inserted.CreatedOn <> inserted.ModifiedOn)) BEGIN
		RAISERROR('Verified date, modification date and creation date must be the same', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE (inserted.CreatedBySID <> inserted.ModifiedBySID) OR (inserted.CreatedByLoginName <> inserted.ModifiedByLoginName)) BEGIN
		RAISERROR('Created by and modified by must be the same.', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_AlterApplication]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AlterApplication] 
   ON  [dbo].[Application]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);

	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		IF IS_MEMBER('dbo') <> 1 AND IS_MEMBER('SiteAdmin') <> 1 BEGIN
			RAISERROR('You do not have permission to add application records.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.ModifiedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to alter records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
			RAISERROR('Created date cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END

		IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedById <> deleted.CreatedById) BEGIN
			RAISERROR('Created by cannot be modified', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END
	
	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn > inserted.ModfiedOn) BEGIN
		RAISERROR('Modified date cannot be older than created date', 11, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  Trigger [trig_AddApplication]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-04-30
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddApplication] 
   ON  [dbo].[Application]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @SID VarBinary(84);
	
	IF IS_SRVROLEMEMBER('sysadmin') <> 1 BEGIN
		IF IS_MEMBER('dbo') <> 1 AND IS_MEMBER('SiteAdmin') <> 1 BEGIN
			RAISERROR('You do not have permission to add application records.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
		
		SELECT @SID = SUSER_SID();
		
		IF EXISTS (SELECT * FROM inserted LEFT OUTER JOIN IdentityCache ON inserted.CreatedById = IdentityCache.Id WHERE (IdentityCache.SID <> @SID)) BEGIN
			RAISERROR('You do not have permission to add records as another user.', 12, 1);
			ROLLBACK TRANSACTION;
			RETURN
		END
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedById <> inserted.ModifiedById) BEGIN
		RAISERROR('Created by must be same as modified by', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn <> inserted.ModfiedOn) BEGIN
		RAISERROR('Created on must be same as modified on', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentUserIdentityCache]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-01
-- Description:	Ensures the current user is in the identity cache
-- =============================================
CREATE PROCEDURE [dbo].[GetCurrentUserIdentityCache]
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @CacheId UniqueIdentifier;
	
	EXEC EnsureCurrentUserIdentityCache @Id = @CacheId OUTPUT;
    
    SELECT Id, [SID], LoginName, DisplayName, EmailAddress, CreatedOn, CreatedByLoginName, CreatedBySID, VerifiedOn, ModifiedOn, ModifiedByLoginName, ModifiedBySID
		FROM IdentityCache
		WHERE (Id = @CacheId);
END
GO
/****** Object:  StoredProcedure [dbo].[proc_StartConversionJob]    Script Date: 06/02/2015 22:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-02
-- Description:	Records the start of a conversion job
-- =============================================
CREATE PROCEDURE [dbo].[proc_StartConversionJob]
	@SourceImageId UniqueIdentifier,
	@Width Int,
	@Height Int,
	@Format Int,
	@StartedById UniqueIdentifier,
	@InitialStatusId Int,
	@StatusMessage NVarChar(1024)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @idTable Table ( Id UniqueIdentifier NOT NULL );
	DECLARE @startedBy UniqueIdentifier;
    
    IF @StartedById IS NULL BEGIN
		EXEC GetCurrentUserIdentityCache @Id = @startedBy OUTPUT;
    END
    ELSE BEGIN
		SET @startedBy = @StartedById;
    END
    
    INSERT INTO ConversionJob (SourceImageId, Width, Height, Format, StartedOn, StartedById, StatusId, StatusMessage)
		OUTPUT inserted.Id INTO @idTable
		VALUES (@SourceImageId,@Width,@Height,@Format, GETDATE(),@startedBy,@InitialStatusId,@StatusMessage);
	
	SELECT @startedBy = Id FROM @idTable;
	SELECT Id, SourceImageId, Width, Height, Format, StartedOn, StartedById, StatusId, StatusMessage FROM ConversionJob WHERE (Id = @startedBy);
END
GO
/****** Object:  ForeignKey [FK_ConversionJob_SourceImage]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionJob]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJob_SourceImage] FOREIGN KEY([SourceImageId])
REFERENCES [dbo].[SourceImage] ([Id])
GO
ALTER TABLE [dbo].[ConversionJob] CHECK CONSTRAINT [FK_ConversionJob_SourceImage]
GO
/****** Object:  ForeignKey [FK_ConversionJob_StartedBy]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionJob]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJob_StartedBy] FOREIGN KEY([StartedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[ConversionJob] CHECK CONSTRAINT [FK_ConversionJob_StartedBy]
GO
/****** Object:  ForeignKey [FK_ConversionLog_ConvertedImage]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionLog_ConvertedImage] FOREIGN KEY([ConvertedImageId])
REFERENCES [dbo].[ConvertedImage] ([Id])
GO
ALTER TABLE [dbo].[ConversionLog] CHECK CONSTRAINT [FK_ConversionLog_ConvertedImage]
GO
/****** Object:  ForeignKey [FK_ConversionLog_SourceImage]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionLog_SourceImage] FOREIGN KEY([SourceImageId])
REFERENCES [dbo].[SourceImage] ([Id])
GO
ALTER TABLE [dbo].[ConversionLog] CHECK CONSTRAINT [FK_ConversionLog_SourceImage]
GO
/****** Object:  ForeignKey [FK_ConversionLog_StartedBy]    Script Date: 06/02/2015 22:53:28 ******/
ALTER TABLE [dbo].[ConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionLog_StartedBy] FOREIGN KEY([StartedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[ConversionLog] CHECK CONSTRAINT [FK_ConversionLog_StartedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_ConvertedBy]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [FK_ConvertedImage_ConvertedBy] FOREIGN KEY([ConvertedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [FK_ConvertedImage_ConvertedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_SourceImage]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [FK_ConvertedImage_SourceImage] FOREIGN KEY([SourceImageId])
REFERENCES [dbo].[SourceImage] ([Id])
GO
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [FK_ConvertedImage_SourceImage]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between converted images and the source image from which they were derrived.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'FK_ConvertedImage_SourceImage'
GO
/****** Object:  ForeignKey [FK_SourceImage_Application]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([Id])
GO
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_Application]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between source images and their application definition.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_Application'
GO
/****** Object:  ForeignKey [FK_SourceImage_CreatedBy]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_CreatedBy]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between user accounts and the source image records which they have created.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_CreatedBy'
GO
/****** Object:  ForeignKey [FK_SourceImage_Folder]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_Folder] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Folder] ([Id])
GO
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_Folder]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between source images and the folder in which they are contained.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_Folder'
GO
/****** Object:  ForeignKey [FK_SourceImage_ModifiedBy]    Script Date: 06/02/2015 22:53:33 ******/
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_ModifiedBy]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between a source image record and the user account which has most recently modified it.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_ModifiedBy'
GO
/****** Object:  ForeignKey [FK_Folder_Application]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([Id])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Application]
GO
/****** Object:  ForeignKey [FK_Folder_CreatedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Folder_ModifiedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_Folder_Parent]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Parent] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Folder] ([Id])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Parent]
GO
/****** Object:  ForeignKey [FK_Application_CreatedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Application_ModifiedBy]    Script Date: 06/02/2015 22:53:34 ******/
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_ModifiedBy]
GO

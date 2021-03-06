USE [master]
GO
/****** Object:  Database [Rimss]    Script Date: 06/09/2015 04:32:13 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Rimss')
BEGIN
CREATE DATABASE [Rimss] ON  PRIMARY 
( NAME = N'PhotoLocker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\PhotoLocker.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhotoLocker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\PhotoLocker_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
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
/****** Object:  ForeignKey [FK_ConvertedImage_CreatedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_CreatedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_ImageFormatCodes]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_ImageFormatCodes]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_ModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_SourceImage]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_SourceImage]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_Application]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_Application]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_CreatedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_CreatedBy]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_JobReasonCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobReasonCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_JobReasonCodes]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_JobStatusCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_JobStatusCodes]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_StartedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_StartedBy]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_TerminatedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_TerminatedBy]
GO
/****** Object:  ForeignKey [FK_ConversionLog_ConvertedImage]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionLog_ConvertedImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_ConversionLog_ConvertedImage]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_ConversionJobLog]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ConversionJobLog]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_ConversionJobLog]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_ImageFormatCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_ImageFormatCodes]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_JobStatusCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_JobStatusCodes]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_SourceImage]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_SourceImage]
GO
/****** Object:  ForeignKey [FK_SourceImage_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Application]
GO
/****** Object:  ForeignKey [FK_SourceImage_CreatedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_CreatedBy]
GO
/****** Object:  ForeignKey [FK_SourceImage_Folder]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Folder]
GO
/****** Object:  ForeignKey [FK_SourceImage_ImageFormatCodes]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_ImageFormatCodes]
GO
/****** Object:  ForeignKey [FK_SourceImage_ModifiedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_Folder_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Application]
GO
/****** Object:  ForeignKey [FK_Folder_CreatedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Folder_ModifiedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_Folder_Parent]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Parent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Parent]
GO
/****** Object:  ForeignKey [FK_Application_CreatedBy]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Application_ModifiedBy]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_ModifiedBy]
GO
/****** Object:  Check [CK_IdentityCache_CreatedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_CreatedBy]

END
GO
/****** Object:  Check [CK_IdentityCache_CreatedModified]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_CreatedModified]

END
GO
/****** Object:  Check [CK_IdentityCache_CreatedVerified]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedVerified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedVerified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_CreatedVerified]

END
GO
/****** Object:  Check [CK_IdentityCache_EmailAddress]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_EmailAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_EmailAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_EmailAddress]

END
GO
/****** Object:  Check [CK_IdentityCache_LoginName]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_LoginName]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_LoginName]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_LoginName]

END
GO
/****** Object:  Check [CK_IdentityCache_ModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_ModifiedBy]

END
GO
/****** Object:  Check [CK_IdentityCache_SID]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_SID]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_SID]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_SID]

END
GO
/****** Object:  Check [CK_ConvertedImage_CreatedModified]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_CreatedModified]

END
GO
/****** Object:  Check [CK_ConvertedImage_Format]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Format]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Format]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Format]

END
GO
/****** Object:  Check [CK_ConvertedImage_Height]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Height]

END
GO
/****** Object:  Check [CK_ConvertedImage_ModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_ModifiedBy]

END
GO
/****** Object:  Check [CK_ConvertedImage_Tag]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Tag]

END
GO
/****** Object:  Check [CK_ConvertedImage_Width]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Width]

END
GO
/****** Object:  Check [CK_ConversionJobLog_CreatedStarted]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_CreatedStarted]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_CreatedStarted]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_CreatedStarted]

END
GO
/****** Object:  Check [CK_ConversionJobLog_StartedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_StartedBy]

END
GO
/****** Object:  Check [CK_ConversionJobLog_StartedTerminated]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_StartedTerminated]

END
GO
/****** Object:  Check [CK_ConversionJobLog_TerminatedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_TerminatedBy]

END
GO
/****** Object:  Check [CK_FileConversionLog_Job]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Job]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Job]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_Job]

END
GO
/****** Object:  Check [CK_FileConversionLog_SourceImage]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_SourceImage]

END
GO
/****** Object:  Check [CK_FileConversionLog_StartedTerminated]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_StartedTerminated]

END
GO
/****** Object:  Check [CK_FileConversionLog_Tag]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_Tag]

END
GO
/****** Object:  Check [CK_SourceImage_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Application]

END
GO
/****** Object:  Check [CK_SourceImage_CreatedModified]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_CreatedModified]

END
GO
/****** Object:  Check [CK_SourceImage_FormatId]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_FormatId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_FormatId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_FormatId]

END
GO
/****** Object:  Check [CK_SourceImage_Height]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Height]

END
GO
/****** Object:  Check [CK_SourceImage_Name]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Name]

END
GO
/****** Object:  Check [CK_SourceImage_Width]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Width]

END
GO
/****** Object:  Check [CK_Folder_Ancestor]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Ancestor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Ancestor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_Ancestor]

END
GO
/****** Object:  Check [CK_Folder_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_Application]

END
GO
/****** Object:  Check [CK_Folder_CreatedModified]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_CreatedModified]

END
GO
/****** Object:  Check [CK_Folder_Name]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_Name]

END
GO
/****** Object:  Check [CK_Application_CreatedModified]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [CK_Application_CreatedModified]

END
GO
/****** Object:  Check [CK_Application_Title]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [CK_Application_Title]

END
GO
/****** Object:  StoredProcedure [dbo].[CreatePendingConversionJob]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreatePendingConversionJob]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CreatePendingConversionJob]
GO
/****** Object:  StoredProcedure [dbo].[AddPendingFileConversion]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddPendingFileConversion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddPendingFileConversion]
GO
/****** Object:  StoredProcedure [dbo].[CancelConversionJob]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CancelConversionJob]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CancelConversionJob]
GO
/****** Object:  StoredProcedure [dbo].[StartNextPendingFileConversion]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StartNextPendingFileConversion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[StartNextPendingFileConversion]
GO
/****** Object:  StoredProcedure [dbo].[UpdateConversionJobStatus]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateConversionJobStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateConversionJobStatus]
GO
/****** Object:  View [dbo].[View_ApplicationConversionJobLogListing]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ApplicationConversionJobLogListing]'))
DROP VIEW [dbo].[View_ApplicationConversionJobLogListing]
GO
/****** Object:  View [dbo].[View_ApplicationListing]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ApplicationListing]'))
DROP VIEW [dbo].[View_ApplicationListing]
GO
/****** Object:  View [dbo].[View_FileConversionChangeDetails]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_FileConversionChangeDetails]'))
DROP VIEW [dbo].[View_FileConversionChangeDetails]
GO
/****** Object:  View [dbo].[View_SourceFileConversionLogListing]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SourceFileConversionLogListing]'))
DROP VIEW [dbo].[View_SourceFileConversionLogListing]
GO
/****** Object:  View [dbo].[View_SystemConversionJobLogListing]    Script Date: 06/09/2015 04:32:28 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SystemConversionJobLogListing]'))
DROP VIEW [dbo].[View_SystemConversionJobLogListing]
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentUserIdentityCache]    Script Date: 06/09/2015 04:32:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCurrentUserIdentityCache]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCurrentUserIdentityCache]
GO
/****** Object:  StoredProcedure [dbo].[EnsureCurrentUserIdentityCache]    Script Date: 06/09/2015 04:32:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnsureCurrentUserIdentityCache]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EnsureCurrentUserIdentityCache]
GO
/****** Object:  View [dbo].[View_SystemConvertedImageListing]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SystemConvertedImageListing]'))
DROP VIEW [dbo].[View_SystemConvertedImageListing]
GO
/****** Object:  View [dbo].[View_JobFileConversionLogListing]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_JobFileConversionLogListing]'))
DROP VIEW [dbo].[View_JobFileConversionLogListing]
GO
/****** Object:  View [dbo].[View_ApplicationConvertedImageListing]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ApplicationConvertedImageListing]'))
DROP VIEW [dbo].[View_ApplicationConvertedImageListing]
GO
/****** Object:  View [dbo].[View_FolderListing]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_FolderListing]'))
DROP VIEW [dbo].[View_FolderListing]
GO
/****** Object:  View [dbo].[View_SourceConvertedImageListing]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SourceConvertedImageListing]'))
DROP VIEW [dbo].[View_SourceConvertedImageListing]
GO
/****** Object:  View [dbo].[View_SourceImageListing]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SourceImageListing]'))
DROP VIEW [dbo].[View_SourceImageListing]
GO
/****** Object:  Table [dbo].[FileConversionLog]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionLog_ConvertedImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_ConversionLog_ConvertedImage]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ConversionJobLog]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_ConversionJobLog]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_ImageFormatCodes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_JobStatusCodes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [FK_FileConversionLog_SourceImage]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Job]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_Job]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_SourceImage]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_StartedTerminated]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] DROP CONSTRAINT [CK_FileConversionLog_Tag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileConversionLog]') AND type in (N'U'))
DROP TABLE [dbo].[FileConversionLog]
GO
/****** Object:  UserDefinedFunction [dbo].[IsOfSourceImage]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsOfSourceImage]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsOfSourceImage]
GO
/****** Object:  Table [dbo].[ConvertedImage]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_CreatedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_ImageFormatCodes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_ModifiedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [FK_ConvertedImage_SourceImage]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_CreatedModified]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Format]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Format]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Height]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_ModifiedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Tag]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [CK_ConvertedImage_Width]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ConversionCache_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [DF_ConversionCache_Id]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ConversionCache_MetaData]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConvertedImage] DROP CONSTRAINT [DF_ConversionCache_MetaData]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConvertedImage]') AND type in (N'U'))
DROP TABLE [dbo].[ConvertedImage]
GO
/****** Object:  UserDefinedFunction [dbo].[IsValidFileConversionStatus]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsValidFileConversionStatus]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsValidFileConversionStatus]
GO
/****** Object:  Table [dbo].[ConversionJobLog]    Script Date: 06/09/2015 04:32:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_Application]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_CreatedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobReasonCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_JobReasonCodes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_JobStatusCodes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_StartedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [FK_ConversionJobLog_TerminatedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_CreatedStarted]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_CreatedStarted]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_StartedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_StartedTerminated]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] DROP CONSTRAINT [CK_ConversionJobLog_TerminatedBy]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]') AND type in (N'U'))
DROP TABLE [dbo].[ConversionJobLog]
GO
/****** Object:  Table [dbo].[JobStatusCodes]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobStatusCodes]') AND type in (N'U'))
DROP TABLE [dbo].[JobStatusCodes]
GO
/****** Object:  Table [dbo].[JobReasonCodes]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobReasonCodes]') AND type in (N'U'))
DROP TABLE [dbo].[JobReasonCodes]
GO
/****** Object:  UserDefinedFunction [dbo].[CanUseModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CanUseModifiedBy]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[CanUseModifiedBy]
GO
/****** Object:  UserDefinedFunction [dbo].[CurrentUserIsAdmin]    Script Date: 06/09/2015 04:32:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CurrentUserIsAdmin]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[CurrentUserIsAdmin]
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Application]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_CreatedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_ModifiedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Parent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Parent]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Ancestor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_Ancestor]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_Application]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_CreatedModified]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [CK_Folder_Name]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Folder_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [DF_Folder_Id]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Folder_MetaData]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [DF_Folder_MetaData]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Folder]') AND type in (N'U'))
DROP TABLE [dbo].[Folder]
GO
/****** Object:  UserDefinedFunction [dbo].[IsDescendentOf]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsDescendentOf]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsDescendentOf]
GO
/****** Object:  Table [dbo].[SourceImage]    Script Date: 06/09/2015 04:32:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Application]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_CreatedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_Folder]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_ImageFormatCodes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [FK_SourceImage_ModifiedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Application]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_CreatedModified]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_FormatId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_FormatId]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Height]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Name]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [CK_SourceImage_Width]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Photo_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [DF_Photo_Id]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_SourceImage_MetaData]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SourceImage] DROP CONSTRAINT [DF_SourceImage_MetaData]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SourceImage]') AND type in (N'U'))
DROP TABLE [dbo].[SourceImage]
GO
/****** Object:  UserDefinedFunction [dbo].[IsInApplication]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsInApplication]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsInApplication]
GO
/****** Object:  UserDefinedFunction [dbo].[IsChildNameValid]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsChildNameValid]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsChildNameValid]
GO
/****** Object:  Table [dbo].[ImageFormatCodes]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImageFormatCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ImageFormatCodes]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 06/09/2015 04:32:19 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_CreatedBy]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [FK_Application_ModifiedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [CK_Application_CreatedModified]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [CK_Application_Title]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Application_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Application] DROP CONSTRAINT [DF_Application_Id]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Application]') AND type in (N'U'))
DROP TABLE [dbo].[Application]
GO
/****** Object:  Table [dbo].[IdentityCache]    Script Date: 06/09/2015 04:32:16 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_CreatedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_CreatedModified]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedVerified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_CreatedVerified]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_EmailAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_EmailAddress]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_LoginName]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_LoginName]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_ModifiedBy]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_SID]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [CK_IdentityCache_SID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_IdentityCache_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[IdentityCache] DROP CONSTRAINT [DF_IdentityCache_Id]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdentityCache]') AND type in (N'U'))
DROP TABLE [dbo].[IdentityCache]
GO
/****** Object:  Role [SiteAuditor]    Script Date: 06/09/2015 04:32:13 ******/
DECLARE @RoleName sysname
set @RoleName = N'SiteAuditor'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
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
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'SiteAuditor' AND type = 'R')
DROP ROLE [SiteAuditor]
GO
/****** Object:  Role [SiteContributor]    Script Date: 06/09/2015 04:32:13 ******/
DECLARE @RoleName sysname
set @RoleName = N'SiteContributor'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
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
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'SiteContributor' AND type = 'R')
DROP ROLE [SiteContributor]
GO
/****** Object:  Role [SiteAdmin]    Script Date: 06/09/2015 04:32:13 ******/
DECLARE @RoleName sysname
set @RoleName = N'SiteAdmin'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
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
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'SiteAdmin' AND type = 'R')
DROP ROLE [SiteAdmin]
GO
/****** Object:  Role [SiteAuditor]    Script Date: 06/09/2015 04:32:13 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'SiteAuditor' AND type = 'R')
CREATE ROLE [SiteAuditor] AUTHORIZATION [dbo]
GO
/****** Object:  Role [SiteContributor]    Script Date: 06/09/2015 04:32:13 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'SiteContributor' AND type = 'R')
CREATE ROLE [SiteContributor] AUTHORIZATION [dbo]
GO
/****** Object:  Role [SiteAdmin]    Script Date: 06/09/2015 04:32:13 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'SiteAdmin' AND type = 'R')
CREATE ROLE [SiteAdmin] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[IdentityCache]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdentityCache]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'SID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Security Identifier associated with a specific login account or security group. This field may only be populated when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'SID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'LoginName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last known login string.  This field may only be populated when the record is created; otherwise, it cannot be modified.

Do not use this value as a persistent unique identifier. It is only guaranteed to be unique while the associated login account exists. Once a login account is deleted, the login name may be re-used. The ObjectGuid and SID should always remain unique.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'LoginName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'DisplayName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Display name to be associated with the login account or security group. Initially, it will be the same as the login name, unless otherwise specified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'DisplayName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'EmailAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address to be associated with the login account or security group. Initially, this will be null, unless otherwise specified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. This field may only be populated when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'CreatedByLoginName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Login name of user account which created this record. This field may only be populated when the record is created; otherwise, it cannot be modified.

Do not use this value as a persistent unique identifier or in query relationships where you wish to form an association to a specific login account. Use CreatedBySID for that purpose, instead.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'CreatedByLoginName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'CreatedBySID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Security Identifier of user account which created this record. This field may only be populated when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'CreatedBySID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'VerifiedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field can be used to track when the display name and email address were last verified against the authentication source (typically, Windows Active Directory)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'VerifiedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'ModifiedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'ModifiedByLoginName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Login name of user account which last modified this record.

Do not use this value as a persistent unique identifier or in query relationships where you wish to form an association to a specific login account. Use ModifiedBySID for that purpose, instead.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'ModifiedByLoginName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'COLUMN',N'ModifiedBySID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Security Identifier of user account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'COLUMN',@level2name=N'ModifiedBySID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table serves as a cache of information related to individual authenticated user account. The modification of certain fields are restricted. See individual column descriptions for more informaiton.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache'
GO
/****** Object:  Table [dbo].[Application]    Script Date: 06/09/2015 04:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Application]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Application](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Application_Id]  DEFAULT (newid()),
	[Title] [nvarchar](255) NOT NULL,
	[Description] [text] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', N'COLUMN',N'CreatedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which created this record. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', N'COLUMN',N'ModifiedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', N'COLUMN',N'ModifiedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains photo application definitions.

An "Application" is defined as a means of grouping stored images according to their specific purpose or intended usage (ie. what they "apply to").' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application'
GO
/****** Object:  Table [dbo].[ImageFormatCodes]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImageFormatCodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ImageFormatCodes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ImageTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ImageFormatCodes]') AND name = N'IX_ImageFormatCodes')
CREATE UNIQUE NONCLUSTERED INDEX [IX_ImageFormatCodes] ON [dbo].[ImageFormatCodes] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (0, N'Jpeg', N'Joint Photographic Experts Group (JPEG) image format.')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (1, N'Png', N'W3C Portable Network Graphics (PNG) image format.')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (2, N'Gif', N'Graphics Interchange Format (GIF) image format.')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (3, N'Icon', N'Windows icon image format')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (4, N'Tiff', N'Tagged Image File Format (TIFF) image format.')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (5, N'Bmp', N'Bitmap (BMP) image format.')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (6, N'Wmf', N'Windows metafile (WMF) image format.')
INSERT [dbo].[ImageFormatCodes] ([Id], [Name], [Title]) VALUES (7, N'Emf', N'Enhanced metafile (EMF) image format.')
/****** Object:  UserDefinedFunction [dbo].[IsChildNameValid]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsChildNameValid]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Determines whether the current user can use a unique identifier in a ModifiedById field.
-- =============================================
CREATE FUNCTION [dbo].[IsChildNameValid]
(
	@ItemId UniqueIdentifier,
	@ParentId UniqueIdentifier,
	@ApplicationId UniqueIdentifier,
	@Name NVarChar(1024)
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;
	
	IF @Name IS NULL OR LEN(RTRIM(@Name)) = 0 OR CHARINDEX(''/'', @Name) = 0 OR CHARINDEX(''\'', @Name) = 0 BEGIN
		SET @ResultVar = 0;
		RETURN @ResultVar;
	END
	
	IF @ParentId IS NULL BEGIN
		IF EXISTS(SELECT * FROM Folder WHERE (ApplicationId = @ApplicationId) AND (ParentId IS NULL) AND (Id <> @ItemId) AND
				(LOWER(LTRIM(RTRIM(@Name))) = LOWER(LTRIM(RTRIM(Name))))) OR
				EXISTS(SELECT * FROM SourceImage WHERE (ApplicationId = @ApplicationId) AND (ParentId IS NULL) AND (Id <> @ItemId) AND
				(LOWER(LTRIM(RTRIM(@Name))) = LOWER(LTRIM(RTRIM(Name))))) BEGIN
			SET @ResultVar = 0;
		END
		ELSE BEGIN
			SET @ResultVar = 1;
		END
	END
	ELSE BEGIN
		IF EXISTS(SELECT * FROM Folder WHERE (ParentId IS NOT NULL) AND (ParentId = @ItemId) AND (Id <> @ItemId) AND
				(LOWER(LTRIM(RTRIM(@Name))) = LOWER(LTRIM(RTRIM(Name))))) OR
				EXISTS(SELECT * FROM SourceImage WHERE (ParentId IS NOT NULL) AND (ParentId = @ItemId) AND (Id <> @ItemId) AND
				(LOWER(LTRIM(RTRIM(@Name))) = LOWER(LTRIM(RTRIM(Name))))) BEGIN
			SET @ResultVar = 0;
		END
		ELSE BEGIN
			SET @ResultVar = 1;
		END
	END
	
	RETURN @ResultVar;
END
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[IsInApplication]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsInApplication]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Determines whether a child folder belongs to an application.
-- =============================================
CREATE FUNCTION [dbo].[IsInApplication]
(
	@FolderId UniqueIdentifier,
	@ApplicationId UniqueIdentifier
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;

	IF EXISTS(SELECT * FROM Folder WHERE Id = @FolderId AND ApplicationId = @ApplicationId) BEGIN
		SET @ResultVar = 1;
	END
	ELSE BEGIN
		SET @ResultVar = 0;
	END

	RETURN @ResultVar;
END
' 
END
GO
/****** Object:  Table [dbo].[SourceImage]    Script Date: 06/09/2015 04:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SourceImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SourceImage](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Photo_Id]  DEFAULT (newid()),
	[DisplayText] [nvarchar](1024) NOT NULL,
	[Name] [nvarchar](1024) NOT NULL,
	[Description] [text] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Data] [image] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[FormatId] [int] NOT NULL,
	[MetaData] [xml] NOT NULL CONSTRAINT [DF_SourceImage_MetaData]  DEFAULT ('<MetaData />'),
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SourceImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SourceImage]') AND name = N'IX_SourceImageApplication')
CREATE NONCLUSTERED INDEX [IX_SourceImageApplication] ON [dbo].[SourceImage] 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SourceImage]') AND name = N'IX_SourceImageParent')
CREATE NONCLUSTERED INDEX [IX_SourceImageParent] ON [dbo].[SourceImage] 
(
	[ParentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'DisplayText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-friendly name of source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'DisplayText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of source image, which is to be unique among other source images and folders within its parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-provided description of the source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'ParentId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of source image''s parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'ApplicationId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of source image''s application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'Data'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column contains the actual binary image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Data'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Width'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'Height'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'FormatId'))
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
9 = Windows metafile (WMF) image format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'FormatId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'MetaData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meta-data associated with source image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'MetaData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'CreatedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which created this record. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'ModifiedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'COLUMN',N'ModifiedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record which contains the binary source image data, and related information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage'
GO
/****** Object:  Trigger [trig_UpdateSourceImage]    Script Date: 06/09/2015 04:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_UpdateSourceImage]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_UpdateSourceImage]
   ON  [dbo].[SourceImage]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
		RAISERROR(''Created date cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedById <> deleted.CreatedById) BEGIN
		RAISERROR(''Created by cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.ApplicationId <> deleted.ApplicationId) BEGIN
		RAISERROR(''Application Id by cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE ((inserted.ParentId IS NULL) AND (deleted.ParentId IS NOT NULL)) OR
			((inserted.ParentId IS NOT NULL) AND ((deleted.ParentId IS NULL) OR (deleted.ParentId <> deleted.ParentId)))) BEGIN
		RAISERROR(''Parent Id cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  Trigger [trig_AddSourceImage]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_AddSourceImage]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddSourceImage]
   ON  [dbo].[SourceImage]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedById <> inserted.ModifiedById) BEGIN
		RAISERROR(''Created by must be same as modified by'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn <> inserted.ModifiedOn) BEGIN
		RAISERROR(''Created on must be same as modified on'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  UserDefinedFunction [dbo].[IsDescendentOf]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsDescendentOf]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 06/09/2015 04:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Folder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Folder](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_Folder_Id]  DEFAULT (newid()),
	[DisplayText] [nvarchar](1024) NOT NULL,
	[Name] [nvarchar](1024) NOT NULL,
	[Description] [text] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[MetaData] [xml] NOT NULL CONSTRAINT [DF_Folder_MetaData]  DEFAULT ('<MetaData />'),
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Folder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Folder]') AND name = N'IX_FolderApplication')
CREATE NONCLUSTERED INDEX [IX_FolderApplication] ON [dbo].[Folder] 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Folder]') AND name = N'IX_FolderParent')
CREATE NONCLUSTERED INDEX [IX_FolderParent] ON [dbo].[Folder] 
(
	[ParentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'DisplayText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-friendly name of folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'DisplayText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of folder, which is to be unique among other folders and source images within its parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User-specified description of the folder and/or its contents.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'ParentId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of the parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'ApplicationId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of folder''s application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'MetaData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meta-data associated with folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'MetaData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was created. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'CreatedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which created this record. The can only be specified when the record is created; otherwise, it cannot be modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'CreatedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'ModifiedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'COLUMN',N'ModifiedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provides a hierarchical folder structure for logically separating source images, similar to a disk file system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder'
GO
/****** Object:  Trigger [trig_UpdateFolder]    Script Date: 06/09/2015 04:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_UpdateFolder]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_UpdateFolder]
   ON  [dbo].[Folder]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
		RAISERROR(''Created date cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedById <> deleted.CreatedById) BEGIN
		RAISERROR(''Created by cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.ApplicationId <> deleted.ApplicationId) BEGIN
		RAISERROR(''Application Id by cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE ((inserted.ParentId IS NULL) AND (deleted.ParentId IS NOT NULL)) OR
			((inserted.ParentId IS NOT NULL) AND ((deleted.ParentId IS NULL) OR (deleted.ParentId <> deleted.ParentId)))) BEGIN
		RAISERROR(''Parent Id cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  Trigger [trig_AddFolder]    Script Date: 06/09/2015 04:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_AddFolder]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddFolder]
   ON  [dbo].[Folder]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedById <> inserted.ModifiedById) BEGIN
		RAISERROR(''Created by must be same as modified by'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn <> inserted.ModifiedOn) BEGIN
		RAISERROR(''Created on must be same as modified on'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  UserDefinedFunction [dbo].[CurrentUserIsAdmin]    Script Date: 06/09/2015 04:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CurrentUserIsAdmin]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Determines whether the current user is in a recognized admin role.
-- =============================================
CREATE FUNCTION [dbo].[CurrentUserIsAdmin]
(
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;

	IF IS_SRVROLEMEMBER(''sysadmin'') = 1 OR IS_MEMBER(''dbo'') = 1 OR IS_MEMBER(''SiteAdmin'') = 1 BEGIN
		SET @ResultVar = 1;
	END
	ELSE BEGIN
		SET @ResultVar = 0;
	END
	
	RETURN @ResultVar;
END
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[CanUseModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CanUseModifiedBy]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Determines whether the current user can use a unique identifier in a ModifiedById field.
-- =============================================
CREATE FUNCTION [dbo].[CanUseModifiedBy]
(
	@ModifiedById UniqueIdentifier
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;
	
	IF EXISTS(SELECT * FROM IdentityCache WHERE (Id = @ModifiedById)) AND (dbo.CurrentUserIsAdmin() = 1 OR
			EXISTS(SELECT * FROM IdentityCache WHERE ([SID] = SUSER_SID()) AND ([Id] = @ModifiedById))) BEGIN
		SET @ResultVar = 1;
	END
	ELSE BEGIN
		SET @ResultVar = 0;
	END
	
	RETURN @ResultVar;
END
' 
END
GO
/****** Object:  Table [dbo].[JobReasonCodes]    Script Date: 06/09/2015 04:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobReasonCodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JobReasonCodes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_JobReasons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[JobReasonCodes]') AND name = N'IX_JobReasonCodes')
CREATE UNIQUE NONCLUSTERED INDEX [IX_JobReasonCodes] ON [dbo].[JobReasonCodes] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'JobReasonCodes', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents enumerated list of job types.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobReasonCodes'
GO
INSERT [dbo].[JobReasonCodes] ([Id], [Name], [Title]) VALUES (0, N'NewConversionParameters', N'New image conversion parameters applied.')
INSERT [dbo].[JobReasonCodes] ([Id], [Name], [Title]) VALUES (1, N'SourceImageChanged', N'Source image changed.')
INSERT [dbo].[JobReasonCodes] ([Id], [Name], [Title]) VALUES (2, N'DatabaseRefresh', N'Database Refresh / Repair.')
/****** Object:  Table [dbo].[JobStatusCodes]    Script Date: 06/09/2015 04:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobStatusCodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JobStatusCodes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_JobStatusCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[JobStatusCodes]') AND name = N'IX_JobStatusCodes')
CREATE UNIQUE NONCLUSTERED INDEX [IX_JobStatusCodes] ON [dbo].[JobStatusCodes] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConversionJobLog]    Script Date: 06/09/2015 04:32:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConversionJobLog](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[ReasonId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[StartedOn] [datetime] NULL,
	[StartedById] [uniqueidentifier] NULL,
	[TerminatedOn] [datetime] NULL,
	[TerminatedById] [uniqueidentifier] NULL,
	[StatusId] [int] NOT NULL,
	[StatusMessage] [nvarchar](1024) NOT NULL,
	[DetailMessage] [text] NOT NULL,
 CONSTRAINT [PK_ConversionJobLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConversionJobLog', N'COLUMN',N'ReasonId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason for conversion job:
0 = New image conversion parameters applied.
1 = Source image changed.
2 = Database Refresh / Repair.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJobLog', @level2type=N'COLUMN',@level2name=N'ReasonId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConversionJobLog', N'COLUMN',N'StatusId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion job status:
0 = Waiting
1 = In Progress
2 = Cancelling
3 = Canceled
4 = Success
5 = Faulted
        Faulted = 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJobLog', @level2type=N'COLUMN',@level2name=N'StatusId'
GO
/****** Object:  UserDefinedFunction [dbo].[IsValidFileConversionStatus]    Script Date: 06/09/2015 04:32:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsValidFileConversionStatus]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Determines whether the specified status id is valid for the file conversion log entry.
-- =============================================
CREATE FUNCTION [dbo].[IsValidFileConversionStatus]
(
	@JobId UniqueIdentifier,
	@StatusId int,
	@StartedOn DateTime,
	@TerminatedOn DateTime
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;
	
	IF @StatusId = 0 BEGIN -- Waiting
		IF @StartedOn IS NULL AND @TerminatedOn IS NULL AND EXISTS(SELECT * FROM ConversionJobLog WHERE (Id = @JobId) AND (StatusId < 2)) BEGIN
			SET @ResultVar = 1;
		END
		ELSE BEGIN
			SET @ResultVar = 0;
		END
		
		RETURN @ResultVar;
	END
	
	IF @StatusId = 1 BEGIN -- InProgress
		IF @StartedOn IS NOT NULL AND @TerminatedOn IS NULL AND EXISTS(SELECT * FROM ConversionJobLog WHERE (Id = @JobId) AND (StatusId = 1) AND
				(StartedOn <= @StartedOn)) BEGIN
			SET @ResultVar = 1;
		END
		ELSE BEGIN
			SET @ResultVar = 0;
		END
		
		RETURN @ResultVar;
	END

	IF @StatusId = 2 BEGIN -- Cancelling
		IF @StartedOn IS NOT NULL AND @TerminatedOn IS NULL AND EXISTS(SELECT * FROM ConversionJobLog WHERE (Id = @JobId) AND
				((StatusId = 1) OR (StatusId = 2)) AND (StartedOn <= @StartedOn)) BEGIN
			SET @ResultVar = 1;
		END
		ELSE BEGIN
			SET @ResultVar = 0;
		END
		
		RETURN @ResultVar;
	END
	
	IF @StartedOn IS NOT NULL AND @TerminatedOn IS NOT NULL AND EXISTS(SELECT * FROM ConversionJobLog WHERE (Id = @JobId) AND (StatusId > 0) AND
			(StartedOn <= @StartedOn) AND (TerminatedOn >= @TerminatedOn)) BEGIN
		SET @ResultVar = 1;
	END
	ELSE BEGIN
		SET @ResultVar = 0;
	END
	
	RETURN @ResultVar;
END
' 
END
GO
/****** Object:  Table [dbo].[ConvertedImage]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConvertedImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConvertedImage](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_ConversionCache_Id]  DEFAULT (newid()),
	[SourceImageId] [uniqueidentifier] NOT NULL,
	[Tag] [nvarchar](255) NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[FormatId] [int] NOT NULL,
	[Data] [image] NOT NULL,
	[MetaData] [xml] NOT NULL CONSTRAINT [DF_ConversionCache_MetaData]  DEFAULT ('<MetaData />'),
	[CreatedOn] [datetime] NOT NULL,
	[CreatedById] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedById] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ConvertedImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ConvertedImage]') AND name = N'IX_ConvertedImageSourceImage')
CREATE NONCLUSTERED INDEX [IX_ConvertedImageSourceImage] ON [dbo].[ConvertedImage] 
(
	[SourceImageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'SourceImageId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of source image from which this conversion was made.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'SourceImageId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'Width'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'Height'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'FormatId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the image data format as follows:
0 = Joint Photographic Experts Group (JPEG) image format.
1 = W3C Portable Network Graphics (PNG) image format.
2 = Graphics Interchange Format (GIF) image format.
3 = Windows icon image format.
4 = Tagged Image File Format (TIFF) image format.
5 = Bitmap (BMP) image format.
6 = Windows metafile (WMF) image format.
7 = Enhanced metafile (EMF) image format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'FormatId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'Data'))
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
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'MetaData'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Meta-data associated with converted image.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'MetaData'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'CreatedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when source image was converted.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'CreatedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'ModifiedOn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time when this record was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'ModifiedOn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'COLUMN',N'ModifiedById'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier of credential cache record associated with login account which last modified this record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'COLUMN',@level2name=N'ModifiedById'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains data relating to images that have been converted from the source image, including format and dimension conversions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage'
GO
/****** Object:  UserDefinedFunction [dbo].[IsOfSourceImage]    Script Date: 06/09/2015 04:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsOfSourceImage]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Determines whether a converted image derrives from a source image.
-- =============================================
CREATE FUNCTION [dbo].[IsOfSourceImage]
(
	@ConvertedImageId UniqueIdentifier,
	@SourceImageId UniqueIdentifier
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar bit;

	IF EXISTS(SELECT * FROM ConvertedImage WHERE (Id = @ConvertedImageId) AND (SourceImageId = @SourceImageId)) BEGIN
		SET @ResultVar = 1;
	END
	ELSE BEGIN
		SET @ResultVar = 0;
	END

	RETURN @ResultVar;
END
' 
END
GO
/****** Object:  Table [dbo].[FileConversionLog]    Script Date: 06/09/2015 04:32:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FileConversionLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FileConversionLog](
	[Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[JobId] [uniqueidentifier] NOT NULL,
	[StartedOn] [datetime] NULL,
	[TerminatedOn] [datetime] NULL,
	[SourceImageId] [uniqueidentifier] NOT NULL,
	[Tag] [nvarchar](255) NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[FormatId] [int] NOT NULL,
	[ConvertedImageId] [uniqueidentifier] NULL,
	[StatusId] [int] NOT NULL,
	[StatusMessage] [nvarchar](1024) NOT NULL,
	[DetailMessage] [text] NOT NULL,
 CONSTRAINT [PK_ConversionLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'COLUMN',N'Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'COLUMN',@level2name=N'Width'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'COLUMN',N'Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height, in pixels, of the image data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'COLUMN',@level2name=N'Height'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'COLUMN',N'FormatId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represents the image data format as follows:
0 = Joint Photographic Experts Group (JPEG) image format.
1 = W3C Portable Network Graphics (PNG) image format.
2 = Graphics Interchange Format (GIF) image format.
3 = Windows icon image format.
4 = Tagged Image File Format (TIFF) image format.
5 = Bitmap (BMP) image format.
6 = Windows metafile (WMF) image format.
7 = Enhanced metafile (EMF) image format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'COLUMN',@level2name=N'FormatId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Log entries for completed conversions' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog'
GO
/****** Object:  Trigger [trig_AddFileConversionLog]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_AddFileConversionLog]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddFileConversionLog]
   ON  [dbo].[FileConversionLog]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted WHERE inserted.StartedOn IS NOT NULL AND inserted.TerminatedOn IS NOT NULL AND inserted.TerminatedOn <> inserted.StartedOn) BEGIN
		RAISERROR(''Terminated on must be same as started on'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  View [dbo].[View_SourceImageListing]    Script Date: 06/09/2015 04:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SourceImageListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_SourceImageListing]
AS
SELECT     dbo.SourceImage.Id, dbo.SourceImage.DisplayText, dbo.SourceImage.Name, dbo.SourceImage.ParentId, dbo.SourceImage.ApplicationId, DATALENGTH(dbo.SourceImage.Data) AS Length, 
                      dbo.SourceImage.Width, dbo.SourceImage.Height, dbo.SourceImage.FormatId, dbo.ImageFormatCodes.Name AS ImageFormatName, dbo.ImageFormatCodes.Title AS ImageFormatTitle, 
                      dbo.SourceImage.CreatedOn, dbo.SourceImage.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, CreatedBy.DisplayName AS CreatedByDisplayName, dbo.SourceImage.ModifiedOn, 
                      dbo.SourceImage.ModifiedById, ModifiedBy.LoginName AS ModifiedByLoginName, ModifiedBy.DisplayName AS ModifiedByDisplayName, COUNT(AllFileConversion.Id) 
                      AS TotalFileConversionCount, COUNT(ActiveFileConversions.Id) AS ActiveFileConversionCount
FROM         dbo.SourceImage LEFT OUTER JOIN
                      dbo.FileConversionLog AS ActiveFileConversions ON dbo.SourceImage.Id = ActiveFileConversions.SourceImageId AND ActiveFileConversions.StatusId < 3 LEFT OUTER JOIN
                      dbo.ImageFormatCodes ON dbo.SourceImage.FormatId = dbo.ImageFormatCodes.Id LEFT OUTER JOIN
                      dbo.FileConversionLog AS AllFileConversion ON dbo.SourceImage.Id = AllFileConversion.SourceImageId LEFT OUTER JOIN
                      dbo.IdentityCache AS ModifiedBy ON dbo.SourceImage.ModifiedById = ModifiedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.SourceImage.CreatedById = CreatedBy.Id
GROUP BY dbo.SourceImage.Id, dbo.SourceImage.DisplayText, dbo.SourceImage.Name, dbo.SourceImage.ParentId, dbo.SourceImage.ApplicationId, DATALENGTH(dbo.SourceImage.Data), 
                      dbo.SourceImage.Width, dbo.SourceImage.Height, dbo.SourceImage.FormatId, dbo.ImageFormatCodes.Name, dbo.ImageFormatCodes.Title, dbo.SourceImage.CreatedOn, 
                      dbo.SourceImage.CreatedById, CreatedBy.LoginName, CreatedBy.DisplayName, dbo.SourceImage.ModifiedOn, dbo.SourceImage.ModifiedById, ModifiedBy.LoginName, ModifiedBy.DisplayName
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[26] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[43] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 8
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SourceImage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 327
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AllFileConversion"
            Begin Extent = 
               Top = 69
               Left = 938
               Bottom = 229
               Right = 1118
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 0
               Left = 482
               Bottom = 120
               Right = 675
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 12
               Left = 713
               Bottom = 132
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ImageFormatCodes"
            Begin Extent = 
               Top = 334
               Left = 401
               Bottom = 439
               Right = 561
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ActiveFileConversions"
            Begin Extent = 
               Top = 125
               Left = 625
               Bottom = 245
               Right = 805
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Begin ColumnWidths = 12
         Column = 1440
         Alias = 3375
         Table = 2955
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceImageListing'
GO
/****** Object:  View [dbo].[View_SourceConvertedImageListing]    Script Date: 06/09/2015 04:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SourceConvertedImageListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_SourceConvertedImageListing]
AS
SELECT     dbo.ConvertedImage.Id, dbo.ConvertedImage.SourceImageId, dbo.ConvertedImage.Tag, dbo.ConvertedImage.Width, dbo.ConvertedImage.Height, dbo.ConvertedImage.FormatId, 
                      dbo.ImageFormatCodes.Name AS ImageFormatName, dbo.ImageFormatCodes.Title AS ImageFormatTitle, DATALENGTH(dbo.ConvertedImage.Data) AS Length, dbo.ConvertedImage.CreatedOn, 
                      dbo.ConvertedImage.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, CreatedBy.DisplayName AS CreatedByDisplayName, dbo.ConvertedImage.ModifiedOn, 
                      dbo.ConvertedImage.ModifiedById, ModifiedBy.LoginName AS ModifiedByLoginName, ModifiedBy.DisplayName AS ModifiedByDisplayName
FROM         dbo.ConvertedImage LEFT OUTER JOIN
                      dbo.IdentityCache AS ModifiedBy ON dbo.ConvertedImage.ModifiedById = ModifiedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.ConvertedImage.CreatedById = CreatedBy.Id LEFT OUTER JOIN
                      dbo.ImageFormatCodes ON dbo.ConvertedImage.FormatId = dbo.ImageFormatCodes.Id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ConvertedImage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 131
               Left = 433
               Bottom = 251
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 6
               Left = 667
               Bottom = 126
               Right = 860
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ImageFormatCodes"
            Begin Extent = 
               Top = 6
               Left = 898
               Bottom = 111
               Right = 1058
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceConvertedImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceConvertedImageListing'
GO
/****** Object:  View [dbo].[View_FolderListing]    Script Date: 06/09/2015 04:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_FolderListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_FolderListing]
AS
SELECT     dbo.Folder.Id, dbo.Folder.DisplayText, dbo.Folder.Name, dbo.Folder.ParentId, dbo.Folder.ApplicationId, dbo.Folder.CreatedOn, dbo.Folder.CreatedById, 
                      CreatedBy.LoginName AS CreatedByLoginName, CreatedBy.DisplayName AS CreatedByDisplayName, dbo.Folder.ModifiedOn, dbo.Folder.ModifiedById, 
                      ModifiedBy.LoginName AS ModifiedByLoginName, ModifiedBy.DisplayName AS ModifiedByDisplayName, COUNT(ChildFolder.Id) AS ChildFolderCount, COUNT(dbo.SourceImage.Id) 
                      AS SourceImageCount
FROM         dbo.Folder LEFT OUTER JOIN
                      dbo.SourceImage ON dbo.Folder.Id = dbo.SourceImage.ParentId LEFT OUTER JOIN
                      dbo.Folder AS ChildFolder ON dbo.Folder.Id = ChildFolder.ParentId LEFT OUTER JOIN
                      dbo.IdentityCache AS ModifiedBy ON dbo.Folder.ModifiedById = ModifiedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.Folder.CreatedById = CreatedBy.Id
GROUP BY dbo.Folder.Id, dbo.Folder.DisplayText, dbo.Folder.Name, dbo.Folder.ParentId, dbo.Folder.ApplicationId, dbo.Folder.CreatedOn, dbo.Folder.CreatedById, CreatedBy.LoginName, 
                      CreatedBy.DisplayName, dbo.Folder.ModifiedOn, dbo.Folder.ModifiedById, ModifiedBy.LoginName, ModifiedBy.DisplayName
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_FolderListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[11] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[47] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 8
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Folder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 261
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 0
               Left = 319
               Bottom = 120
               Right = 512
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 33
               Left = 576
               Bottom = 153
               Right = 769
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChildFolder"
            Begin Extent = 
               Top = 166
               Left = 649
               Bottom = 286
               Right = 809
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SourceImage"
            Begin Extent = 
               Top = 17
               Left = 962
               Bottom = 250
               Right = 1122
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 2415
         Table = 1305
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FolderListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_FolderListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FolderListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_FolderListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FolderListing'
GO
/****** Object:  View [dbo].[View_ApplicationConvertedImageListing]    Script Date: 06/09/2015 04:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ApplicationConvertedImageListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ApplicationConvertedImageListing]
AS
SELECT     dbo.ConvertedImage.Id, dbo.ConvertedImage.SourceImageId, dbo.SourceImage.DisplayText AS SourceImageDisplayText, dbo.SourceImage.Name AS SourceImageName, dbo.SourceImage.ParentId, 
                      dbo.SourceImage.ApplicationId, dbo.ConvertedImage.Tag, dbo.ConvertedImage.Width, dbo.ConvertedImage.Height, dbo.ConvertedImage.FormatId, 
                      dbo.ImageFormatCodes.Name AS ImageFormatName, dbo.ImageFormatCodes.Title AS ImageFormatTitle, DATALENGTH(dbo.ConvertedImage.Data) AS Length, dbo.ConvertedImage.CreatedOn, 
                      dbo.ConvertedImage.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, CreatedBy.DisplayName AS CreatedByDisplayName, dbo.ConvertedImage.ModifiedOn, 
                      dbo.ConvertedImage.ModifiedById, ModifiedBy.LoginName AS ModifiedByLoginName, ModifiedBy.DisplayName AS ModifiedByDisplayName
FROM         dbo.ConvertedImage LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.ConvertedImage.CreatedById = CreatedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS ModifiedBy ON dbo.ConvertedImage.ModifiedById = ModifiedBy.Id LEFT OUTER JOIN
                      dbo.SourceImage ON dbo.ConvertedImage.SourceImageId = dbo.SourceImage.Id LEFT OUTER JOIN
                      dbo.ImageFormatCodes ON dbo.ConvertedImage.FormatId = dbo.ImageFormatCodes.Id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ConvertedImage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SourceImage"
            Begin Extent = 
               Top = 156
               Left = 208
               Bottom = 276
               Right = 368
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 99
               Left = 526
               Bottom = 219
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 0
               Left = 730
               Bottom = 120
               Right = 923
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ImageFormatCodes"
            Begin Extent = 
               Top = 6
               Left = 1096
               Bottom = 111
               Right = 1256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         O' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationConvertedImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'r = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationConvertedImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationConvertedImageListing'
GO
/****** Object:  View [dbo].[View_JobFileConversionLogListing]    Script Date: 06/09/2015 04:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_JobFileConversionLogListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_JobFileConversionLogListing]
AS
SELECT     dbo.FileConversionLog.Id, dbo.FileConversionLog.JobId, dbo.FileConversionLog.StartedOn, dbo.FileConversionLog.TerminatedOn, dbo.FileConversionLog.SourceImageId, 
                      dbo.FileConversionLog.Tag, dbo.FileConversionLog.Width AS FileConversionWidth, dbo.FileConversionLog.Height AS FileConversionHeight, 
                      dbo.FileConversionLog.FormatId AS FileConversionFormatId, FileConversionFormat.Name AS FileConversionFormatName, FileConversionFormat.Title AS FileConversionFormatTitle, 
                      dbo.FileConversionLog.ConvertedImageId, dbo.FileConversionLog.StatusId AS ConversionStatusId, ConversionStatus.Name AS ConversionStatusName, 
                      ConversionStatus.Title AS ConversionStatusTitle, dbo.FileConversionLog.StatusMessage AS FileConversionStatusMessage, dbo.SourceImage.DisplayText AS SourceImageDisplayText, 
                      dbo.SourceImage.Name AS SourceImageName, dbo.SourceImage.ParentId, dbo.SourceImage.ApplicationId, DATALENGTH(dbo.SourceImage.Data) AS SourceLength, 
                      dbo.SourceImage.Width AS SourceImageWidth, dbo.SourceImage.Height AS SourceImageHeight, dbo.SourceImage.FormatId AS SourceImageFormatId, 
                      SourceImageFormat.Name AS SourceImageFormatName, SourceImageFormat.Title AS SourceImageFormatTitle, dbo.SourceImage.CreatedOn AS SourceImageCreatedOn, 
                      dbo.SourceImage.CreatedById AS SourceImageCreatedById, CreatedBy.LoginName AS SourceImageCreatedByLoginName, CreatedBy.DisplayName AS SourceImageCreatedByDisplayName, 
                      dbo.SourceImage.ModifiedOn AS SourceImageModifiedOn, dbo.SourceImage.ModifiedById AS SourceImageModifiedById, ModifiedBy.LoginName AS SourceImageModifiedByLoginName, 
                      ModifiedBy.DisplayName AS SourceImageModifiedByDisplayName
FROM         dbo.IdentityCache AS ModifiedBy RIGHT OUTER JOIN
                      dbo.SourceImage ON ModifiedBy.Id = dbo.SourceImage.ModifiedById LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.SourceImage.CreatedById = CreatedBy.Id LEFT OUTER JOIN
                      dbo.ImageFormatCodes AS SourceImageFormat ON dbo.SourceImage.FormatId = SourceImageFormat.Id RIGHT OUTER JOIN
                      dbo.FileConversionLog ON dbo.SourceImage.Id = dbo.FileConversionLog.SourceImageId LEFT OUTER JOIN
                      dbo.JobStatusCodes AS ConversionStatus ON dbo.FileConversionLog.StatusId = ConversionStatus.Id LEFT OUTER JOIN
                      dbo.ImageFormatCodes AS FileConversionFormat ON dbo.FileConversionLog.FormatId = FileConversionFormat.Id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_JobFileConversionLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[42] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 9
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FileConversionLog"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "FileConversionFormat"
            Begin Extent = 
               Top = 193
               Left = 270
               Bottom = 298
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ConversionStatus"
            Begin Extent = 
               Top = 6
               Left = 326
               Bottom = 111
               Right = 486
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SourceImage"
            Begin Extent = 
               Top = 6
               Left = 652
               Bottom = 216
               Right = 812
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 0
               Left = 898
               Bottom = 120
               Right = 1091
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 113
               Left = 1103
               Bottom = 233
               Right = 1296
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SourceImageFormat"
            Begin Extent = 
               Top = 121
               Left = 445
               Bottom = 226
               Right = 60' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_JobFileConversionLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_JobFileConversionLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'5
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2775
         Table = 4200
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_JobFileConversionLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_JobFileConversionLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_JobFileConversionLogListing'
GO
/****** Object:  View [dbo].[View_SystemConvertedImageListing]    Script Date: 06/09/2015 04:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SystemConvertedImageListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_SystemConvertedImageListing]
AS
SELECT     dbo.ConvertedImage.Id, dbo.ConvertedImage.SourceImageId, dbo.SourceImage.DisplayText AS SourceImageDisplayText, dbo.SourceImage.Name AS SourceImageName, dbo.SourceImage.ParentId, 
                      dbo.SourceImage.ApplicationId, dbo.Application.Title AS ApplicationTitle, dbo.ConvertedImage.Tag, dbo.ConvertedImage.Width, dbo.ConvertedImage.Height, dbo.ConvertedImage.FormatId, 
                      dbo.ImageFormatCodes.Name AS ImageFormatName, dbo.ImageFormatCodes.Title AS ImageFormatTitle, DATALENGTH(dbo.ConvertedImage.Data) AS Length, dbo.ConvertedImage.CreatedOn, 
                      dbo.ConvertedImage.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, CreatedBy.DisplayName AS CreatedByDisplayName, dbo.ConvertedImage.ModifiedOn, 
                      dbo.ConvertedImage.ModifiedById, ModifiedBy.LoginName AS ModifiedByLoginName, ModifiedBy.DisplayName AS ModifiedByDisplayName
FROM         dbo.ConvertedImage LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.ConvertedImage.CreatedById = CreatedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS ModifiedBy ON dbo.ConvertedImage.ModifiedById = ModifiedBy.Id LEFT OUTER JOIN
                      dbo.SourceImage ON dbo.ConvertedImage.SourceImageId = dbo.SourceImage.Id LEFT OUTER JOIN
                      dbo.Application ON dbo.SourceImage.ApplicationId = dbo.Application.Id LEFT OUTER JOIN
                      dbo.ImageFormatCodes ON dbo.ConvertedImage.FormatId = dbo.ImageFormatCodes.Id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SystemConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[75] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4[60] 2) )"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4) )"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 8
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SourceImage"
            Begin Extent = 
               Top = 0
               Left = 364
               Bottom = 201
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ImageFormatCodes"
            Begin Extent = 
               Top = 195
               Left = 538
               Bottom = 300
               Right = 698
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ConvertedImage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 272
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Application"
            Begin Extent = 
               Top = 166
               Left = 817
               Bottom = 286
               Right = 977
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 0
               Left = 642
               Bottom = 120
               Right = 835
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 43
               Left = 848
               Bottom = 163
               Right = 1041
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnW' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SystemConvertedImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_SystemConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idths = 11
         Column = 3990
         Alias = 2835
         Table = 3075
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SystemConvertedImageListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SystemConvertedImageListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SystemConvertedImageListing'
GO
/****** Object:  StoredProcedure [dbo].[EnsureCurrentUserIdentityCache]    Script Date: 06/09/2015 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnsureCurrentUserIdentityCache]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  Trigger [trig_AddApplication]    Script Date: 06/09/2015 04:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_AddApplication]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddApplication]
   ON  [dbo].[Application]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedById <> inserted.ModifiedById) BEGIN
		RAISERROR(''Created by must be same as modified by'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.CreatedOn <> inserted.ModifiedOn) BEGIN
		RAISERROR(''Created on must be same as modified on'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentUserIdentityCache]    Script Date: 06/09/2015 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCurrentUserIdentityCache]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  View [dbo].[View_SystemConversionJobLogListing]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SystemConversionJobLogListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_SystemConversionJobLogListing]
AS
SELECT     dbo.ConversionJobLog.Id, dbo.ConversionJobLog.ApplicationId, dbo.Application.Title AS ApplicationTitle, dbo.ConversionJobLog.ReasonId, dbo.JobReasonCodes.Name AS ReasonName, 
                      dbo.JobReasonCodes.Title AS ReasonTitle, dbo.ConversionJobLog.CreatedOn, dbo.ConversionJobLog.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, 
                      CreatedBy.DisplayName AS CreatedByDisplayName, dbo.ConversionJobLog.StartedOn, dbo.ConversionJobLog.StartedById, StartedBy.LoginName AS StartedByLoginName, 
                      StartedBy.DisplayName AS StartedByDisplayName, dbo.ConversionJobLog.TerminatedOn, dbo.ConversionJobLog.TerminatedById, TerminatedBy.LoginName AS TerminatedByLoginName, 
                      TerminatedBy.DisplayName AS TerminatedByDisplayName, dbo.ConversionJobLog.StatusId, dbo.JobStatusCodes.Name AS StatusName, dbo.JobStatusCodes.Title AS StatusTitle, 
                      dbo.ConversionJobLog.StatusMessage, COUNT(AllFileConversions.Id) AS TotalFileConversionCount, COUNT(ActiveFileConversions.Id) AS ActiveFileConversionCount
FROM         dbo.ConversionJobLog LEFT OUTER JOIN
                      dbo.FileConversionLog AS ActiveFileConversions ON dbo.ConversionJobLog.Id = ActiveFileConversions.JobId AND ActiveFileConversions.StatusId < 3 LEFT OUTER JOIN
                      dbo.JobStatusCodes ON dbo.ConversionJobLog.StatusId = dbo.JobStatusCodes.Id LEFT OUTER JOIN
                      dbo.FileConversionLog AS AllFileConversions ON dbo.ConversionJobLog.Id = AllFileConversions.JobId LEFT OUTER JOIN
                      dbo.JobReasonCodes ON dbo.ConversionJobLog.ReasonId = dbo.JobReasonCodes.Id LEFT OUTER JOIN
                      dbo.Application ON dbo.ConversionJobLog.ApplicationId = dbo.Application.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS TerminatedBy ON dbo.ConversionJobLog.TerminatedById = TerminatedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS StartedBy ON dbo.ConversionJobLog.StartedById = StartedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.ConversionJobLog.CreatedById = CreatedBy.Id
GROUP BY dbo.ConversionJobLog.Id, dbo.ConversionJobLog.ApplicationId, dbo.Application.Title, dbo.ConversionJobLog.ReasonId, dbo.JobReasonCodes.Name, dbo.JobReasonCodes.Title, 
                      dbo.ConversionJobLog.CreatedOn, dbo.ConversionJobLog.CreatedById, CreatedBy.LoginName, CreatedBy.DisplayName, dbo.ConversionJobLog.StartedOn, dbo.ConversionJobLog.StartedById, 
                      StartedBy.LoginName, StartedBy.DisplayName, dbo.ConversionJobLog.TerminatedOn, dbo.ConversionJobLog.TerminatedById, TerminatedBy.LoginName, TerminatedBy.DisplayName, 
                      dbo.ConversionJobLog.StatusId, dbo.JobStatusCodes.Name, dbo.JobStatusCodes.Title, dbo.ConversionJobLog.StatusMessage
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SystemConversionJobLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[25] 4[49] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[75] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 8
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ConversionJobLog"
            Begin Extent = 
               Top = 5
               Left = 346
               Bottom = 355
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobReasonCodes"
            Begin Extent = 
               Top = 253
               Left = 887
               Bottom = 363
               Right = 1070
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 152
               Left = 31
               Bottom = 272
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StartedBy"
            Begin Extent = 
               Top = 289
               Left = 36
               Bottom = 409
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TerminatedBy"
            Begin Extent = 
               Top = 282
               Left = 632
               Bottom = 402
               Right = 825
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobStatusCodes"
            Begin Extent = 
               Top = 428
               Left = 60
               Bottom = 533
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Application"
            Begin Extent = 
               Top = 15
               Left = 57
               Bottom = 135
               Right = 217
           ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SystemConversionJobLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_SystemConversionJobLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ActiveFileConversions"
            Begin Extent = 
               Top = 0
               Left = 876
               Bottom = 120
               Right = 1099
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AllFileConversions"
            Begin Extent = 
               Top = 126
               Left = 888
               Bottom = 246
               Right = 1081
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 3135
         Table = 1545
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SystemConversionJobLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SystemConversionJobLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SystemConversionJobLogListing'
GO
/****** Object:  View [dbo].[View_SourceFileConversionLogListing]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SourceFileConversionLogListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_SourceFileConversionLogListing]
AS
SELECT     dbo.FileConversionLog.Id, dbo.FileConversionLog.JobId, dbo.ConversionJobLog.ReasonId, dbo.JobReasonCodes.Name AS ReasonName, dbo.JobReasonCodes.Title AS ReasonTitle, 
                      dbo.FileConversionLog.StartedOn, dbo.ConversionJobLog.StartedById, StartedBy.LoginName AS StartedByLoginName, StartedBy.DisplayName AS StartedByDisplayName, 
                      dbo.FileConversionLog.TerminatedOn, dbo.FileConversionLog.SourceImageId, dbo.FileConversionLog.Tag, dbo.FileConversionLog.Width, dbo.FileConversionLog.Height, 
                      dbo.FileConversionLog.FormatId, dbo.ImageFormatCodes.Name AS ImageFormatName, dbo.ImageFormatCodes.Title AS ImageFormatTitle, dbo.FileConversionLog.ConvertedImageId, 
                      dbo.FileConversionLog.StatusId AS ConversionStatusId, ConversionStatus.Name AS ConversionStatusName, ConversionStatus.Title AS ConversionStatusTitle, 
                      dbo.FileConversionLog.StatusMessage AS FileConversionStatusMessage, dbo.ConversionJobLog.StatusId AS JobStatusId, JobStatus.Name AS JobStatusName, JobStatus.Title AS JobStatusTitle, 
                      dbo.ConversionJobLog.StatusMessage AS JobStatusMessage
FROM         dbo.FileConversionLog LEFT OUTER JOIN
                      dbo.ConversionJobLog ON dbo.FileConversionLog.JobId = dbo.ConversionJobLog.Id LEFT OUTER JOIN
                      dbo.ImageFormatCodes ON dbo.FileConversionLog.FormatId = dbo.ImageFormatCodes.Id LEFT OUTER JOIN
                      dbo.JobReasonCodes ON dbo.ConversionJobLog.ReasonId = dbo.JobReasonCodes.Id LEFT OUTER JOIN
                      dbo.JobStatusCodes AS ConversionStatus ON dbo.FileConversionLog.StatusId = ConversionStatus.Id LEFT OUTER JOIN
                      dbo.JobStatusCodes AS JobStatus ON dbo.ConversionJobLog.StatusId = JobStatus.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS StartedBy ON dbo.ConversionJobLog.StartedById = StartedBy.Id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceFileConversionLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[14] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[38] 4[36] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[40] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 12
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FileConversionLog"
            Begin Extent = 
               Top = 0
               Left = 319
               Bottom = 345
               Right = 499
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ImageFormatCodes"
            Begin Extent = 
               Top = 106
               Left = 39
               Bottom = 211
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ConversionStatus"
            Begin Extent = 
               Top = 251
               Left = 70
               Bottom = 356
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ConversionJobLog"
            Begin Extent = 
               Top = 15
               Left = 570
               Bottom = 253
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StartedBy"
            Begin Extent = 
               Top = 115
               Left = 923
               Bottom = 235
               Right = 1116
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobStatus"
            Begin Extent = 
               Top = 256
               Left = 957
               Bottom = 361
               Right = 1117
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobReasonCodes"
            Begin Extent = 
               Top = 4
               Left = 931
               Bottom = 109
               Right = 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceFileConversionLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceFileConversionLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'91
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2550
         Table = 3135
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceFileConversionLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SourceFileConversionLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SourceFileConversionLogListing'
GO
/****** Object:  View [dbo].[View_FileConversionChangeDetails]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_FileConversionChangeDetails]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_FileConversionChangeDetails]
AS
SELECT     dbo.FileConversionLog.Id, dbo.FileConversionLog.JobId, JobStatus.Name AS JobStatusName, JobStatus.Title AS JobStatusTitle, dbo.ConversionJobLog.StatusId AS ConversionJobStatusId, 
                      dbo.FileConversionLog.StartedOn AS FileConversionStartedOn, dbo.FileConversionLog.TerminatedOn AS FileConversionTerminatedOn, dbo.FileConversionLog.SourceImageId, 
                      dbo.FileConversionLog.Tag, dbo.FileConversionLog.Width, dbo.FileConversionLog.Height, dbo.FileConversionLog.FormatId, dbo.FileConversionLog.ConvertedImageId, 
                      dbo.FileConversionLog.StatusId AS FileConversionStatusId, FileConversionStatus.Name AS FileConversionStatusName, FileConversionStatus.Title AS FileConversionStatusTitle, 
                      dbo.FileConversionLog.StatusMessage AS FileConversionStatusMessage, dbo.FileConversionLog.DetailMessage AS FileConversionDetailMessage, 
                      dbo.ConversionJobLog.CreatedOn AS ConversionJobCreatedOn, dbo.ConversionJobLog.StartedOn AS ConversionJobStartedOn, 
                      dbo.ConversionJobLog.TerminatedOn AS ConversionJobTerminatedOn, dbo.ConversionJobLog.StatusMessage AS ConversionJobStatusMessage, 
                      dbo.ConversionJobLog.DetailMessage AS ConversionJobDetailMessage
FROM         dbo.ConversionJobLog RIGHT OUTER JOIN
                      dbo.JobStatusCodes AS JobStatus ON dbo.ConversionJobLog.StatusId = JobStatus.Id RIGHT OUTER JOIN
                      dbo.FileConversionLog ON dbo.ConversionJobLog.Id = dbo.FileConversionLog.JobId LEFT OUTER JOIN
                      dbo.JobStatusCodes AS FileConversionStatus ON dbo.FileConversionLog.StatusId = FileConversionStatus.Id
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_FileConversionChangeDetails', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[40] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 9
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FileConversionLog"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobStatus"
            Begin Extent = 
               Top = 97
               Left = 433
               Bottom = 202
               Right = 593
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ConversionJobLog"
            Begin Extent = 
               Top = 5
               Left = 650
               Bottom = 217
               Right = 815
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "FileConversionStatus"
            Begin Extent = 
               Top = 13
               Left = 907
               Bottom = 118
               Right = 1067
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2640
         Table = 3585
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FileConversionChangeDetails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_FileConversionChangeDetails', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FileConversionChangeDetails'
GO
/****** Object:  View [dbo].[View_ApplicationListing]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ApplicationListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ApplicationListing]
AS
SELECT     dbo.Application.Id, dbo.Application.Title, dbo.Application.CreatedOn, dbo.Application.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, 
                      CreatedBy.DisplayName AS CreatedByDisplayName, dbo.Application.ModifiedOn, dbo.Application.ModifiedById, ModifiedBy.LoginName AS ModifiedByLoginName, 
                      ModifiedBy.DisplayName AS ModifiedByDisplayName, COUNT(dbo.Folder.Id) AS TotalFolderCount, COUNT(dbo.SourceImage.Id) AS TotalSourceImageCount, COUNT(ActiveConversionJobs.Id) 
                      AS ActiveConversionJobCount, COUNT(AllConversionJobs.Id) AS TotalConversionJobCount
FROM         dbo.Application LEFT OUTER JOIN
                      dbo.ConversionJobLog AS AllConversionJobs ON dbo.Application.Id = AllConversionJobs.ApplicationId LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.Application.CreatedById = CreatedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS ModifiedBy ON dbo.Application.ModifiedById = ModifiedBy.Id LEFT OUTER JOIN
                      dbo.ConversionJobLog AS ActiveConversionJobs ON dbo.Application.Id = ActiveConversionJobs.ApplicationId AND ActiveConversionJobs.StatusId < 3 LEFT OUTER JOIN
                      dbo.Folder ON dbo.Application.Id = dbo.Folder.ApplicationId LEFT OUTER JOIN
                      dbo.SourceImage ON dbo.Application.Id = dbo.SourceImage.ApplicationId
GROUP BY dbo.Application.Id, dbo.Application.Title, dbo.Application.CreatedOn, dbo.Application.CreatedById, CreatedBy.LoginName, CreatedBy.DisplayName, dbo.Application.ModifiedOn, 
                      dbo.Application.ModifiedById, ModifiedBy.LoginName, ModifiedBy.DisplayName
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[24] 4[38] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[56] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 8
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Application"
            Begin Extent = 
               Top = 3
               Left = 311
               Bottom = 196
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Folder"
            Begin Extent = 
               Top = 195
               Left = 764
               Bottom = 355
               Right = 924
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SourceImage"
            Begin Extent = 
               Top = 198
               Left = 525
               Bottom = 318
               Right = 685
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "AllConversionJobs"
            Begin Extent = 
               Top = 147
               Left = 1052
               Bottom = 267
               Right = 1233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ActiveConversionJobs"
            Begin Extent = 
               Top = 7
               Left = 1040
               Bottom = 142
               Right = 1221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 18
               Left = 0
               Bottom = 138
               Right = 193
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ModifiedBy"
            Begin Extent = 
               Top = 167
               Left = 0
               Bottom = 287
               Right = 193
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1995
         Alias = 2325
         Table = 1005
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationListing'
GO
/****** Object:  View [dbo].[View_ApplicationConversionJobLogListing]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ApplicationConversionJobLogListing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ApplicationConversionJobLogListing]
AS
SELECT     dbo.ConversionJobLog.Id, dbo.ConversionJobLog.ApplicationId, dbo.ConversionJobLog.ReasonId, dbo.JobReasonCodes.Name AS ReasonName, dbo.JobReasonCodes.Title AS ReasonTitle, 
                      dbo.ConversionJobLog.CreatedOn, dbo.ConversionJobLog.CreatedById, CreatedBy.LoginName AS CreatedByLoginName, CreatedBy.DisplayName AS CreatedByDisplayName, 
                      dbo.ConversionJobLog.StartedOn, dbo.ConversionJobLog.StartedById, StartedBy.LoginName AS StartedByLoginName, StartedBy.DisplayName AS StartedByDisplayName, 
                      dbo.ConversionJobLog.TerminatedOn, dbo.ConversionJobLog.TerminatedById, TerminatedBy.LoginName AS TerminatedByLoginName, TerminatedBy.DisplayName AS TerminatedByDisplayName, 
                      dbo.ConversionJobLog.StatusId, dbo.JobStatusCodes.Name AS StatusName, dbo.JobStatusCodes.Title AS StatusTitle, dbo.ConversionJobLog.StatusMessage, COUNT(AllFileConversions.Id) 
                      AS TotalFileConversionCount, COUNT(ActiveFileConversions.Id) AS ActiveFileConversionCount
FROM         dbo.ConversionJobLog LEFT OUTER JOIN
                      dbo.FileConversionLog AS ActiveFileConversions ON dbo.ConversionJobLog.Id = ActiveFileConversions.JobId AND ActiveFileConversions.StatusId < 3 LEFT OUTER JOIN
                      dbo.JobStatusCodes ON dbo.ConversionJobLog.StatusId = dbo.JobStatusCodes.Id LEFT OUTER JOIN
                      dbo.FileConversionLog AS AllFileConversions ON dbo.ConversionJobLog.Id = AllFileConversions.JobId LEFT OUTER JOIN
                      dbo.JobReasonCodes ON dbo.ConversionJobLog.ReasonId = dbo.JobReasonCodes.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS TerminatedBy ON dbo.ConversionJobLog.TerminatedById = TerminatedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS StartedBy ON dbo.ConversionJobLog.StartedById = StartedBy.Id LEFT OUTER JOIN
                      dbo.IdentityCache AS CreatedBy ON dbo.ConversionJobLog.CreatedById = CreatedBy.Id
GROUP BY dbo.ConversionJobLog.Id, dbo.ConversionJobLog.ApplicationId, dbo.ConversionJobLog.ReasonId, dbo.JobReasonCodes.Name, dbo.JobReasonCodes.Title, dbo.ConversionJobLog.CreatedOn, 
                      dbo.ConversionJobLog.CreatedById, CreatedBy.LoginName, CreatedBy.DisplayName, dbo.ConversionJobLog.StartedOn, dbo.ConversionJobLog.StartedById, StartedBy.LoginName, 
                      StartedBy.DisplayName, dbo.ConversionJobLog.TerminatedOn, dbo.ConversionJobLog.TerminatedById, TerminatedBy.LoginName, TerminatedBy.DisplayName, dbo.ConversionJobLog.StatusId, 
                      dbo.JobStatusCodes.Name, dbo.JobStatusCodes.Title, dbo.ConversionJobLog.StatusMessage
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationConversionJobLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[35] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ConversionJobLog"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobStatusCodes"
            Begin Extent = 
               Top = 6
               Left = 491
               Bottom = 111
               Right = 667
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobReasonCodes"
            Begin Extent = 
               Top = 6
               Left = 939
               Bottom = 111
               Right = 1115
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TerminatedBy"
            Begin Extent = 
               Top = 114
               Left = 491
               Bottom = 234
               Right = 700
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StartedBy"
            Begin Extent = 
               Top = 114
               Left = 939
               Bottom = 234
               Right = 1148
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CreatedBy"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 246
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ActiveFileConversions"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 126
               Right = 453
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationConversionJobLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationConversionJobLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AllFileConversions"
            Begin Extent = 
               Top = 6
               Left = 705
               Bottom = 126
               Right = 901
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 2355
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationConversionJobLogListing'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ApplicationConversionJobLogListing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationConversionJobLogListing'
GO
/****** Object:  StoredProcedure [dbo].[UpdateConversionJobStatus]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateConversionJobStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Update conversion job status according to file conversion status and returns conversion job row.
-- =============================================
CREATE PROCEDURE [dbo].[UpdateConversionJobStatus]
	@JobId uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @StatusMessage nvarchar(1024);
	DECLARE @JobStatusId Int;
	DECLARE @TerminatedById UniqueIdentifier;
	DECLARE @StartedOn DateTime;
	DECLARE @TerminatedOn DateTime;

	IF @JobId IS NULL BEGIN
		RAISERROR(''Invalid JobId.'', 12, 1);
		RETURN
	END

	SELECT @JobStatusId = StatusId, @StartedOn = StartedOn FROM ConversionJobLog WHERE (Id = @JobId);

	IF @JobStatusId IS NULL BEGIN
		RAISERROR(''Conversion job not found.'', 12, 1);
		RETURN
	END
	
	IF @JobStatusId > 0 AND NOT EXISTS(SELECT * FROM FileConversionLog WHERE (JobId = @JobId) AND ((StatusId = 1) OR (StatusId = 0))) BEGIN
		IF EXISTS(SELECT * FROM FileConversionLog WHERE (JobId = @JobId) AND ((StatusId = 2))) BEGIN
			IF @JobStatusId < 2 BEGIN
				SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 2);
				IF @StartedOn IS NULL BEGIN
					UPDATE ConversionJobLog SET StartedOn = @TerminatedOn, StartedById = @TerminatedById, StatusId = 2, StatusMessage = @StatusMessage, DetailMessage = ''''
				END
				ELSE BEGIN
					UPDATE ConversionJobLog SET StatusId = 2, StatusMessage = @StatusMessage, DetailMessage = ''''
				END
			END
			ELSE BEGIN
				IF @JobStatusId = 2 BEGIN
					SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 3);
					IF @StartedOn IS NULL BEGIN
						UPDATE ConversionJobLog SET StartedOn = @TerminatedOn, StartedById = @TerminatedById, TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 3, StatusMessage = @StatusMessage, DetailMessage = ''''
					END
					ELSE BEGIN
						UPDATE ConversionJobLog SET TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 3, StatusMessage = @StatusMessage, DetailMessage = ''''
					END
				END
			END
		END
		ELSE BEGIN
			IF EXISTS(SELECT * FROM FileConversionLog WHERE (JobId = @JobId) AND ((StatusId = 5))) BEGIN
				IF @JobStatusId <> 5 BEGIN
					SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 5);
					IF @StartedOn IS NULL BEGIN
						UPDATE ConversionJobLog SET StartedOn = @TerminatedOn, StartedById = @TerminatedById, TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 5, StatusMessage = @StatusMessage, DetailMessage = ''''
					END
					ELSE BEGIN
						UPDATE ConversionJobLog SET TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 5, StatusMessage = @StatusMessage, DetailMessage = ''''
					END
				END
			END
			ELSE BEGIN
				IF @JobStatusId <> 4 BEGIN
					SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 4);
					IF @StartedOn IS NULL BEGIN
						UPDATE ConversionJobLog SET StartedOn = @TerminatedOn, StartedById = @TerminatedById, TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 4, StatusMessage = @StatusMessage, DetailMessage = ''''
					END
					ELSE BEGIN
						UPDATE ConversionJobLog SET TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 4, StatusMessage = @StatusMessage, DetailMessage = ''''
					END
				END
			END
		END
	END
	
	SELECT Id, ApplicationId, ReasonId, CreatedOn, CreatedById, StartedOn, StartedById, TerminatedOn, TerminatedById, StatusId, StatusMessage, DetailMessage
		FROM ConversionJobLog
		WHERE (Id = @JobId);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[StartNextPendingFileConversion]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StartNextPendingFileConversion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Sets next pending file conversion to 1 (InProgress) and returns the associated FileConversionLog row.
-- =============================================
CREATE PROCEDURE [dbo].[StartNextPendingFileConversion]
	@JobId uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @JobStatusId Int;
	DECLARE @Id UniqueIdentifier;
	DECLARE @StartedOn DateTime;
	DECLARE @StartedById UniqueIdentifier;
	DECLARE @StatusMessage nvarchar(1024);
	DECLARE @TagTxt nvarchar(255);
	DECLARE @idTable Table ( [Id] UniqueIdentifier );
	
	IF @JobId IS NULL BEGIN
		RAISERROR(''Invalid JobId.'', 12, 1);
		RETURN
	END

	SELECT @JobStatusId = StatusId FROM ConversionJobLog WHERE (Id = @JobId);

	IF @JobStatusId IS NULL BEGIN
		RAISERROR(''Conversion job not found.'', 12, 1);
		RETURN
	END
	
	IF @JobStatusId > 1 BEGIN
		SET @StartedOn = GETDATE();
		UPDATE FileConversionLog SET StartedOn = @StartedOn, TerminatedOn = @StartedOn, StatusId = 3
			WHERE (StatusId = 0) AND (JobId = @JobId);
		RETURN
	END

	SELECT TOP (1) @Id = Id FROM FileConversionLog WHERE (JobId = @JobId) AND (StatusId = 0);
	
	IF @Id IS NOT NULL BEGIN
		SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 1);
	
		SET @StartedOn = GETDATE();
		IF @JobStatusId = 0 BEGIN
			EXECUTE [Rimss].[dbo].[EnsureCurrentUserIdentityCache] @StartedById OUTPUT;

			UPDATE ConversionJobLog SET StartedOn = @StartedOn, StartedById = @StartedById, StatusId = 1, StatusMessage = @StatusMessage, DetailMessage = ''''
				WHERE (Id = @JobId)
		END
		
		UPDATE FileConversionLog SET StartedOn = @StartedOn, StatusId = 1, StatusMessage = @StatusMessage, DetailMessage = '''' WHERE (Id = @Id);
		
		SELECT Id, JobId, JobStatusName, JobStatusTitle, ConversionJobStatusId, FileConversionStartedOn, FileConversionTerminatedOn, SourceImageId, Tag, Width, Height, FormatId, ConvertedImageId, 
                      FileConversionStatusId, FileConversionStatusName, FileConversionStatusTitle, FileConversionStatusMessage, FileConversionDetailMessage, ConversionJobCreatedOn, ConversionJobStartedOn, 
                      ConversionJobTerminatedOn, ConversionJobStatusMessage, ConversionJobDetailMessage
			FROM View_FileConversionChangeDetails
			WHERE (Id = @Id);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CancelConversionJob]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CancelConversionJob]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Cancel conversion job and returns listing of file conversion jobs.
-- =============================================
CREATE PROCEDURE [dbo].[CancelConversionJob]
	@JobId uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @StatusMessage nvarchar(1024);
	DECLARE @JobStatusId Int;
	DECLARE @TerminatedById UniqueIdentifier;
	DECLARE @StartedOn DateTime;
	DECLARE @TerminatedOn DateTime;

	IF @JobId IS NULL BEGIN
		RAISERROR(''Invalid JobId.'', 12, 1);
		RETURN
	END

	SELECT @JobStatusId = StatusId, @StartedOn = StartedOn FROM ConversionJobLog WHERE (Id = @JobId);

	IF @JobStatusId IS NULL BEGIN
		RAISERROR(''Conversion job not found.'', 12, 1);
		RETURN
	END
	
	IF @JobStatusId < 2 BEGIN
		SET @TerminatedOn = GETDATE();
		EXECUTE [Rimss].[dbo].[EnsureCurrentUserIdentityCache] @TerminatedById OUTPUT;
		IF EXISTS(SELECT * FROM FileConversionLog WHERE (JobId = @JobId) AND ((StatusId = 1) OR (StatusId = 2))) BEGIN
			SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 2);
			IF @StartedOn IS NULL BEGIN
				UPDATE ConversionJobLog SET StartedOn = @TerminatedOn, StartedById = @TerminatedById, StatusId = 2, StatusMessage = @StatusMessage, DetailMessage = ''''
			END
			ELSE BEGIN
				UPDATE ConversionJobLog SET StatusId = 2, StatusMessage = @StatusMessage, DetailMessage = ''''
			END
		END
		ELSE BEGIN
			SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 3);
			SET @JobStatusId = 3;
			IF @StartedOn IS NULL BEGIN
				UPDATE ConversionJobLog SET StartedOn = @TerminatedOn, StartedById = @TerminatedById, TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 3, StatusMessage = @StatusMessage, DetailMessage = ''''
			END
			ELSE BEGIN
				UPDATE ConversionJobLog SET TerminatedOn = @TerminatedOn, TerminatedById = @TerminatedById, StatusId = 3, StatusMessage = @StatusMessage, DetailMessage = ''''
			END
		END
	END
	
	SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 3);
	UPDATE FileConversionLog SET StartedOn = @TerminatedOn, TerminatedOn = @TerminatedOn, StatusId = 3, StatusMessage = @StatusMessage, DetailMessage = ''''
		WHERE (StatusId = 0) AND (JobId = @JobId);
	SELECT @StatusMessage = Title FROM JobStatusCodes WHERE (Id = 2);
	UPDATE FileConversionLog SET StatusId = 2, StatusMessage = @StatusMessage, DetailMessage = ''''
		WHERE (StatusId = 1) AND (JobId = @JobId);
		
	SELECT Id, JobId, JobStatusName, JobStatusTitle, ConversionJobStatusId, FileConversionStartedOn, FileConversionTerminatedOn, SourceImageId, Tag, Width, Height, FormatId, ConvertedImageId, 
                  FileConversionStatusId, FileConversionStatusName, FileConversionStatusTitle, FileConversionStatusMessage, FileConversionDetailMessage, ConversionJobCreatedOn, ConversionJobStartedOn, 
                  ConversionJobTerminatedOn, ConversionJobStatusMessage, ConversionJobDetailMessage
		FROM View_FileConversionChangeDetails
		WHERE (JobId = @JobId);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddPendingFileConversion]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddPendingFileConversion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Adds a new pending file conversion to an existing job
-- =============================================
CREATE PROCEDURE [dbo].[AddPendingFileConversion]
	@JobId uniqueidentifier,
	@SourceImageId uniqueidentifier,
	@Tag nvarchar(255),
	@Width int,
	@Height int,
	@FormatId int,
	@StatusMessage nvarchar(1024),
	@DetailMessage text
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @JobStatusId Int;
	DECLARE @Id UniqueIdentifier;
	DECLARE @ApplicationId UniqueIdentifier;
	DECLARE @StatusMsg nvarchar(1024);
	DECLARE @TagTxt nvarchar(255);
	DECLARE @idTable Table ( [Id] UniqueIdentifier );
	
	IF @JobId IS NULL BEGIN
		RAISERROR(''Invalid JobId.'', 12, 1);
		RETURN
	END

	SELECT @JobStatusId = StatusId, @ApplicationId = ApplicationId FROM ConversionJobLog WHERE (Id = @JobId);

	IF @JobStatusId IS NULL BEGIN
		RAISERROR(''Conversion job not found.'', 12, 1);
		RETURN
	END

	IF @JobStatusId > 1 BEGIN
		RAISERROR(''Cannot add file conversions to inactive jobs.'', 12, 1);
		RETURN
	END
	
	IF @SourceImageId IS NULL OR NOT EXISTS(SELECT * FROM [SourceImage] WHERE (Id = @SourceImageId)) BEGIN
		RAISERROR(''Invalid SourceImageId.'', 12, 1);
		RETURN
	END

	IF NOT EXISTS(SELECT * FROM [SourceImage] WHERE (Id = @SourceImageId) AND (ApplicationId = @ApplicationId)) BEGIN
		RAISERROR(''Source Image ApplicationId does not match Job ApplicationId.'', 12, 1);
		RETURN
	END

	IF @Width < 1 BEGIN
		RAISERROR(''Invalid Width.'', 12, 1);
		RETURN
	END

	IF @Height < 1 BEGIN
		RAISERROR(''Invalid Height.'', 12, 1);
		RETURN
	END

	IF @FormatId IS NULL OR NOT EXISTS(SELECT * FROM [ImageFormatCodes] WHERE (Id = @FormatId)) BEGIN
		RAISERROR(''Invalid FormatId.'', 12, 1);
		RETURN
	END

	IF @StatusMessage IS NULL OR LEN(RTRIM(@StatusMessage)) = 0 BEGIN
		SELECT @StatusMsg = Title FROM JobStatusCodes WHERE (Id = 0);
	END
	ELSE BEGIN
		SET @StatusMsg = LTRIM(RTRIM(@StatusMessage));
	END
	
	IF @Tag IS NULL BEGIN
		SET @TagTxt = '''';
	END
	ELSE BEGIN
		SET @TagTxt = LTRIM(RTRIM(@Tag));
	END
	
	IF @StatusMessage IS NULL BEGIN
		INSERT INTO FileConversionLog (JobId, StartedOn, TerminatedOn, SourceImageId, Tag, Width, Height, FormatId, ConvertedImageId, StatusId, StatusMessage, DetailMessage)
			OUTPUT inserted.Id INTO @idTable
			VALUES (@JobId, NULL, NULL,@SourceImageId,@TagTxt,@Width,@Height,@FormatId,NULL,0,@StatusMsg, '''');
	END
	ELSE BEGIN
		INSERT INTO FileConversionLog (JobId, StartedOn, TerminatedOn, SourceImageId, Tag, Width, Height, FormatId, ConvertedImageId, StatusId, StatusMessage, DetailMessage)
			OUTPUT inserted.Id INTO @idTable
			VALUES (@JobId, NULL, NULL,@SourceImageId,@TagTxt,@Width,@Height,@FormatId,NULL,0,@StatusMsg, @DetailMessage);
	END
		
	SELECT @Id = Id FROM @idTable;
	SELECT Id, JobId, StartedOn, TerminatedOn, SourceImageId, Tag, Width, Height, FormatId, ConvertedImageId, StatusId, StatusMessage, DetailMessage
		FROM FileConversionLog WHERE (Id = @Id);
END
' 
END
GO
/****** Object:  Trigger [trig_UpdateApplication]    Script Date: 06/09/2015 04:32:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_UpdateApplication]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_UpdateApplication]
   ON  [dbo].[Application]
   AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedOn <> deleted.CreatedOn) BEGIN
		RAISERROR(''Created date cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted LEFT JOIN deleted ON inserted.Id = deleted.Id WHERE inserted.CreatedById <> deleted.CreatedById) BEGIN
		RAISERROR(''Created by cannot be modified'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  Trigger [trig_AddConversionJobLog]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[trig_AddConversionJobLog]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Enforces field value rules
-- =============================================
CREATE TRIGGER [dbo].[trig_AddConversionJobLog]
   ON  [dbo].[ConversionJobLog]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT * FROM inserted WHERE inserted.StartedById IS NOT NULL AND inserted.CreatedById <> inserted.StartedById) BEGIN
		RAISERROR(''Created by must be same as started by'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.TerminatedById IS NOT NULL AND inserted.CreatedById <> inserted.TerminatedById) BEGIN
		RAISERROR(''Created by must be same as terminated by'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.StartedOn IS NOT NULL AND inserted.CreatedOn <> inserted.StartedOn) BEGIN
		RAISERROR(''Created on must be same as started on'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END

	IF EXISTS (SELECT * FROM inserted WHERE inserted.TerminatedOn IS NOT NULL AND inserted.CreatedOn <> inserted.TerminatedOn) BEGIN
		RAISERROR(''Created on must be same as terminated on'', 12, 1);
		ROLLBACK TRANSACTION;
		RETURN
	END
END
'
GO
/****** Object:  StoredProcedure [dbo].[CreatePendingConversionJob]    Script Date: 06/09/2015 04:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreatePendingConversionJob]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Leonard T. Erwine
-- Create date: 2015-06-08
-- Description:	Creates a new pending conversion job
-- =============================================
CREATE PROCEDURE [dbo].[CreatePendingConversionJob]
	@ApplicationId uniqueidentifier,
	@ReasonId int,
	@StatusMessage nvarchar(1024),
	@DetailMessage text
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @CreatedOn DateTime;
	DECLARE @CreatedById UniqueIdentifier;
	DECLARE @Id UniqueIdentifier;
	DECLARE @StatusMsg nvarchar(1024);
	DECLARE @idTable Table ( [Id] UniqueIdentifier );
	
	IF @ReasonId IS NULL OR NOT EXISTS(SELECT * FROM JobReasonCodes WHERE (Id = @ReasonId)) BEGIN
		RAISERROR(''Invalid ReasonId.'', 12, 1);
		RETURN
	END

	IF @ApplicationId IS NULL OR NOT EXISTS(SELECT * FROM [Application] WHERE (Id = @ApplicationId)) BEGIN
		RAISERROR(''Invalid ApplicationId.'', 12, 1);
		RETURN
	END

	IF @StatusMessage IS NULL OR LEN(RTRIM(@StatusMessage)) = 0 BEGIN
		SELECT @StatusMsg = Title FROM JobStatusCodes WHERE (Id = 0);
	END
	ELSE BEGIN
		SET @StatusMsg = LTRIM(RTRIM(@StatusMessage));
	END
	
	SET @CreatedOn = GETDATE();

	EXECUTE [Rimss].[dbo].[EnsureCurrentUserIdentityCache] @CreatedById OUTPUT;

	IF @StatusMessage IS NULL BEGIN
		INSERT INTO ConversionJobLog (ApplicationId, ReasonId, CreatedOn, CreatedById, StartedOn, StartedById, TerminatedOn, TerminatedById, StatusId, StatusMessage, DetailMessage)
			OUTPUT inserted.Id INTO @idTable
			VALUES (@ApplicationId,@ReasonId,@CreatedOn,@CreatedById, NULL, NULL, NULL, NULL, 0,@StatusMsg,'''');
	END
	ELSE BEGIN
		INSERT INTO ConversionJobLog (ApplicationId, ReasonId, CreatedOn, CreatedById, StartedOn, StartedById, TerminatedOn, TerminatedById, StatusId, StatusMessage, DetailMessage)
			OUTPUT inserted.Id INTO @idTable
			VALUES (@ApplicationId,@ReasonId,@CreatedOn,@CreatedById, NULL, NULL, NULL, NULL, 0,@StatusMsg,@DetailMessage);
	END
		
	SELECT @Id = Id FROM @idTable;
	
	SELECT Id, ApplicationId, ReasonId, CreatedOn, CreatedById, StartedOn, StartedById, TerminatedOn, TerminatedById, StatusId, StatusMessage, DetailMessage
		FROM ConversionJobLog WHERE (Id = @Id);
END
' 
END
GO
/****** Object:  Check [CK_IdentityCache_CreatedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_CreatedBy] CHECK  ((datalength([CreatedBySID])>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_CreatedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_CreatedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CreatedBySID cannot be empty.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_CreatedBy'
GO
/****** Object:  Check [CK_IdentityCache_CreatedModified]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_CreatedModified] CHECK  (([CreatedOn]<=[ModifiedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_CreatedModified]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_CreatedModified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_CreatedModified'
GO
/****** Object:  Check [CK_IdentityCache_CreatedVerified]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedVerified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_CreatedVerified] CHECK  (([CreatedOn]<=[VerifiedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_CreatedVerified]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_CreatedVerified]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_CreatedVerified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VerifiedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_CreatedVerified'
GO
/****** Object:  Check [CK_IdentityCache_EmailAddress]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_EmailAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_EmailAddress] CHECK  (([EmailAddress] IS NULL OR len([EmailAddress])>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_EmailAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_EmailAddress]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_EmailAddress'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EmailAddress cannot be empty if it is defined.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_EmailAddress'
GO
/****** Object:  Check [CK_IdentityCache_LoginName]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_LoginName]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_LoginName] CHECK  ((len(rtrim([LoginName]))>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_LoginName]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_LoginName]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_LoginName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LoginName cannot be empty.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_LoginName'
GO
/****** Object:  Check [CK_IdentityCache_ModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_ModifiedBy] CHECK  ((datalength([ModifiedBySID])>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_ModifiedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_ModifiedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedBySID cannot be empty.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_ModifiedBy'
GO
/****** Object:  Check [CK_IdentityCache_SID]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_SID]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache]  WITH CHECK ADD  CONSTRAINT [CK_IdentityCache_SID] CHECK  ((datalength([SID])>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IdentityCache_SID]') AND parent_object_id = OBJECT_ID(N'[dbo].[IdentityCache]'))
ALTER TABLE [dbo].[IdentityCache] CHECK CONSTRAINT [CK_IdentityCache_SID]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'IdentityCache', N'CONSTRAINT',N'CK_IdentityCache_SID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SID cannot be empty.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IdentityCache', @level2type=N'CONSTRAINT',@level2name=N'CK_IdentityCache_SID'
GO
/****** Object:  Check [CK_ConvertedImage_CreatedModified]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [CK_ConvertedImage_CreatedModified] CHECK  (([CreatedOn]<=[ModifiedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [CK_ConvertedImage_CreatedModified]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'CK_ConvertedImage_CreatedModified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'CK_ConvertedImage_CreatedModified'
GO
/****** Object:  Check [CK_ConvertedImage_Format]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Format]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [CK_ConvertedImage_Format] CHECK  (([FormatId]>=(0) AND [FormatId]<(8)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Format]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [CK_ConvertedImage_Format]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'CK_ConvertedImage_Format'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FormatId must be a value from 0 to 7.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'CK_ConvertedImage_Format'
GO
/****** Object:  Check [CK_ConvertedImage_Height]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [CK_ConvertedImage_Height] CHECK  (([Height]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [CK_ConvertedImage_Height]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'CK_ConvertedImage_Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height must be greater than zero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'CK_ConvertedImage_Height'
GO
/****** Object:  Check [CK_ConvertedImage_ModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [CK_ConvertedImage_ModifiedBy] CHECK  (([dbo].[CanUseModifiedBy]([ModifiedById])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [CK_ConvertedImage_ModifiedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'CK_ConvertedImage_ModifiedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedById must represent the current user unless user is in a recognized admin role.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'CK_ConvertedImage_ModifiedBy'
GO
/****** Object:  Check [CK_ConvertedImage_Tag]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [CK_ConvertedImage_Tag] CHECK  (([Tag] IS NULL OR len(rtrim([Tag]))>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [CK_ConvertedImage_Tag]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'CK_ConvertedImage_Tag'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tag cannot be empty if it is not null.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'CK_ConvertedImage_Tag'
GO
/****** Object:  Check [CK_ConvertedImage_Width]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [CK_ConvertedImage_Width] CHECK  (([Width]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConvertedImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [CK_ConvertedImage_Width]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'CK_ConvertedImage_Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width must be greater than zero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'CK_ConvertedImage_Width'
GO
/****** Object:  Check [CK_ConversionJobLog_CreatedStarted]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_CreatedStarted]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [CK_ConversionJobLog_CreatedStarted] CHECK  (([CreatedOn]<=[StartedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_CreatedStarted]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [CK_ConversionJobLog_CreatedStarted]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConversionJobLog', N'CONSTRAINT',N'CK_ConversionJobLog_CreatedStarted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StartedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJobLog', @level2type=N'CONSTRAINT',@level2name=N'CK_ConversionJobLog_CreatedStarted'
GO
/****** Object:  Check [CK_ConversionJobLog_StartedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [CK_ConversionJobLog_StartedBy] CHECK  (([dbo].[CanUseModifiedBy]([StartedById])=(1) AND [dbo].[CanUseModifiedBy]([CreatedById])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [CK_ConversionJobLog_StartedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConversionJobLog', N'CONSTRAINT',N'CK_ConversionJobLog_StartedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StartedById must represent the current user and be the same as CreatedById, unless user is in a recognized admin role.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJobLog', @level2type=N'CONSTRAINT',@level2name=N'CK_ConversionJobLog_StartedBy'
GO
/****** Object:  Check [CK_ConversionJobLog_StartedTerminated]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [CK_ConversionJobLog_StartedTerminated] CHECK  (([StartedOn]<=[TerminatedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [CK_ConversionJobLog_StartedTerminated]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConversionJobLog', N'CONSTRAINT',N'CK_ConversionJobLog_StartedTerminated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TerminatedOn cannot be older than StartedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJobLog', @level2type=N'CONSTRAINT',@level2name=N'CK_ConversionJobLog_StartedTerminated'
GO
/****** Object:  Check [CK_ConversionJobLog_TerminatedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [CK_ConversionJobLog_TerminatedBy] CHECK  (([dbo].[CanUseModifiedBy]([TerminatedById])=(1) AND [dbo].[CanUseModifiedBy]([CreatedById])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [CK_ConversionJobLog_TerminatedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConversionJobLog', N'CONSTRAINT',N'CK_ConversionJobLog_TerminatedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TerminatedById must represent the current user and be the same as TerminatedById, unless user is in a recognized admin role.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConversionJobLog', @level2type=N'CONSTRAINT',@level2name=N'CK_ConversionJobLog_TerminatedBy'
GO
/****** Object:  Check [CK_FileConversionLog_Job]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Job]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [CK_FileConversionLog_Job] CHECK  (([dbo].[IsValidFileConversionStatus]([JobId],[StatusId],[StartedOn],[TerminatedOn])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Job]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [CK_FileConversionLog_Job]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'CONSTRAINT',N'CK_FileConversionLog_Job'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StatusId, StartedOn and TerminatedOn must be compatible with parent job''s status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'CONSTRAINT',@level2name=N'CK_FileConversionLog_Job'
GO
/****** Object:  Check [CK_FileConversionLog_SourceImage]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [CK_FileConversionLog_SourceImage] CHECK  (([ConvertedImageId] IS NULL OR [dbo].[IsOfSourceImage]([ConvertedImageId],[SourceImageId])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [CK_FileConversionLog_SourceImage]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'CONSTRAINT',N'CK_FileConversionLog_SourceImage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If ConvertedImageId is defined, then its SourceImageId must match.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'CONSTRAINT',@level2name=N'CK_FileConversionLog_SourceImage'
GO
/****** Object:  Check [CK_FileConversionLog_StartedTerminated]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [CK_FileConversionLog_StartedTerminated] CHECK  (([StartedOn]<=[TerminatedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_StartedTerminated]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [CK_FileConversionLog_StartedTerminated]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'CONSTRAINT',N'CK_FileConversionLog_StartedTerminated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TerminatedOn cannot be older than StartedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'CONSTRAINT',@level2name=N'CK_FileConversionLog_StartedTerminated'
GO
/****** Object:  Check [CK_FileConversionLog_Tag]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [CK_FileConversionLog_Tag] CHECK  (([Tag] IS NULL OR len(rtrim([Tag]))>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_FileConversionLog_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [CK_FileConversionLog_Tag]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FileConversionLog', N'CONSTRAINT',N'CK_FileConversionLog_Tag'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tag cannot be empty if it is not null.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileConversionLog', @level2type=N'CONSTRAINT',@level2name=N'CK_FileConversionLog_Tag'
GO
/****** Object:  Check [CK_SourceImage_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [CK_SourceImage_Application] CHECK  (([ParentId] IS NULL OR [dbo].[IsInApplication]([ParentId],[ApplicationId])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [CK_SourceImage_Application]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'CK_SourceImage_Application'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If ParentId is defined, then ApplicationId must be the same as the parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'CK_SourceImage_Application'
GO
/****** Object:  Check [CK_SourceImage_CreatedModified]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [CK_SourceImage_CreatedModified] CHECK  (([CreatedOn]<=[ModifiedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [CK_SourceImage_CreatedModified]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'CK_SourceImage_CreatedModified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'CK_SourceImage_CreatedModified'
GO
/****** Object:  Check [CK_SourceImage_FormatId]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_FormatId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [CK_SourceImage_FormatId] CHECK  (([FormatId]>=(0) AND [FormatId]<(8)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_FormatId]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [CK_SourceImage_FormatId]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'CK_SourceImage_FormatId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FormatId must be a value from 0 to 7.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'CK_SourceImage_FormatId'
GO
/****** Object:  Check [CK_SourceImage_Height]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [CK_SourceImage_Height] CHECK  (([Height]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Height]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [CK_SourceImage_Height]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'CK_SourceImage_Height'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Height must be greater than zero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'CK_SourceImage_Height'
GO
/****** Object:  Check [CK_SourceImage_Name]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [CK_SourceImage_Name] CHECK  (([dbo].[IsChildNameValid]([Id],[ParentId],[ApplicationId],[Name])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [CK_SourceImage_Name]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'CK_SourceImage_Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name must be non-empty, without slash or back-slash characters, and must be unique within its parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'CK_SourceImage_Name'
GO
/****** Object:  Check [CK_SourceImage_Width]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [CK_SourceImage_Width] CHECK  (([Width]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SourceImage_Width]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [CK_SourceImage_Width]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'CK_SourceImage_Width'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Width must be greater than zero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'CK_SourceImage_Width'
GO
/****** Object:  Check [CK_Folder_Ancestor]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Ancestor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [CK_Folder_Ancestor] CHECK  (([ParentId] IS NULL OR [ParentId]<>[Id] AND [dbo].[IsDescendentOf]([ParentId],[Id])=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Ancestor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [CK_Folder_Ancestor]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'CONSTRAINT',N'CK_Folder_Ancestor'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id cannot be same as ParentId and Id cannot be ancestor of ParentId.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'CONSTRAINT',@level2name=N'CK_Folder_Ancestor'
GO
/****** Object:  Check [CK_Folder_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [CK_Folder_Application] CHECK  (([ParentId] IS NULL OR [dbo].[IsInApplication]([ParentId],[ApplicationId])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [CK_Folder_Application]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'CONSTRAINT',N'CK_Folder_Application'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If ParentId is defined, then ApplicationId must be the same as the parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'CONSTRAINT',@level2name=N'CK_Folder_Application'
GO
/****** Object:  Check [CK_Folder_CreatedModified]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [CK_Folder_CreatedModified] CHECK  (([CreatedOn]<=[ModifiedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [CK_Folder_CreatedModified]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'CONSTRAINT',N'CK_Folder_CreatedModified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'CONSTRAINT',@level2name=N'CK_Folder_CreatedModified'
GO
/****** Object:  Check [CK_Folder_Name]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [CK_Folder_Name] CHECK  (([dbo].[IsChildNameValid]([Id],[ParentId],[ApplicationId],[Name])=(1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Folder_Name]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [CK_Folder_Name]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Folder', N'CONSTRAINT',N'CK_Folder_Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name must be non-empty, without slash or back-slash characters, and must be unique within its parent folder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Folder', @level2type=N'CONSTRAINT',@level2name=N'CK_Folder_Name'
GO
/****** Object:  Check [CK_Application_CreatedModified]    Script Date: 06/09/2015 04:32:19 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [CK_Application_CreatedModified] CHECK  (([CreatedOn]<=[ModifiedOn]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_CreatedModified]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [CK_Application_CreatedModified]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', N'CONSTRAINT',N'CK_Application_CreatedModified'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModifiedOn cannot be older than CreatedOn.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'CK_Application_CreatedModified'
GO
/****** Object:  Check [CK_Application_Title]    Script Date: 06/09/2015 04:32:19 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [CK_Application_Title] CHECK  ((len(rtrim([Title]))>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Application_Title]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [CK_Application_Title]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Application', N'CONSTRAINT',N'CK_Application_Title'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Title cannot be empty.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Application', @level2type=N'CONSTRAINT',@level2name=N'CK_Application_Title'
GO
/****** Object:  ForeignKey [FK_ConvertedImage_CreatedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [FK_ConvertedImage_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [FK_ConvertedImage_CreatedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_ImageFormatCodes]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [FK_ConvertedImage_ImageFormatCodes] FOREIGN KEY([FormatId])
REFERENCES [dbo].[ImageFormatCodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [FK_ConvertedImage_ImageFormatCodes]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_ModifiedBy]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [FK_ConvertedImage_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [FK_ConvertedImage_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_ConvertedImage_SourceImage]    Script Date: 06/09/2015 04:32:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage]  WITH CHECK ADD  CONSTRAINT [FK_ConvertedImage_SourceImage] FOREIGN KEY([SourceImageId])
REFERENCES [dbo].[SourceImage] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConvertedImage_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConvertedImage]'))
ALTER TABLE [dbo].[ConvertedImage] CHECK CONSTRAINT [FK_ConvertedImage_SourceImage]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ConvertedImage', N'CONSTRAINT',N'FK_ConvertedImage_SourceImage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between converted images and the source image from which they were derrived.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConvertedImage', @level2type=N'CONSTRAINT',@level2name=N'FK_ConvertedImage_SourceImage'
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_Application]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJobLog_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [FK_ConversionJobLog_Application]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_CreatedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJobLog_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [FK_ConversionJobLog_CreatedBy]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_JobReasonCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobReasonCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJobLog_JobReasonCodes] FOREIGN KEY([ReasonId])
REFERENCES [dbo].[JobReasonCodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobReasonCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [FK_ConversionJobLog_JobReasonCodes]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_JobStatusCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJobLog_JobStatusCodes] FOREIGN KEY([StatusId])
REFERENCES [dbo].[JobStatusCodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [FK_ConversionJobLog_JobStatusCodes]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_StartedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJobLog_StartedBy] FOREIGN KEY([StartedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_StartedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [FK_ConversionJobLog_StartedBy]
GO
/****** Object:  ForeignKey [FK_ConversionJobLog_TerminatedBy]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionJobLog_TerminatedBy] FOREIGN KEY([TerminatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionJobLog_TerminatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConversionJobLog]'))
ALTER TABLE [dbo].[ConversionJobLog] CHECK CONSTRAINT [FK_ConversionJobLog_TerminatedBy]
GO
/****** Object:  ForeignKey [FK_ConversionLog_ConvertedImage]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionLog_ConvertedImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_ConversionLog_ConvertedImage] FOREIGN KEY([ConvertedImageId])
REFERENCES [dbo].[ConvertedImage] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ConversionLog_ConvertedImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [FK_ConversionLog_ConvertedImage]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_ConversionJobLog]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ConversionJobLog]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_FileConversionLog_ConversionJobLog] FOREIGN KEY([JobId])
REFERENCES [dbo].[ConversionJobLog] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ConversionJobLog]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [FK_FileConversionLog_ConversionJobLog]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_ImageFormatCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_FileConversionLog_ImageFormatCodes] FOREIGN KEY([FormatId])
REFERENCES [dbo].[ImageFormatCodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [FK_FileConversionLog_ImageFormatCodes]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_JobStatusCodes]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_FileConversionLog_JobStatusCodes] FOREIGN KEY([StatusId])
REFERENCES [dbo].[JobStatusCodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_JobStatusCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [FK_FileConversionLog_JobStatusCodes]
GO
/****** Object:  ForeignKey [FK_FileConversionLog_SourceImage]    Script Date: 06/09/2015 04:32:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog]  WITH CHECK ADD  CONSTRAINT [FK_FileConversionLog_SourceImage] FOREIGN KEY([SourceImageId])
REFERENCES [dbo].[SourceImage] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FileConversionLog_SourceImage]') AND parent_object_id = OBJECT_ID(N'[dbo].[FileConversionLog]'))
ALTER TABLE [dbo].[FileConversionLog] CHECK CONSTRAINT [FK_FileConversionLog_SourceImage]
GO
/****** Object:  ForeignKey [FK_SourceImage_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_Application]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'FK_SourceImage_Application'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between source images and their application definition.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_Application'
GO
/****** Object:  ForeignKey [FK_SourceImage_CreatedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_CreatedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'FK_SourceImage_CreatedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between user accounts and the source image records which they have created.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_CreatedBy'
GO
/****** Object:  ForeignKey [FK_SourceImage_Folder]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_Folder] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Folder] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_Folder]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_Folder]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'FK_SourceImage_Folder'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between source images and the folder in which they are contained.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_Folder'
GO
/****** Object:  ForeignKey [FK_SourceImage_ImageFormatCodes]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_ImageFormatCodes] FOREIGN KEY([FormatId])
REFERENCES [dbo].[ImageFormatCodes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ImageFormatCodes]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_ImageFormatCodes]
GO
/****** Object:  ForeignKey [FK_SourceImage_ModifiedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage]  WITH CHECK ADD  CONSTRAINT [FK_SourceImage_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SourceImage_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[SourceImage]'))
ALTER TABLE [dbo].[SourceImage] CHECK CONSTRAINT [FK_SourceImage_ModifiedBy]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SourceImage', N'CONSTRAINT',N'FK_SourceImage_ModifiedBy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between a source image record and the user account which has most recently modified it.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SourceImage', @level2type=N'CONSTRAINT',@level2name=N'FK_SourceImage_ModifiedBy'
GO
/****** Object:  ForeignKey [FK_Folder_Application]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Application]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Application]
GO
/****** Object:  ForeignKey [FK_Folder_CreatedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Folder_ModifiedBy]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_ModifiedBy]
GO
/****** Object:  ForeignKey [FK_Folder_Parent]    Script Date: 06/09/2015 04:32:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Parent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Parent] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Folder] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Folder_Parent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Folder]'))
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Parent]
GO
/****** Object:  ForeignKey [FK_Application_CreatedBy]    Script Date: 06/09/2015 04:32:19 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_CreatedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_CreatedBy]
GO
/****** Object:  ForeignKey [FK_Application_ModifiedBy]    Script Date: 06/09/2015 04:32:19 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[IdentityCache] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Application_ModifiedBy]') AND parent_object_id = OBJECT_ID(N'[dbo].[Application]'))
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_ModifiedBy]
GO

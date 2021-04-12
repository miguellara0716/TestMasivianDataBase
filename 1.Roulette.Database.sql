USE [master]
GO
/****** Object:  Database [Roulette]    Script Date: 11/04/2021 22:44:39 ******/
CREATE DATABASE [Roulette]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Roulette', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Roulette.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Roulette_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Roulette_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Roulette] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Roulette].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Roulette] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Roulette] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Roulette] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Roulette] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Roulette] SET ARITHABORT OFF 
GO
ALTER DATABASE [Roulette] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Roulette] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Roulette] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Roulette] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Roulette] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Roulette] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Roulette] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Roulette] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Roulette] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Roulette] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Roulette] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Roulette] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Roulette] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Roulette] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Roulette] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Roulette] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Roulette] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Roulette] SET RECOVERY FULL 
GO
ALTER DATABASE [Roulette] SET  MULTI_USER 
GO
ALTER DATABASE [Roulette] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Roulette] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Roulette] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Roulette] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Roulette] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Roulette] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Roulette', N'ON'
GO
ALTER DATABASE [Roulette] SET QUERY_STORE = OFF
GO
ALTER DATABASE [Roulette] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [DDDInPractice]    Script Date: 2/04/2017 12:43:29 p. m. ******/
CREATE DATABASE [DDDInPractice]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DDDInPractice', FILENAME = N'C:\Users\AndrésFelipe\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\v11.0\DDDInPractice.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DDDInPractice_log', FILENAME = N'C:\Users\AndrésFelipe\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\v11.0\DDDInPractice.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DDDInPractice] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DDDInPractice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DDDInPractice] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [DDDInPractice] SET ANSI_NULLS ON 
GO
ALTER DATABASE [DDDInPractice] SET ANSI_PADDING ON 
GO
ALTER DATABASE [DDDInPractice] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [DDDInPractice] SET ARITHABORT ON 
GO
ALTER DATABASE [DDDInPractice] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DDDInPractice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DDDInPractice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DDDInPractice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DDDInPractice] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [DDDInPractice] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [DDDInPractice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DDDInPractice] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [DDDInPractice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DDDInPractice] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DDDInPractice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DDDInPractice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DDDInPractice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DDDInPractice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DDDInPractice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DDDInPractice] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DDDInPractice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DDDInPractice] SET RECOVERY FULL 
GO
ALTER DATABASE [DDDInPractice] SET  MULTI_USER 
GO
ALTER DATABASE [DDDInPractice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DDDInPractice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DDDInPractice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DDDInPractice] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DDDInPractice]
GO
/****** Object:  Table [dbo].[Atm]    Script Date: 2/04/2017 12:43:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atm](
	[AtmId] [bigint] NOT NULL,
	[MoneyCharged] [money] NOT NULL,
	[OneCentCount] [int] NOT NULL,
	[TenCentCount] [int] NOT NULL,
	[QuarterCount] [int] NOT NULL,
	[OneDollarCount] [int] NOT NULL,
	[FiveDollarCount] [int] NOT NULL,
	[TwentyDollarCount] [int] NOT NULL,
 CONSTRAINT [PK_Atm] PRIMARY KEY CLUSTERED 
(
	[AtmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeadOffice]    Script Date: 2/04/2017 12:43:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeadOffice](
	[HeadOfficeId] [bigint] NOT NULL,
	[Balance] [money] NOT NULL,
	[OneCentCount] [int] NOT NULL,
	[TenCentCount] [int] NOT NULL,
	[QuarterCount] [int] NOT NULL,
	[OneDollarCount] [int] NOT NULL,
	[FiveDollarCount] [int] NOT NULL,
	[TwentyDollarCount] [int] NOT NULL,
 CONSTRAINT [PK_HeadOffice] PRIMARY KEY CLUSTERED 
(
	[HeadOfficeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ids]    Script Date: 2/04/2017 12:43:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ids](
	[EntityName] [nvarchar](100) NOT NULL,
	[NextHigh] [int] NOT NULL,
 CONSTRAINT [PK_Ids] PRIMARY KEY CLUSTERED 
(
	[EntityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slot]    Script Date: 2/04/2017 12:43:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[SlotId] [bigint] NOT NULL,
	[SnackMachineId] [bigint] NOT NULL,
	[SnackId] [bigint] NOT NULL,
	[Position] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[SlotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Snack]    Script Date: 2/04/2017 12:43:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snack](
	[SnackId] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Snack] PRIMARY KEY CLUSTERED 
(
	[SnackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SnackMachine]    Script Date: 2/04/2017 12:43:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnackMachine](
	[SnackMachineId] [bigint] NOT NULL,
	[OneCentCount] [int] NOT NULL,
	[TenCentCount] [int] NOT NULL,
	[QuarterCount] [int] NOT NULL,
	[OneDollarCount] [int] NOT NULL,
	[FiveDollarCount] [int] NOT NULL,
	[TwentyDollarCount] [int] NOT NULL,
 CONSTRAINT [PK_SnackMachine] PRIMARY KEY CLUSTERED 
(
	[SnackMachineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Atm] ([AtmId], [MoneyCharged], [OneCentCount], [TenCentCount], [QuarterCount], [OneDollarCount], [FiveDollarCount], [TwentyDollarCount]) VALUES (1, 0.0000, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[HeadOffice] ([HeadOfficeId], [Balance], [OneCentCount], [TenCentCount], [QuarterCount], [OneDollarCount], [FiveDollarCount], [TwentyDollarCount]) VALUES (1, 0.0000, 20, 20, 20, 20, 20, 20)
INSERT [dbo].[Ids] ([EntityName], [NextHigh]) VALUES (N'Atm', 1)
INSERT [dbo].[Ids] ([EntityName], [NextHigh]) VALUES (N'Slot', 1)
INSERT [dbo].[Ids] ([EntityName], [NextHigh]) VALUES (N'Snack', 1)
INSERT [dbo].[Ids] ([EntityName], [NextHigh]) VALUES (N'SnackMachine', 1)
INSERT [dbo].[Slot] ([SlotId], [SnackMachineId], [SnackId], [Position], [Quantity], [Price]) VALUES (1, 1, 1, 1, 9, 3.0000)
INSERT [dbo].[Slot] ([SlotId], [SnackMachineId], [SnackId], [Position], [Quantity], [Price]) VALUES (2, 1, 2, 2, 15, 2.0000)
INSERT [dbo].[Slot] ([SlotId], [SnackMachineId], [SnackId], [Position], [Quantity], [Price]) VALUES (3, 1, 3, 3, 19, 1.0000)
INSERT [dbo].[Snack] ([SnackId], [Name]) VALUES (1, N'Chocolate')
INSERT [dbo].[Snack] ([SnackId], [Name]) VALUES (2, N'Soda')
INSERT [dbo].[Snack] ([SnackId], [Name]) VALUES (3, N'Gum')
INSERT [dbo].[SnackMachine] ([SnackMachineId], [OneCentCount], [TenCentCount], [QuarterCount], [OneDollarCount], [FiveDollarCount], [TwentyDollarCount]) VALUES (1, 1, 1, 1, 11, 1, 1)
ALTER TABLE [dbo].[Slot]  WITH CHECK ADD  CONSTRAINT [FK_Slot_Snack] FOREIGN KEY([SnackId])
REFERENCES [dbo].[Snack] ([SnackId])
GO
ALTER TABLE [dbo].[Slot] CHECK CONSTRAINT [FK_Slot_Snack]
GO
ALTER TABLE [dbo].[Slot]  WITH CHECK ADD  CONSTRAINT [FK_Slot_SnackMachine] FOREIGN KEY([SnackMachineId])
REFERENCES [dbo].[SnackMachine] ([SnackMachineId])
GO
ALTER TABLE [dbo].[Slot] CHECK CONSTRAINT [FK_Slot_SnackMachine]
GO
USE [master]
GO
ALTER DATABASE [DDDInPractice] SET  READ_WRITE 
GO

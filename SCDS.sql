 
GO
/****** Object:  Database [SCDS]    Script Date: 4/24/2019 1:15:56 AM ******/
CREATE DATABASE [SCDS]
 

/****** Object:  Table [dbo].[Child]    Script Date: 4/24/2019 1:15:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child](
	[ChildID] [int] IDENTITY(1,1) NOT NULL,
	[ChildName] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Picture] [varchar](50) NULL,
	[Verified] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ContactNo] [numeric](18, 0) NULL,
	[UserID] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[ChildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credit_Cards]    Script Date: 4/24/2019 1:15:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credit_Cards](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DonorID] [int] NOT NULL,
	[Credit_Card_No] [varchar](50) NOT NULL,
	[Expiry_Date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credit_Cards] PRIMARY KEY CLUSTERED 
(
	[Credit_Card_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donations]    Script Date: 4/24/2019 1:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donations](
	[DID] [int] IDENTITY(1,1) NOT NULL,
	[Donation_Amount] [int] NULL,
	[Donation_Date] [varchar](50) NULL,
	[DonorID] [int] NULL,
	[DMethod] [varchar](50) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Donations] PRIMARY KEY CLUSTERED 
(
	[DID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donor]    Script Date: 4/24/2019 1:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donor](
	[DonorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Country] [nchar](10) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Contact_No] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[UserID] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Donor] PRIMARY KEY CLUSTERED 
(
	[DonorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registered_Users]    Script Date: 4/24/2019 1:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registered_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserEmail] [varchar](50) NULL,
	[Date] [date] NULL,
	[UserType] [varchar](50) NULL,
 CONSTRAINT [PK_Registered_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Child]    Script Date: 4/24/2019 1:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Child]
AS
SELECT        dbo.Child.*, ChildID AS Expr1, ChildName AS Expr2, Country AS Expr3, City AS Expr4, Address AS Expr5, Picture AS Expr6, Verified AS Expr7, State AS Expr8, 
                         ContactNo AS Expr9, Date AS Expr11
FROM            dbo.Child
GO
/****** Object:  View [dbo].[vw_Donations]    Script Date: 4/24/2019 1:15:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_Donations] 
as  
Select   DID,Donation_Amount,Donation_Date,DONATION_TYPE
from Donations  
GO
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Registered_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Registered_Users] ([UserID])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Registered_Users]
GO
ALTER TABLE [dbo].[Credit_Cards]  WITH CHECK ADD  CONSTRAINT [FK_Credit_Cards_Donor1] FOREIGN KEY([DonorID])
REFERENCES [dbo].[Donor] ([DonorID])
GO
ALTER TABLE [dbo].[Credit_Cards] CHECK CONSTRAINT [FK_Credit_Cards_Donor1]
GO
ALTER TABLE [dbo].[Donations]  WITH CHECK ADD  CONSTRAINT [FK_Donations_Donor] FOREIGN KEY([DonorID])
REFERENCES [dbo].[Donor] ([DonorID])
GO
ALTER TABLE [dbo].[Donations] CHECK CONSTRAINT [FK_Donations_Donor]
GO
ALTER TABLE [dbo].[Donations]  WITH CHECK ADD  CONSTRAINT [FK_Donations_Registered_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Registered_Users] ([UserID])
GO
ALTER TABLE [dbo].[Donations] CHECK CONSTRAINT [FK_Donations_Registered_Users]
GO
ALTER TABLE [dbo].[Donor]  WITH CHECK ADD  CONSTRAINT [FK_Donor_Registered_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Registered_Users] ([UserID])
GO
ALTER TABLE [dbo].[Donor] CHECK CONSTRAINT [FK_Donor_Registered_Users]
GO
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
         Begin Table = "Child"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 208
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Child'
GO
USE [master]
GO
ALTER DATABASE [SCDS] SET  READ_WRITE 
GO

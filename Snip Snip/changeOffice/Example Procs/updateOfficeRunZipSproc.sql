USE [LeafFilterOrderApp]
GO

DECLARE @RC int
DECLARE @OfficeRunZipId int
DECLARE @OfficeId int
DECLARE @RunId int
DECLARE @Zip int
DECLARE @UserId varchar(50)
DECLARE @County varchar(50)
DECLARE @StateId int
DECLARE @MilesFromRun int
DECLARE @DirectionId int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[spUpdateOfficeRunZip] 
   @OfficeRunZipId
  ,@OfficeId
  ,@RunId
  ,@Zip
  ,@UserId
  ,@County
  ,@StateId
  ,@MilesFromRun
  ,@DirectionId
GO



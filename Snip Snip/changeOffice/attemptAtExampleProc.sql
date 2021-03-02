USE [LeafFilterOrderApp]
GO

DECLARE @RC int
DECLARE @Zip int
DECLARE @OfficeId int
DECLARE @OfficeRunId int
DECLARE @OfficeCoverageId int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[exampleProc]
   @Zip
  ,@OfficeId
  ,@OfficeRunId
  ,@OfficeCoverageId
GO
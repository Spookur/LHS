USE [LeafFilterOrderApp]
GO

DECLARE @RC int
DECLARE @LeadId int = 4551093
DECLARE @OfficeId int = 8 
DECLARE @LeadSheetDate date = '03/01/2021'
DECLARE @Msg varchar(200)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[spMTC_ClearLeadSheetAppointment] 
   @LeadId
  ,@OfficeId
  ,@LeadSheetDate
  ,@Msg OUTPUT
GO



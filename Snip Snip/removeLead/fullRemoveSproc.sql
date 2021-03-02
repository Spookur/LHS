USE [LeafFilterOrderApp]
GO

/****** Object:  StoredProcedure [dbo].[spMTC_ClearLeadSheetAppointment]    Script Date: 3/2/2021 10:36:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spMTC_ClearLeadSheetAppointment]

@LeadId INT,
@OfficeId INT,
@LeadSheetDate DATE,
@Msg VARCHAR(200) OUTPUT

AS

SET @Msg = ''

--FIRST NEED TO CLEAR FROM THE CALENDER
DELETE cl
FROM tblCalendarLead cl
INNER JOIN tblLead l
ON cl.LeadId = l.LeadId 
WHERE cl.LeadId = @LeadId AND CAST(cl.StartTime AS DATE) = @LeadSheetDate AND l.OfficeId = @OfficeId

IF @@ROWCOUNT = 1
	BEGIN
		SET @Msg = @Msg + ' LEAD ID ' + CAST(@LeadId AS VARCHAR(10)) + ' HAS BEEN REMOVED FROM THE ' + CAST(@LeadSheetDate AS VARCHAR(12)) + ' CALENDAR.'
	END

--SECOND NEED TO CLEAR FROM LEAD SHEET
DELETE la
FROM tblLeadAppointment la
INNER JOIN tblLead l
ON la.LeadId = l.LeadId
WHERE la.LeadId = @LeadId AND CAST(la.AppointmentDate AS DATE) = @LeadSheetDate AND l.OfficeId = @OfficeId 

IF @@ROWCOUNT = 1
	BEGIN
		SET @Msg = @Msg + ' LEAD ID ' + CAST(@LeadId AS VARCHAR(10)) + ' HAS BEEN REMOVED FROM THE ' + CAST(@LeadSheetDate AS VARCHAR(12)) + ' LEAD SHEET.'
	END

GO



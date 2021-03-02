USE LeafFilterOrderApp
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE spUpdateOffice

@Zip int,
@OfficeId int,
@OfficeRunId int,
@OfficeCoverageId int

AS 

	BEGIN
		IF EXISTS ()
			BEGIN
			UPDATE -- TABLE
				SET --id  = @id,
				
			WHERE --id = @id
			END
		ELSE
			BEGIN
				exec 
			END
	END
GO
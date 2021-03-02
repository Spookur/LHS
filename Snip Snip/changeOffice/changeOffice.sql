SELECT *
FROM tblOfficeCoverage
WHERE Zip = 'L8B 0P1'

SELECT * 
FROM tblOfficeRun
WHERE OfficeId = 47



BEGIN TRAN
UPDATE tblOfficeCoverage
SET OfficeRunId = 247, OfficeId = 47, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE OfficeCoverageId = 21632 


ROLLBACK TRAN
COMMIT TRAN
SELECT *
FROM tblOfficeCoverage
WHERE Zip = 'L1R 1S5'

SELECT * 
FROM tblOfficeRun
WHERE OfficeId = 67



BEGIN TRAN
UPDATE tblOfficeCoverage
SET OfficeRunId = 246, OfficeId = 67, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE OfficeCoverageId = 69619

ROLLBACK TRAN
COMMIT TRAN

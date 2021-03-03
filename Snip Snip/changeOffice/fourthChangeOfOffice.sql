SELECT *
FROM tblOfficeCoverage
WHERE Zip = 'L0E 1E0 '

SELECT * 
FROM tblOfficeRun
WHERE OfficeId = 67



BEGIN TRAN
UPDATE tblOfficeCoverage
SET OfficeRunId = 431, OfficeId = 67, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE OfficeCoverageId = 66031 


ROLLBACK TRAN
COMMIT TRAN
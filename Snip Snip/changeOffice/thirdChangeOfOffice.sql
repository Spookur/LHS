-- search the given zip code for OfficeCoverageId and OfficeId
SELECT *
FROM tblOfficeCoverage
WHERE Zip = 'L1T 3J3'

-- find the correct OfficeRunId
SELECT * 
FROM tblOfficeRun
WHERE OfficeId = 67


-- set to the correct office 
BEGIN TRAN
UPDATE tblOfficeCoverage
SET OfficeRunId = 431, OfficeId = 67, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE OfficeCoverageId = 74535 


ROLLBACK TRAN
COMMIT TRAN
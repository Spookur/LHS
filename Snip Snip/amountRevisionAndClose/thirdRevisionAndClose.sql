SELECT * 
FROM tblJobRevision
WHERE JobId = 533503

SELECT * 
FROM tblLaborBillRevisions
WHERE JobRevisionId = 23039

BEGIN TRAN
UPDATE tblLaborBillRevisions
SET NewInstaller1Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23039 AND ItemId = 59

UPDATE tblJobRevision
SET LaborBillCompleted = 1 
WHERE JobRevisionId = 23039

ROLLBACK TRAN
COMMIT TRAN
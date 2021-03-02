SELECT *
FROM tblJob
WHERE JobId = 794376

SELECT * 
FROM tblLaborBill 
WHERE JobId = 794376

SELECT * 
FROM tblJobRevision
WHERE JobId = 794376

SELECT * 
FROM tblLaborBillRevisions
WHERE JobRevisionId = 23016


BEGIN TRAN 
UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 2

UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 17

UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 19

UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 41

UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 42

UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 45

UPDATE tblLaborBillRevisions
SET NewInstaller2Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23016 AND ItemId = 46

UPDATE tblJobRevision
SET LaborBillCompleted = 1
WHERE JobRevisionId = 23016


ROLLBACK TRAN
COMMIT TRAN
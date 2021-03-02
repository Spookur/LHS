SELECT * 
FROM tblJob
WHERE JobId = 527186


SELECT * 
FROM tblLaborBill
WHERE JobId = 527186

SELECT * 
FROM tblLaborBillRevisions
WHERE JobRevisionId = 23011

SELECT * 
FROM tblJobRevision
WHERE JobId = 527186



SELECT * 
FROM tblItem

-- INSTALL 5" ID = 27
-- EXTRA LABOR ID = 19
-- 5" A ELBOW ID = 41


BEGIN TRAN
UPDATE tblLaborBillRevisions
SET NewInstaller1Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23011 AND ItemId = 19 

UPDATE tblLaborBillRevisions
SET NewInstaller1Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23011 AND ItemId = 27 

UPDATE tblLaborBillRevisions
SET NewInstaller1Amount = 0.00, DateMod = GETDATE(), UserIdMod = 'NOCLOGS\wkelly'
WHERE JobRevisionId = 23011 AND ItemId = 41 

UPDATE tblJobRevision
SET LaborBillCompleted = 1 
WHERE JobRevisionId = 23011


ROLLBACK TRAN
COMMIT TRAN
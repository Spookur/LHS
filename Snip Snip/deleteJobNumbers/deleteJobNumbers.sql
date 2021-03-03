SELECT * 
FROM tblLead
WHERE LeadId = 4525062

SELECT * 
FROM tblJob
WHERE LeadId = 4525062

-- change job number to JobId
BEGIN TRAN
DELETE FROM tblJob
WHERE JobId = 924706

DELETE FROM tblJob
WHERE JobId = 924707

DELETE FROM tblJob
WHERE JobId = 924708

DELETE FROM tblJob
WHERE JobId = 924710

-- if a change to rehash, etc. is needed, use INSERT INTO and input the values


ROLLBACK TRAN
COMMIT TRAN

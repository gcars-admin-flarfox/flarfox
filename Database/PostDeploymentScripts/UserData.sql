MERGE INTO [User] AS Target
USING (
    VALUES
        ('Admin', 'gcars169@gmail.com', 9704005942, -1, GETDATE(), -1, GETDATE())
	) AS Source (Username, EmailId, MobileNumber, CreatedBy, CreatedDate,ModifiedBy, ModifiedDate)
ON
		Target.Username = Source.Username
    AND Target.EmailId = Source.EmailId
WHEN MATCHED THEN
	UPDATE SET
		Target.MobileNumber = Source.MobileNumber,
		Target.ModifiedBy = Source.ModifiedBy,
		Target.ModifiedDate = Source.ModifiedDate
WHEN NOT MATCHED BY TARGET THEN
    INSERT (Username, EmailId, MobileNumber, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    VALUES (Source.Username, Source.EmailId, Source.MobileNumber, Source.CreatedBy, Source.CreatedDate, Source.ModifiedBy, Source.ModifiedDate);

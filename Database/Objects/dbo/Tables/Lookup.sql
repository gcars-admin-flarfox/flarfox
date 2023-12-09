CREATE TABLE [dbo].[Lookup]
(
	LookupId		INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	LookupType		NVARCHAR(20) NOT NULL,
	LookupValue		NVARCHAR(50) NOT NULL,
	CreatedBy		INT REFERENCES [User](UserId),
	CreatedDate		DATETIME,
	ModifiedBy		INT REFERENCES [User](UserId),
	ModifiedDate	DATETIME
)

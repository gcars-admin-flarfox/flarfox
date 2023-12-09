CREATE TABLE [dbo].[User]
(
	UserId			INT NOT NULL PRIMARY KEY Identity(1,1),
	Úsername		NVARCHAR(30) NOT NULL,
	EmailId			NVARCHAR(30) NOT NULL,
	MobileNumber	NVARCHAR(20) NOT NULL,
	CreatedBy		INT,
	CreatedDate		DATETIME,
	ModifiedBy		INT,
	ModifiedDate	DATETIME
)

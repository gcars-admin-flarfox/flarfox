CREATE TABLE [dbo].[PropertySchedule]
(
	[PropertyScheduleId] INT NOT NULL PRIMARY KEY,
	PropertyDetailId	INT REFERENCES PropertyDetails(PropertyDetailId),
	Schedule			DATETIME,
	CreatedBy			INT REFERENCES [User](UserId),
	CreatedDate			DATETIME,
	ModifiedBy			INT REFERENCES [User](UserId),
	ModifiedDate		DATETIME
)

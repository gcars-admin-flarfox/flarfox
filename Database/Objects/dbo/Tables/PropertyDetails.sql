CREATE TABLE [dbo].[PropertyDetails]
(
	PropertyDetailId					INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	ApartmentTypeLookupId				INT NOT NULL,
	BHKTypeLookupId						INT NOT NULL,
	[Floor]								INT NOT NULL,
	[TotalFloor]						INT NOT NULL,
	PropertyAgeInYears					INT NOT NULL,
	FacingLookupId						INT NOT NULL,
	BuildUpAreaInSFT					INT NOT NULL,
	PropertyAvailabilityTypeLookUpId	INT NOT NULL,
	CreatedBy							INT REFERENCES [User](UserId),
	CreatedDate							DATETIME,
	ModifiedBy							INT REFERENCES [User](UserId),
	ModifiedDate						DATETIME
)
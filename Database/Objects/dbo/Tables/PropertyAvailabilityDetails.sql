CREATE TABLE [dbo].[PropertyAvailabilityDetails]
(
	PropertyAvailabilityDetailId		INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	PropertyDetailId					INT NOT NULL REFERENCES PropertyDetails(PropertyDetailId),
	ExpectedRent						INT NOT NULL,
	ExpectedDeposit						INT NOT NULL,
	IsRentNegotiable					BIT,
	MonthlyMaintenanceLookupTypeId		INT NOT NULL REFERENCES [Lookup](LookupId),
	MaintenanceAmount					INT NOT NULL,
	AvailableFrom						DATETIME NOT NULL,
	PreferredTenantsLookUpIds			NVARCHAR(100),
	FurnishingLookupId					INT NOT NULL  REFERENCES [Lookup](LookupId),
	ParkingLookupId						INT NOT NULL  REFERENCES [Lookup](LookupId),
	PropertyAvailabilityDescription		NVARCHAR(1000),
	CreatedBy							INT REFERENCES [User](UserId),
	CreatedDate							DATETIME,
	ModifiedBy							INT REFERENCES [User](UserId),
	ModifiedDate						DATETIME
)

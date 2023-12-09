CREATE TABLE [dbo].[PropertyAmenities]
(
	PropertyAmenitiesId			INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	PropertyDetailId			INT NOT NULL REFERENCES PropertyDetails(PropertyDetailId),
	Bathrooms					INT NOT NULL,
	Balcony						INT NOT NULL,
	WaterSupplyLookupId			INT NOT NULL REFERENCES [Lookup](LookupId),
	GymAvailability				BIT NOT NULL,
	NonVegeterainsAllowed		BIT NOT NULL,
	IsGatedSecurityAvailable	BIT NOT NULL,
	WhoWillShowPropertyLookupId INT NOT NULL  REFERENCES [Lookup](LookupId),
	SecondaryMobileNumber		NVARCHAR(12) NOT NULL,
	CreatedBy					INT REFERENCES [User](UserId),
	CreatedDate					DateTime,
	ModifiedBy					INT REFERENCES [User](UserId),
	ModifiedDate				DateTime
)

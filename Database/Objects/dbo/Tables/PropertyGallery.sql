CREATE TABLE [dbo].[PropertyGallery]
(
	PropertyGalleryId	INT NOT NULL PRIMARY KEY,
	PropertyDetailId	INT REFERENCES PropertyDetails(PropertyDetailId),
	ImageUri			NVARCHAR(1000),
	CreatedBy			INT REFERENCES [User](UserId),
	CreatedDate			DATETIME,
	ModifiedBy			INT REFERENCES [User](UserId),
	ModifiedDate		DATETIME
)

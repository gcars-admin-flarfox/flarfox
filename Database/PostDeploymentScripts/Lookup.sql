MERGE INTO [Lookup] AS Target
USING (
    VALUES
        ('ApartmentType', 'Flat', 1, GETDATE(), 1, GETDATE()),
		('ApartmentType', 'Independent House/Villa', 1, GETDATE(), 1, GETDATE()),
		('BHKType', '1 BHK', 1, GETDATE(), 1, GETDATE()),
		('BHKType', '2 BHK', 1, GETDATE(), 1, GETDATE()),
		('BHKType', '3 BHK', 1, GETDATE(), 1, GETDATE()),
		('BHKType', '4 BHK', 1, GETDATE(), 1, GETDATE()),
		('BHKType', '4+ BHK', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'East', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'West', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'North', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'South', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'North East', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'South East', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'North West', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'South West', 1, GETDATE(), 1, GETDATE()),
		('Facing', 'Dont Know', 1, GETDATE(), 1, GETDATE()),
		('PropertyAvailability', 'Available', 1, GETDATE(), 1, GETDATE()),
		('PropertyAvailability', 'Not Available', 1, GETDATE(), 1, GETDATE()),
		('PropertyAvailability', 'Disposed', 1, GETDATE(), 1, GETDATE()),
		('PropertyAvailability', 'Occupied', 1, GETDATE(), 1, GETDATE())
	) AS Source (LookupType, LookupValue, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
ON
    Target.LookupType = Source.LookupType
    AND Target.LookupValue = Source.LookupValue
WHEN NOT MATCHED BY TARGET THEN
    INSERT (LookupType, LookupValue, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate)
    VALUES (Source.LookupType, Source.LookupValue, Source.CreatedBy, Source.CreatedDate, Source.ModifiedBy, Source.ModifiedDate);

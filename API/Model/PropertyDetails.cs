namespace API.Model
{
    public class PropertyDetails
    {
        public int ApartmentTypeId { get; set; }
        public int ApartmentTypeLookupId { get; set; }
        public int BHKTypeLookupId { get; set; }
        public int Floor { get; set; }
        public int TotalFloor  { get; set; }
        public int PropertyAgeInYears { get; set; }
        public int FacingLookupId { get; set; }
        public int BuildUpAreaInSft { get; set; }
        public int PropertyAvailabilityTypeLookUpId { get; set; }
    }
}

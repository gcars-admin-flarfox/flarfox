namespace API.Domain
{
    public class PropertyDetails
    {
        public int ApartmentTypeLookupId { get; set; }
        public int BHKTypeLookupId { get; set; }
        public int Floor { get; set; }
        public int TotalFloor  { get; set; }
        public int PropertyAgeInYears { get; set; }
        public int FacingLookupId { get; set; }
        public int BuildUpAreaInSft { get; set; }
        public int PropertyAvailabilityTypeLookUpId { get; set; }
        public int CreatedBy { get; set; }
        public int ModifiedBy { get; set; }
    }
}

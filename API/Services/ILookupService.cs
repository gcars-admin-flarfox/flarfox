namespace API.Services
{
    public interface ILookupService
    {
        IEnumerable<Domain.Lookup> GetApartmentTypes();
        IEnumerable<Domain.Lookup> GetBhkTypes();
        IEnumerable<Domain.Lookup> GetFacingTypes();
    }
}

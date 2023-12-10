namespace API.Repositories
{
    public interface ILookupRepository
    {
        IEnumerable<Model.Lookup> GetApartmentTypes();
        IEnumerable<Model.Lookup> GetBhkTypes();
        IEnumerable<Model.Lookup> GetFacingTypes();
    }
}

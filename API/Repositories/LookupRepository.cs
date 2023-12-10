using API.Model;

namespace API.Repositories
{
    public class LookupRepository : ILookupRepository
    {
        private FlatfoxDbContext _flatfoxDbContext;
        public LookupRepository(FlatfoxDbContext flatfoxDbContext)
        {
            _flatfoxDbContext = flatfoxDbContext;
        }

        public IEnumerable<Model.Lookup> GetApartmentTypes()
        {
            var apartmentTypes = _flatfoxDbContext.Lookup.Where(p => p.LookupType.Equals("ApartmentType")).AsEnumerable();
            return apartmentTypes;
        }

        public IEnumerable<Lookup> GetBhkTypes()
        {
            var bhkTypes = _flatfoxDbContext.Lookup.Where(p => p.LookupType.Equals("BHKType")).AsEnumerable();
            return bhkTypes;
        }

        public IEnumerable<Lookup> GetFacingTypes()
        {
            var bhkTypes = _flatfoxDbContext.Lookup.Where(p => p.LookupType.Equals("Facing")).AsEnumerable();
            return bhkTypes;
        }
    }
}

using API.Model;
using System.Linq;

namespace API.Repositories
{
    public class PropertyDetailsRepository : IPropertyDetailsRepository
    {
        private FlatfoxDbContext _context;
        public PropertyDetailsRepository(FlatfoxDbContext context)
        {
            _context = context;
        }

        public void SavePropertyDetails(PropertyDetails propertyDetails)
        {
            _context.PropertyDetails.Add(propertyDetails);
            _context.SaveChanges();
        }
    }
}

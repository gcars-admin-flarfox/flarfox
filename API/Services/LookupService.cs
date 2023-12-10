using API.Model;
using API.Repositories;
using AutoMapper;

namespace API.Services
{
    public class LookupService : ILookupService
    {
        private readonly ILookupRepository _lookupRepository;
        private readonly IMapper _mapper;
        public LookupService(ILookupRepository lookupRepository, IMapper mapper)
        {
            _lookupRepository = lookupRepository;
            _mapper = mapper;
        }

        public IEnumerable<Domain.Lookup> GetApartmentTypes()
        {
            var apartmentTypes = _lookupRepository.GetApartmentTypes();
            return _mapper.Map<IEnumerable<Domain.Lookup>>(apartmentTypes);
        }

        public IEnumerable<Domain.Lookup> GetBhkTypes()
        {
            var bhkTypes = _lookupRepository.GetBhkTypes();
            return _mapper.Map<IEnumerable<Domain.Lookup>>(bhkTypes);
        }

        public IEnumerable<Domain.Lookup> GetFacingTypes()
        {
            var facingTypes = _lookupRepository.GetFacingTypes();
            return _mapper.Map<IEnumerable<Domain.Lookup>>(facingTypes);
        }
    }
}

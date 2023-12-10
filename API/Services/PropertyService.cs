using API.Model;
using API.Repositories;
using AutoMapper;

namespace API.Services
{
    public class PropertyService : IPropertyService
    {
        private readonly IMapper _mapper;
        private IPropertyDetailsRepository _propertyDetailsRepository;

        public PropertyService(IMapper mapper, IPropertyDetailsRepository propertyDetailsRepository)
        {
            _mapper = mapper;
            _propertyDetailsRepository = propertyDetailsRepository;
        }
        public void SavePropertyDetails(Domain.PropertyDetails propertyDetails)
        {
            var modelPropertyDetails = _mapper.Map<Model.PropertyDetails>(propertyDetails);
            _propertyDetailsRepository.SavePropertyDetails(modelPropertyDetails);

        }
    }
}

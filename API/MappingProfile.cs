using AutoMapper;

namespace API
{
    public class MappingProfile :Profile
    {
        public MappingProfile()
        {
            CreateMap<Model.Lookup, Domain.Lookup>();
        }
    }
}

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using API.Model;

namespace API.Services
{
    public interface IPropertyService
    {
        void SavePropertyDetails(PropertyDetails propertyDetails);
    }
}

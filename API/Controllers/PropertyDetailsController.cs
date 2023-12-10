using API.Services;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/PropertyDetails")]
    [ApiController]
    public class PropertyDetailsController : ControllerBase
    {
        private readonly IPropertyService propertyService;
        public PropertyDetailsController(IPropertyService _propertyService)
        {
            propertyService = _propertyService;
        }

        [HttpPost("SavePropertyDetails")]
        public IActionResult Save(Domain.PropertyDetails propertyDetails)
        {
            propertyService.SavePropertyDetails(propertyDetails);
            return Ok();
        }
    }
}

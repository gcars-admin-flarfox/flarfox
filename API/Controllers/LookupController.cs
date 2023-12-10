using API.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/Lookup")]
    [ApiController]
    public class LookupController : ControllerBase
    {
        private readonly ILookupService _lookupService;
        public LookupController(ILookupService lookupService)
        {
            _lookupService = lookupService;
        }

        [HttpGet("GetApartmentTypes")]
        public IActionResult GetApartmentTypes()
        {
            return Ok(_lookupService.GetApartmentTypes());
        }

        [HttpGet("GetBhkTypes")]
        public IActionResult GetBhkTypes()
        {
            return Ok(_lookupService.GetBhkTypes());
        }

        [HttpGet("GetFacingTypes")]
        public IActionResult GetFacingTypes()
        {
            return Ok(_lookupService.GetFacingTypes());
        }
    }
}

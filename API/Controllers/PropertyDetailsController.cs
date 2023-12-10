using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/PropertyDetails")]
    [ApiController]
    public class PropertyDetailsController : ControllerBase
    {
        [HttpPost]
        public IActionResult SavePropertyDetails()
        {
            return Ok();
        }
    }
}

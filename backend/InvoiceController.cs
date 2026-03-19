
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace BuggyApp.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class InvoiceController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetInvoice()
        {
            List<Item> items = null;
            if (items != null && items.Count == 0)
            {
                return Ok(new { items });
            }
            return NotFound("No invoice found");
        }

        public class Item
        {
            public string Name { get; set; }
            public double price { get; set; }
        }
    }
}

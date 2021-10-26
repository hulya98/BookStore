using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Dtos
{
    public class CarouselDto
    {
        public int CarouselId { get; set; }
        public string Text { get; set; }
        public string ImageUrl { get; set; }
        public IFormFile Image { get; set; }

    }
}

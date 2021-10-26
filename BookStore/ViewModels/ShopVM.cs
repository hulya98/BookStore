using BookStore.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.ViewModels
{
    public class ShopVM
    {
        public IEnumerable<GenreDto> Genres { get; set; }
        public IEnumerable<BookDto> Books { get; set; }
        public IEnumerable<CarouselDto> Carousels { get; set; }

    }
}

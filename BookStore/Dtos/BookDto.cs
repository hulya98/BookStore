using BookStore.Models;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Dtos
{
    public class BookDto
    {
        public int BookId { get; set; }
        public int WriterId { get; set; }
        public int GenreId { get; set; }
        public string BookName { get; set; }
        public string Description { get; set; }
        public IFormFile Image { get; set; }
        public string ImageUrl { get; set; }
        public int Stock { get; set; }
        public decimal Price { get; set; }
        public int SalePercent { get; set; }
        public decimal DiscountedPrice { get; set; }
        public virtual WriterDto Writer { get; set; }
        public virtual GenreDto Genre { get; set; }
    }
}

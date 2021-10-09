using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }
        public int WriterId { get; set; }
        public int GenreId { get; set; }
        public string BookName { get; set; }
        public string ImageUrl { get; set; }
        public int Stock { get; set; }
        public decimal Price { get; set; }
        public int SalePercent { get; set; }
        public decimal DiscountedPrice { get; set; }
        public virtual Writer Writers { get; set; }
        public virtual Genre Genres { get; set; }
    }
}

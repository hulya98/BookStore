﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public class Carousel
    { 
        [Key]
        public int CarouselId { get; set; }
        public string Text { get; set; }
        public string ImageUrl { get; set; }
    }
}

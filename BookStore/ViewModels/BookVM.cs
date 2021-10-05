using BookStore.Dtos;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.ViewModels
{
    public class BookVM
    {
        public List<GenreDto> Genres { get; set; }
        public List<WriterDto> Writers { get; set; }
        public BookDto Book { get; set; }
    }
}

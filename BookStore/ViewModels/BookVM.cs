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
        public IEnumerable<GenreDto> Genres { get; set; }
        public IEnumerable<WriterDto> Writers { get; set; }
        public BookDto Book { get; set; }
    }
}

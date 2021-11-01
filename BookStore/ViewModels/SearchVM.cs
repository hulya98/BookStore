using BookStore.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.ViewModels
{
    public class SearchVM
    {
        public IEnumerable<BookDto> BookDtos { get; set; }
        public IEnumerable<BookDto> LikeBookForGenre { get; set; }
        //public IEnumerable<BookDto> LikeBookForWriter { get; set; }
        public string GenreName { get; set; }
        public string WriterName { get; set; }
    }
}

using AutoMapper;
using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Dtos
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Book, BookDto>();
            CreateMap<BookDto, Book>();
            CreateMap<Genre, GenreDto>();
            CreateMap<GenreDto, Genre>();
            CreateMap<Writer, WriterDto>();
            CreateMap<WriterDto, Writer>();
            CreateMap<Carousel, CarouselDto>();
            CreateMap<CarouselDto, Carousel>();
        }
    }
}

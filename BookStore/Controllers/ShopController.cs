using AutoMapper;
using BookStore.Dtos;
using BookStore.Models;
using BookStore.Repositories;
using BookStore.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Controllers
{
    public class ShopController : Controller
    {
        private readonly IMapper _mapper;
        public ShopController(IMapper mapper)
        {
            _mapper = mapper;
        }
        Context context = new Context();
        GenreRepository genreRepository = new GenreRepository();
        BookRepository bookRepository = new BookRepository();
        public IActionResult Index()
        {
            var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList());
            var books = _mapper.Map<List<Book>, List<BookDto>>(bookRepository.TList());
            ShopVM shopVM = new ShopVM()
            {
                Genres = genres,
                Books = books
            };
            return View(shopVM);
        }
    }
}

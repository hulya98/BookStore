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
        CarouselRepository carouselRepository = new CarouselRepository();
        public IActionResult Index()
        {
            System.Random rnd = new System.Random();
            var chosenItems = bookRepository.TList();
            List<Book> newChosenItems = new List<Book>();

            for (int i = 1; i <= chosenItems.Count; i++)
            {
                int index = rnd.Next(chosenItems.Count);
                if (!newChosenItems.Contains(chosenItems[index]))
                {
                    newChosenItems.Add(chosenItems[index]);
                }
            }


            var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList());
            var books = _mapper.Map<List<Book>, List<BookDto>>(bookRepository.TList());
            var newBooks = _mapper.Map<List<Book>, List<BookDto>>(newChosenItems.OrderByDescending(x => x.BookId).Take(10).ToList());
            var carousels = _mapper.Map<List<Carousel>, List<CarouselDto>>(carouselRepository.TList());
            ShopVM shopVM = new ShopVM()
            {
                Genres = genres,
                Books = books,
                NewBooks = newBooks,
                Carousels = carousels
            };
            return View(shopVM);
        }

        public IActionResult Search(string item)
        {
            string res = item.ReplaceForSearch();
            var book = context.Books.Include(x => x.Writer).Include(x => x.Genre).Where(x => x.BookName.Replace("ə", "e").Replace("ş", "s").Replace("ğ", "g").Replace("i", "ı").Replace("ç", "c").Replace("ü", "u") == res).ToList();
            return View("BookDetails", book);
        }


        public IActionResult BookDetails(int id)
        {
            var book = context.Books.Include(x => x.Writer).Include(x => x.Genre).Where(x => x.BookId == id).ToList();
            return View(book.ToList());
        }
    }
}

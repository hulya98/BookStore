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
            if (item != null)
            {
                string res = Methods.ReplaceForSearch(item);
                var book = context.Books.Include(x => x.Writer).Include(x => x.Genre).Where(x => x.BookName.Replace("ə", "e").Replace("ş", "s").Replace("ğ", "g").Replace("i", "ı").Replace("ç", "c").Replace("ü", "u").Contains(res)).ToList();
                var genre = context.Genres.Where(x => x.GenreName.Contains(item)).Where(x => x.Status == true).ToList();
                var writer = context.Writers.Where(x => x.WriterName.Contains(item)).Where(x => x.Status == true).ToList();
                if (book.Count != 0)
                {
                    var resBook = _mapper.Map<List<Book>, List<BookDto>>(book);
                    List<Book> likeBookForGenre = context.Books.Where(x => x.GenreId == book[0].GenreId).ToList();
                    likeBookForGenre.Remove(book[0]);
                    var resLikeBookForGenre = _mapper.Map<List<Book>, List<BookDto>>(likeBookForGenre);
                    SearchVM searchVM = new SearchVM
                    {
                        BookDtos = resBook,
                        LikeBookForGenre = resLikeBookForGenre
                    };
                    return View("BookDetails", searchVM);
                }
                else if (genre.Count != 0)
                {
                    List<Book> BookForGenre = context.Books.Where(x => x.GenreId == genre[0].GenreId).ToList();
                    var ResBookForGenre = _mapper.Map<List<Book>, List<BookDto>>(BookForGenre);
                    SearchVM searchVM = new SearchVM
                    {
                        BookDtos = ResBookForGenre,
                        GenreName = genre[0].GenreName
                    };
                    return View("SearchResult", searchVM);
                }
                else if (writer.Count != 0)
                {
                    List<Book> BookForWriter = context.Books.Where(x => x.WriterId == writer[0].WriterId).ToList();
                    var ResBookForWriter = _mapper.Map<List<Book>, List<BookDto>>(BookForWriter);
                    SearchVM searchVM = new SearchVM
                    {
                        BookDtos = ResBookForWriter,
                        WriterName = writer[0].WriterName
                    };
                    return View("SearchResult", searchVM);
                }
                return View("ErrorPage");
            }
            return RedirectToAction("Index");

        }

        public IActionResult BookDetails(int id)
        {
            var book = context.Books.Include(x => x.Writer).Include(x => x.Genre).Where(x => x.BookId == id).ToList();
            var resBook = _mapper.Map<List<Book>, List<BookDto>>(book);
            var likeBookForGenre = context.Books.Where(x => x.GenreId == book[0].GenreId).ToList();
            likeBookForGenre.Remove(book[0]);
            var resLikeBookForGenre = _mapper.Map<List<Book>, List<BookDto>>(likeBookForGenre);
            SearchVM searchVM = new SearchVM
            {
                BookDtos = resBook,
                LikeBookForGenre = resLikeBookForGenre
            };
            return View(searchVM);
        }
    }
}

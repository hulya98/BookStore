using BookStore.Models;
using BookStore.Repositories;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Hosting;
using AutoMapper;
using BookStore.Dtos;
using BookStore.ViewModels;
using Microsoft.EntityFrameworkCore;

namespace BookStore.Controllers
{
    public class BookController : Controller
    {
        private readonly IWebHostEnvironment _iwebhost;
        //private IHostingEnvironment _environment;

        private readonly IMapper _mapper;
        public BookController(IMapper mapper, IWebHostEnvironment iwebhost)
        {
            _mapper = mapper;
            _iwebhost = iwebhost;
            //_iwebhost = iwebhost;
            //_environment = environment;
        }
        BookRepository bookRepository = new BookRepository();
        GenreRepository genreRepository = new GenreRepository();
        WriterRepository writerRepository = new WriterRepository();
        Context context = new Context();
        public IActionResult Index()
        {

            var book = context.Books.Include(x => x.Writer).Include(x => x.Genre).ToList();
            return View(book.ToList());
        }


        [HttpGet]
        public IActionResult BookAdd()
        {
            var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList()).Where(x => x.Status == true);
            var writers = _mapper.Map<List<Writer>, List<WriterDto>>(writerRepository.TList()).Where(x => x.Status == true);
            BookVM bookVM = new BookVM();
            bookVM.Genres = genres;
            bookVM.Writers = writers;
            return View(bookVM);
        }

        [HttpPost]
        public async Task<IActionResult> BookAdd(BookVM bookVM)
        {
            //AutoMapper
            var book = _mapper.Map<BookDto, Book>(bookVM.Book);
            if (ModelState.IsValid)
            {
                if (bookVM.Book.Image != null)
                {
                    string folder = "wwwroot/images/";
                    string ImageUrl = Guid.NewGuid().ToString() + bookVM.Book.Image.FileName;
                    folder += ImageUrl;
                    string serverFolder = Path.Combine(_iwebhost.WebRootPath, folder);

                    await bookVM.Book.Image.CopyToAsync(new FileStream(folder, FileMode.Create));

                    book.ImageUrl = ImageUrl;
                }
                bookRepository.AddT(book);
            }
            else
            {
                var messages = ModelState.ToList();
                var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList()).Where(x => x.Status == true);
                var writers = _mapper.Map<List<Writer>, List<WriterDto>>(writerRepository.TList()).Where(x => x.Status == true);
                bookVM.Genres = genres;
                bookVM.Writers = writers;
                return View(bookVM);
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult BookGet(int id)
        {
            var bookForId = bookRepository.GetT(id);
            var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList()).Where(x => x.Status == true);
            var writers = _mapper.Map<List<Writer>, List<WriterDto>>(writerRepository.TList()).Where(x => x.Status == true);
            BookVM bookVM = new BookVM()
            {
                Book = _mapper.Map<Book, BookDto>(bookForId),
                Genres = genres,
                Writers = writers
            };
            TempData["ImageUrl"] = bookForId.ImageUrl;
            return View(bookVM);
        }

        [HttpPost]
        public async Task<IActionResult> BookUpdate(BookVM bookVM)
        {
            var book = _mapper.Map<BookDto, Book>(bookVM.Book);
            //var x = bookRepository.GetT(book);
            if (ModelState.IsValid)
            {

                if (bookVM.Book.Image != null)
                {
                    string folder = "wwwroot/images/";
                    string ImageUrl = Guid.NewGuid().ToString() + bookVM.Book.Image.FileName;
                    folder += ImageUrl;
                    string serverFolder = Path.Combine(_iwebhost.WebRootPath, folder);

                    await bookVM.Book.Image.CopyToAsync(new FileStream(folder, FileMode.Create));

                    book.ImageUrl = ImageUrl;
                }
                else
                {
                    book.ImageUrl = TempData["ImageUrl"].ToString();
                }
                bookRepository.UpdateT(book);
            }
            else
            {
                var messages = ModelState.ToList();
                var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList()).Where(x => x.Status == true);
                var writers = _mapper.Map<List<Writer>, List<WriterDto>>(writerRepository.TList()).Where(x => x.Status == true);
                bookVM.Genres = genres;
                bookVM.Writers = writers;
                return View(bookVM);
            }

            return RedirectToAction("Index");
        }

        public IActionResult BookDelete(int id)
        {
            var x = bookRepository.GetT(id);
            bookRepository.DeleteT(x);
            return RedirectToAction("Index");
        }
    }
}

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

namespace BookStore.Controllers
{
    public class BookController : Controller
    {
        //private readonly IWebHostEnvironment _iwebhost;
        //private IHostingEnvironment _environment;

        private readonly IMapper _mapper;
        public BookController(IMapper mapper)
        {
            _mapper = mapper;
            //_iwebhost = iwebhost;
            //_environment = environment;
        }
        BookRepository bookRepository = new BookRepository();
        GenreRepository genreRepository = new GenreRepository();
        WriterRepository writerRepository = new WriterRepository();
        Context context = new Context();
        public IActionResult Index()
        {
            return View(bookRepository.TList());
        }

        [HttpGet]
        public IActionResult BookAdd()
        {
            var genres = _mapper.Map<List<Genre>, List<GenreDto>>(genreRepository.TList());
            var writers = _mapper.Map<List<Writer>, List<WriterDto>>(writerRepository.TList());
            BookVM bookVM = new BookVM();
            bookVM.Genres = genres;
            bookVM.Writers = writers;
            //bookVM.Book = book.Book;
            return View(bookVM);
        }

        [HttpPost]
        public IActionResult BookAdd(BookVM bookVM,IFormFile formFile)
        {
            //AutoMapper
            //string imgext = Path.GetExtension(viewModels.Books.ImageUrl);
            //if (imgext.Contains(".jpg") || imgext.Contains("png"))
            //{
            //    var saveimg = Path.Combine(_environment.WebRootPath, "images", viewModels.Books.ImageUrl);
            //    var stream = new FileStream(saveimg, FileMode.Create);
            //    await viewModels.Book.Image.CopyToAsync(stream);
            //    viewModels.Books.ImageUrl = saveimg;
            //}
            //if (!ModelState.IsValid)
            //{
            //    var messages = ModelState.ToList();
            //    return View("BookAdd");
            //}
            //bookRepository.AddT(viewModels.Books);
            return RedirectToAction("Index");
        }

    }
}

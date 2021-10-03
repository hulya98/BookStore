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
namespace BookStore.Controllers
{
    public class BookController : Controller
    {
        private readonly IWebHostEnvironment _iwebhost;
        private IHostingEnvironment _environment;
        public BookController(IWebHostEnvironment iwebhost, IHostingEnvironment environment)
        {
            _iwebhost = iwebhost;
            _environment = environment;
        }
        Context context = new Context();
        BookRepository bookRepository = new BookRepository();
        public IActionResult Index()
        {
            return View(bookRepository.TList());
        }

        [HttpGet]
        public IActionResult BookAdd(Book book)
        {
            List<SelectListItem> GenresList = (from x in context.Genres.ToList()
                                               select new SelectListItem
                                               {
                                                   Text = x.GenreName,
                                                   Value = x.GenreId.ToString()
                                               }).ToList();

            List<SelectListItem> WritersList = (from x in context.Writers.ToList()
                                                select new SelectListItem
                                                {
                                                    Text = x.WriterName,
                                                    Value = x.WriterId.ToString()
                                                }).ToList();

            ViewModels viewModels = new ViewModels();
            viewModels.Books = book;
            viewModels.GenreList = GenresList;
            viewModels.WriterList = WritersList;

            return View(viewModels);
        }

        [HttpPost]
        public async Task<IActionResult> BookAdd(ViewModels viewModels, IFormFile Upload)
        {
            string imgext = Path.GetExtension(viewModels.Books.ImageUrl);
            if (imgext.Contains(".jpg") || imgext.Contains("png"))
            {
                var saveimg = Path.Combine(_environment.WebRootPath, "images", viewModels.Books.ImageUrl);
                var stream = new FileStream(saveimg, FileMode.Create);
                //await viewModels.Books.ImageUrl.CopyToAsync(stream);
                viewModels.Books.ImageUrl = saveimg;
            }
            if (!ModelState.IsValid)
            {
                var messages = ModelState.ToList();
                return View("BookAdd");
            }
            bookRepository.AddT(viewModels.Books);
            return RedirectToAction("Index");
        }

    }
}

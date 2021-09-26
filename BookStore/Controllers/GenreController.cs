using BookStore.Models;
using BookStore.Repositories;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Controllers
{
    public class GenreController : Controller
    {
        GenreRepository genreRepository = new GenreRepository();
        public IActionResult Index()
        {
            return View(genreRepository.TList());
        }

        [HttpGet]
        public IActionResult GenreAdd()
        {
            return View();
        }

        [HttpPost]
        public IActionResult GenreAdd(Genre genre)
        {
            if (!ModelState.IsValid)
            {
                var messages = ModelState.ToList();
                return View("GenreAdd");
            }
            genreRepository.AddT(genre);
            return RedirectToAction("Index");
        }
    }
}

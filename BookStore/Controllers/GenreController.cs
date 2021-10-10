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
            bool dublicate = genreRepository.TList().Any(x => x.GenreName == genre.GenreName);
            ViewBag.Dublicate = dublicate;
            genre.Status = true;
            genreRepository.AddT(genre);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult GenreGet(int id)
        {
            var x = genreRepository.GetT(id);
            Genre genre = new Genre()
            {
                GenreName = x.GenreName,
                GenreId = x.GenreId,
                Status = x.Status
            };
            return View(genre);
        }


        [HttpPost]
        public IActionResult GenreUpdate(Genre genre)
        {
            var x = genreRepository.GetT(genre.GenreId);
            x.GenreName = genre.GenreName;
            genreRepository.UpdateT(x);
            return RedirectToAction("Index");
        }

        public IActionResult GenreDelete(int id)
        {
            var x = genreRepository.GetT(id);
            x.Status = false;
            genreRepository.UpdateT(x);
            return RedirectToAction("Index");
        }
    }
}

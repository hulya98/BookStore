using AutoMapper;
using BookStore.Dtos;
using BookStore.Models;
using BookStore.Repositories;
using BookStore.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace BookStore.Controllers
{
    public class GenreController : BaseController
    {
        GenreRepository genreRepository = new GenreRepository();

        private readonly IMapper _mapper;
        public GenreController(IMapper mapper)
        {
            _mapper = mapper;
        }
        public IActionResult Index()
        {
            return View(genreRepository.TList());
        }

        [HttpGet]
        public IActionResult GenreAdd()
        {
            string isFromBook = Request.Query["IsFromBook"].ToString();
            TempData["IsFromBook"] = isFromBook;
            return View();
        }


        [HttpPost]
        public IActionResult GenreAdd(GenreDto genreDto)
        {
            try
            {
                var genre = _mapper.Map<GenreDto, Genre>(genreDto);
                if (!ModelState.IsValid)
                {
                    var messages = ModelState.ToList();
                    return View("GenreAdd");
                }
                bool dublicate = genreRepository.TList().Any(x => x.GenreName == genre.GenreName);
                ViewBag.Dublicate = dublicate;
                genre.Status = true;
                genreRepository.AddT(genre);
                Notify("Data saved successfully");
            }
            catch (Exception ex)
            {

            }

            if (Convert.ToBoolean(TempData["IsFromBook"]))
            {
                return RedirectToAction("BookAdd", "Book");
            }
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
            try
            {
                var x = genreRepository.GetT(genre.GenreId);
                x.GenreName = genre.GenreName;
                genreRepository.UpdateT(x);
                Notify("Data saved successfully");
            }
            catch (Exception ex)
            {
                Notify("Could not save data", notificationType: NotificationType.error);
                return RedirectToAction("GenreGet", new { id = genre.GenreId });
            }

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

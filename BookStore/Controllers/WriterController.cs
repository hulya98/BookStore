using AutoMapper;
using BookStore.Dtos;
using BookStore.Models;
using BookStore.Repositories;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Controllers
{
    public class WriterController : Controller
    {
        WriterRepository writerRepository = new WriterRepository();
        private readonly IMapper _mapper;
        public WriterController(IMapper mapper)
        {
            _mapper = mapper;
        }
        public IActionResult Index()
        {
            return View(writerRepository.TList());
        }

        [HttpGet]
        public IActionResult WriterAdd()
        {
            string isFromBook = Request.Query["IsFromBook"].ToString();
            TempData["IsFromBook"] = isFromBook;
            return View();
        }

        [HttpPost]
        public IActionResult WriterAdd(WriterDto writerDto)
        {
            var writer = _mapper.Map<WriterDto, Writer>(writerDto);
            if (!ModelState.IsValid)
            {
                var messages = ModelState.ToList();
                return View("WriterAdd");
            }
            writerDto.Status = true;
            writerRepository.AddT(writer);
            if (Convert.ToBoolean(TempData["IsFromBook"]))
            {
                return RedirectToAction("BookAdd", "Book");
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult WriterGet(int id)
        {
            var x = writerRepository.GetT(id);
            Writer writer = new Writer()
            {
                WriterName = x.WriterName,
                WriterId = x.WriterId,
                Status = x.Status
            };
            return View(writer);
        }

        [HttpPost]
        public IActionResult WriterUpdate(Writer writer)
        {
            var x = writerRepository.GetT(writer.WriterId);
            x.WriterName = writer.WriterName;
            writerRepository.UpdateT(x);
            return RedirectToAction("Index");
        }

        public IActionResult WriterDelete(int id)
        {
            var x = writerRepository.GetT(id);
            x.Status = false;
            writerRepository.UpdateT(x);
            return RedirectToAction("Index");
        }
    }
}

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
        public IActionResult Index()
        {
            return View(writerRepository.TList());
        }

        [HttpGet]
        public IActionResult WriterAdd()
        {
            return View();
        }

        [HttpPost]
        public IActionResult WriterAdd(Writer writer)
        {
            if (!ModelState.IsValid)
            {
                var messages = ModelState.ToList();
                return View("WriterAdd");
            }
            writer.Status = true;
            writerRepository.AddT(writer);
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

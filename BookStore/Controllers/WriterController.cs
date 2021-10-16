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
    public class WriterController : BaseController
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
            try
            {
                var writer = _mapper.Map<WriterDto, Writer>(writerDto);
                if (!ModelState.IsValid)
                {
                    var messages = ModelState.ToList();
                    return View("WriterAdd");
                }
                writerDto.Status = true;
                writerRepository.AddT(writer);
                Notify("Data saved successfully");


            }
            catch (Exception ex)
            {
                Notify("Could not save data", notificationType: NotificationType.error);
                return RedirectToAction("WriteAdd");
            }
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
            WriterDto writer = new WriterDto()
            {
                WriterName = x.WriterName,
                WriterId = x.WriterId,
                Status = x.Status
            };
            return View(writer);
        }

        [HttpPost]
        public IActionResult WriterUpdate(WriterDto writerDto)
        {
            try
            {
                var writer = _mapper.Map<WriterDto, Writer>(writerDto);
                var x = writerRepository.GetT(writer.WriterId);
                x.WriterName = writer.WriterName;
                if (!ModelState.IsValid)
                {
                    var messages = ModelState.ToList();
                    return View("WriterGet");
                }
                writerRepository.UpdateT(x);
                Notify("Data saved successfully");

            }
            catch (Exception ex)
            {
                Notify("Could not save data", notificationType: NotificationType.error);
                return RedirectToAction("WriterGet", new { id = writerDto.WriterId });

            }
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

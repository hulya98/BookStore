using AutoMapper;
using BookStore.Dtos;
using BookStore.Models;
using BookStore.Repositories;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Controllers
{
    public class CarouselController : BaseController
    {
        private readonly IWebHostEnvironment _iwebhost;
        private readonly IMapper _mapper;
        public CarouselController(IMapper mapper, IWebHostEnvironment iwebhost)
        {
            _iwebhost = iwebhost;
            _mapper = mapper;
        }

        CarouselRepository carouselRepository = new CarouselRepository();
        Context context = new Context();
        public IActionResult Index()
        {
            return View(carouselRepository.TList());
        }

        [HttpGet]
        public IActionResult CarouselAdd()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CarouselAdd(CarouselDto carouselDto)
        {
            var carousel = _mapper.Map<CarouselDto, Carousel>(carouselDto);
            if (ModelState.IsValid)
            {
                if (carouselDto.Image != null)
                {
                    string folder = "wwwroot/images/";
                    string ImageUrl = Guid.NewGuid().ToString() + carouselDto.Image.FileName;
                    folder += ImageUrl;

                    await carouselDto.Image.CopyToAsync(new FileStream(folder, FileMode.Create));
                    carousel.ImageUrl = ImageUrl;
                }
                carouselRepository.AddT(carousel);
                Notify("Data saved successfully");
                return RedirectToAction("Index");
            }
            return View();
        }

        public IActionResult CarouselDelete(int id)
        {
            var x = carouselRepository.GetT(id);
            carouselRepository.DeleteT(x);
            Notify("Data Deleted Successfully");
            return View("Index");
        }

        [HttpGet]
        public IActionResult CarouselGet(int id)
        {
            var carouselForId = carouselRepository.GetT(id);
            var car = _mapper.Map<Carousel, CarouselDto>(carouselForId);
            TempData["Image"] = car.ImageUrl;

            return View(car);
        }

        [HttpPost]
        public async Task<IActionResult> CarouselUpdate(CarouselDto carouselDto)
        {
            try
            {
                var carousel = _mapper.Map<CarouselDto, Carousel>(carouselDto);
                carousel.ImageUrl = TempData["Image"].ToString();
                carouselRepository.UpdateT(carousel);
                Notify("Text updated successfully");
            }
            catch (Exception)
            {

                return RedirectToAction("CarouselGet");
            }
            return RedirectToAction("Index");
        }
    }
}

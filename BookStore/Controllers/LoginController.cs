using AutoMapper;
using BookStore.Dtos;
using BookStore.Models;
using BookStore.Repositories;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace BookStore.Controllers
{
    public class LoginController : Controller
    {
        Context context = new Context();
        IMapper _mapper;

        public LoginController(IMapper mapper)
        {
            _mapper = mapper;
        }

        [HttpGet]
        public IActionResult SignIn()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> SignIn(User user)
        {
            var data = context.Users.FirstOrDefault(x => x.Email == user.Email
            && x.Password == user.Password);
            if (data != null)
            {
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name,user.Email)
                };

                var userIdentity = new ClaimsIdentity(claims, "Login");
                ClaimsPrincipal principal = new ClaimsPrincipal(userIdentity);
                await HttpContext.SignInAsync(principal);
                return RedirectToAction("Index", "Shop");
            }
            return View();
        }

        [HttpGet]
        public IActionResult SignUp()
        {
            return View();
        }

        [HttpPost]
        public IActionResult SignUp(SignUpDto userDto)
        {
            var userData = _mapper.Map<SignUpDto, User>(userDto);
            var existData = context.Users.Where(x => x.UserName == userDto.UserName && x.Email == userDto.Email);
            if (existData.Any())
            {
                return View("SignUp");
            }
            if (!ModelState.IsValid)
            {
                var messages = ModelState.ToList();
                return View("SignUp");
            }
            UserRepository userRepository = new UserRepository();

            userRepository.AddT(userData);
            return RedirectToAction("Index", "Shop");
        }
    }
}

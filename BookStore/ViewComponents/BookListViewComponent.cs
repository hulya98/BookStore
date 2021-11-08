using AutoMapper;
using BookStore.Dtos;
using BookStore.Models;
using BookStore.Repositories;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.ViewComponents
{
    public class BookListViewComponent : ViewComponent
    {
        IMapper _mapper;
        public BookListViewComponent(IMapper mapper)
        {
            _mapper = mapper;
        }
        Context context = new Context();
        public IViewComponentResult Invoke()
        {
            var book = context.Books.Include(x => x.Writer).Include(x => x.Genre).ToList();
            return View(book);
        }
    }
}

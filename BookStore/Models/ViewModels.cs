using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public class ViewModels
    {
        public List<SelectListItem> GenreList { get; set; }
        public List<SelectListItem> WriterList { get; set; }
        public Book Books { get; set; }

    }
}

﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public class Context : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server = DESKTOP-2VOS6HP; database = BookStore; integrated security = true;");
        }
        public DbSet<Genre> Genres { get; set; }
        public DbSet<Writer> Writers { get; set; }
        public DbSet<Book> Books { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Carousel> Carousels { get; set; }
    }
}

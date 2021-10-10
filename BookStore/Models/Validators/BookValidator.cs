using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BookStore.Dtos;
using BookStore.ViewModels;
using FluentValidation;

namespace BookStore.Models.Validators
{
    public class BookValidator : AbstractValidator<BookVM>
    {
        public BookValidator()
        {
            //RuleFor(x => x.Book.BookName).NotEmpty().Null().WithMessage("Please, Enter Book").NotNull().WithMessage("efk");
            //RuleFor(x => x.Book.ImageUrl).NotEmpty().WithMessage("Please,Choose Image");
            //RuleFor(x => x.Book.WriterId).NotNull().WithMessage("Please, Select Writer");
            //RuleFor(x => x.Book.GenreId).NotNull().WithMessage("Please, Select Genre");
            //RuleFor(x => x.Book.Price).NotEmpty().WithMessage("Please, Enter Price");
            //RuleFor(x => x.Book.DiscountedPrice).NotEmpty().WithMessage("Please, Enter Discounted Price");
            //RuleFor(x => x.Book.SalePercent).NotEmpty().WithMessage("Please, Enter Sale percent");
        }
    }
}

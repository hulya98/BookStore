using BookStore.Dtos;
using BookStore.Repositories;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models.Validators
{
    public class GenreValidator : AbstractValidator<GenreDto>
    {
        public GenreValidator()
        {
            RuleFor(x => x.GenreName).NotEmpty().WithMessage("Please, Enter Genre").NotNull().WithMessage("Please, Enter Genre");
        }

    }
}

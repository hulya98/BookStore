using BookStore.Dtos;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models.Validators
{
    public class WriterValidator : AbstractValidator<WriterDto>
    {
        public WriterValidator()
        {
            RuleFor(x => x.WriterName).NotEmpty().WithMessage("Writer must not be empty").NotNull().WithMessage("Writer can not null");
        }
    }
}

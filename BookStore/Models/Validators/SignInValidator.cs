using BookStore.Dtos;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models.Validators
{
    public class SignInValidator : AbstractValidator<SignInDto>
    {
        public SignInValidator()
        {
            RuleFor(x => x.Email).NotEmpty().WithMessage("Please, Enter Email").NotNull().WithMessage("Please, Enter Email");
            RuleFor(x => x.Password).NotEmpty().WithMessage("Please, Enter Password").NotNull().WithMessage("Please, Enter Password");
        }
    }
}

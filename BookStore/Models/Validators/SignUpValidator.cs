using BookStore.Dtos;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Models.Validators
{
    public class SignUpValidator : AbstractValidator<SignUpDto>
    {
        public SignUpValidator()
        {
            RuleFor(x => x.Email).NotEmpty().WithMessage("Please, Enter Email").NotNull().WithMessage("Please, Enter Email");
            RuleFor(x => x.Password).NotEmpty().WithMessage("Please, Enter Password").NotNull().WithMessage("Please, Enter Password");
            RuleFor(x => x.Address).NotEmpty().WithMessage("Please, Enter Address").NotNull().WithMessage("Please, Enter Address");
            RuleFor(x => x.TelephoneNumber).NotEmpty().WithMessage("Please, Enter Phone number").NotNull().WithMessage("Please, Enter Phone number");
            RuleFor(x => x.UserName).NotEmpty().WithMessage("Please, Enter User name").NotNull().WithMessage("Please, Enter User name");

        }
    }
}

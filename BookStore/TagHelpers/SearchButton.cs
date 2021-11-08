using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.TagHelpers
{
    public class SearchButton : TagHelper
    {
        public string Display { get; set; }
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "button";
            output.Attributes.Add("type", "submit");
            output.Attributes.Add("class", "btn btn-outline-secondary");
            output.Attributes.Add("style", "margin-top:78px");
            output.Content.Append(Display);
            base.Process(context, output);
        }
    }
}

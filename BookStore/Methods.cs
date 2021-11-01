using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore
{
    public static class Methods
    {
        public static string ReplaceForSearch(string text)
        {
            return text.Replace("ə", "e").Replace("ş", "s").Replace("ğ", "g").Replace("i", "ı").Replace("ç", "c").Replace("ü", "u");
        }
    }
}

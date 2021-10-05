using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookStore.Dtos
{
    public class WriterDto
    {
        public int WriterId { get; set; }
        public string WriterName { get; set; }
        public bool Status { get; set; }
    }
}

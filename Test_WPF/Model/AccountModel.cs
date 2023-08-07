using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test_WPF.Model
{
    public class AccountModel
    {
        public int AccID { get; set; }
        public string Username { get; set; }
        public string HashPassword { get; set; }
        public string Role { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}

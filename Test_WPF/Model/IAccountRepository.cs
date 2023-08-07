using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Test_WPF.Model
{
    public interface IAccountRepository
    {
        bool AuthenticateUsername(NetworkCredential credential);
        void AddAccount(AccountModel account);
        void UpdateAccount(AccountModel account);
        void DeleteAccount(AccountModel account);
        AccountModel GetAccountByAccID(int AccID);
        AccountModel GetAccountByUsername(string username);
        IEnumerable<AccountModel> GetAllAccounts();
    }
}

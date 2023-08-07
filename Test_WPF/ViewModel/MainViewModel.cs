using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using Test_WPF.Model;
using Test_WPF.Repository;

namespace Test_WPF.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        private AccountModel _currentAccount;
        private IAccountRepository accountRepository;

        public AccountModel CurrentAccount
        {
            get
            {
                return _currentAccount;
            }
            set
            {
                _currentAccount = value;
                OnPropertyChanged(nameof(CurrentAccount));
            }
        }

        public MainViewModel()
        {
            accountRepository = new AccountRepository();
            CurrentAccount = new AccountModel();
            LoadCurrentAccoutnData();
        }

        private void LoadCurrentAccoutnData()
        {
            if (Thread.CurrentPrincipal == null)
            {
                CurrentAccount.Username = "Invalid user, not logged in";
                //Application.Current.Shutdown();
            }
            else
            {
                var account = accountRepository.GetAccountByUsername(Thread.CurrentPrincipal.Identity.Name);
                CurrentAccount.AccID = account.AccID;
                CurrentAccount.Username = account.Username;
                CurrentAccount.HashPassword = account.HashPassword;
                CurrentAccount.Role = account.Role;
                CurrentAccount.CreatedDate = account.CreatedDate;
                CurrentAccount.UpdatedDate = account.UpdatedDate;

            }
        }
    }
}

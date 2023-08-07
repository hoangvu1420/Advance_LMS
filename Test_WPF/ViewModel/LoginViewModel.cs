using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using Test_WPF.Model;
using Test_WPF.Repository;

namespace Test_WPF.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        private string _username;
        private SecureString _password;
        private string _errorMessage;
        private bool _isLoginEnabled = true;

        private IAccountRepository accountRepository;

        public string Username 
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }

        public SecureString Password
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }

        public string ErrorMessage
        {
            get
            {
                return _errorMessage;
            }
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }

        public bool IsLoginVisible
        {
            get
            {
                return _isLoginEnabled;
            }
            set
            {
                _isLoginEnabled = value;
                OnPropertyChanged(nameof(IsLoginVisible));
            }
        }

        public ICommand LoginCommand { get; }
        public ICommand RecoverPasswordCommand { get; }
        public ICommand ShowPasswordCommand { get; }

        public LoginViewModel()
        {
            accountRepository = new AccountRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(ExecuteRecoverPasswordCommand);
        }

        private void ExecuteShowPasswordCommand(object obj)
        {
            throw new NotImplementedException();
        }

        private void ExecuteRecoverPasswordCommand(object obj)
        {
            throw new NotImplementedException();
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            bool validData = true;
            if(string.IsNullOrWhiteSpace(Username) || Password == null)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteLoginCommand(object obj)
        {
            var isValidated = accountRepository.AuthenticateUsername(new NetworkCredential(Username, Password));
            if(isValidated)
            {
                Thread.CurrentPrincipal = new GenericPrincipal(
                    new GenericIdentity(Username), null);
                ErrorMessage = string.Empty;
                IsLoginVisible = false;
            }
            else
            {
                ErrorMessage = "Error: Invalid username or password.";
            }
        }
    }
}

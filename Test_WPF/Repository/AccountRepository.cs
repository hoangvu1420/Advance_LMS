using Microsoft.Data.SqlClient;
using Microsoft.Identity.Client.Platforms.Features.DesktopOs.Kerberos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using Test_WPF.Model;
using BC = BCrypt.Net.BCrypt;

namespace Test_WPF.Repository
{
    public class AccountRepository : RepositoryBase, IAccountRepository
    {
        public void AddAccount(AccountModel account)
        {
            throw new NotImplementedException();
        }

        public bool AuthenticateUsername(NetworkCredential credential)
        {
            bool validUser = false;
            using (var connection = GetConnection())
            {
                connection.Open();
                using (var command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "Get_acc_infor";
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@username", credential.UserName);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string hashPassword = (string)reader[0];
                            validUser = BC.Verify(credential.Password, hashPassword);
                        }
                    }
                }
                connection.Close();
            }
            return validUser;
        }

        public void DeleteAccount(AccountModel account)
        {
            throw new NotImplementedException();
        }

        public AccountModel GetAccountByAccID(int AccID)
        {
            throw new NotImplementedException();
        }

        public AccountModel GetAccountByUsername(string username)
        {
            AccountModel account = null;
            using (var connection = GetConnection())
            {
                connection.Open();
                using (var command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "SELECT * FROM account a WHERE a.username = @username";
                    command.Parameters.AddWithValue("@username", username);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            account = new AccountModel()
                            {
                                AccID = (int)reader[0],
                                Username = (string)reader[1],
                                HashPassword = string.Empty,
                                Role = (string)reader[3],
                                CreatedDate = (DateTime)reader[4],
                                UpdatedDate = (DateTime)reader[5]
                            };
                        }
                    }
                }
                connection.Close();
            }
            return account;
        }

        public IEnumerable<AccountModel> GetAllAccounts()
        {
            throw new NotImplementedException();
        }

        public void UpdateAccount(AccountModel account)
        {
            throw new NotImplementedException();
        }
    }
}

using project_agile_kelas.Handler;
using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Controller
{
    public class UserController
    {
        public static String CheckLogin(string email, string password)
        {
            string response = "";

            if (email == "")
            {
                response = "username must be filled";
            }
            else if (password == "")
            {
                response = "password must be filled";
            }

            bool isUserInDatabase = UserHandler.FindUser(email, password);

            if (!isUserInDatabase)
            {
                response = "Username or password is not in database";
            }


            return response;
        }

        public static String CheckRegister(string username, string password, string confirmPassword, string email)
        {
            string response = "";

            if (username == "")
            {
                response = "username must be filled";
            }
            else if (password == "")
            {
                response = "password must be filled";
            }
            else if(email == "")
            {
                response = "email must be filled";
            }
            else if (!password.Equals(confirmPassword))
            {
                response = "password and confirm password must be the same!";
            }
            else
            {
                UserHandler.InsertUser(username, password, email, 2);
                response = "Success!";
            }
            return response;
        }
        
        public static User GetUser(string email, string password)
        {
            return UserHandler.GetUser(email, password);
        }

        public static User GetUserById(int id)
        {
            return UserHandler.GetUserById(id);
        }
    }
}
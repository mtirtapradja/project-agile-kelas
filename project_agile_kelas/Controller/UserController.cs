using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Controller
{
    public class UserController
    {
        public static String CheckLogin(string username, string password)
        {
            string response = "";

            if (username == "")
            {
                response = "username must be filled";
            }
            else if(password == "")
            {
                response = "password must be filled";
            }
            return response;
        }

        public static String CheckRegister(string username, string password, string email)
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
            return response;
        }
    }
}
using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Factory
{
    public class UserFactory
    {
        public static User Create(int id, string fullName, string password, string email, int userRole)
        {
            User u = new User();
            u.userId = id;
            u.userFullName = fullName;
            u.userPassword = password;
            u.userEmail = email;
            u.userRole = userRole;
            return u;
        }

        public static User Create(string password, string email)
        {
            User u = new User();
            u.userPassword = password;
            u.userEmail = email;
            return u;
        }

        

    }
}
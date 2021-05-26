using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using project_agile_kelas.Factory;
using project_agile_kelas.Model;
using project_agile_kelas.Repository;

namespace project_agile_kelas.Handler
{

    public class UserHandler
    {
        private static UserRepository userRepo = UserRepository.getInstance();
        public static bool FindUser(string email, string password)
        {
            User user = userRepo.getUser(email, password);
            if (user == null) return false;
            return true;
        }
    }

}
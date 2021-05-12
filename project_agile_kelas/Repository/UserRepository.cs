using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace project_agile_kelas.Repository
{
    public class UserRepository
    {
        private static UserRepository _getInstance = null;

        private DatabaseEntities db = new DatabaseEntities();
        
        private UserRepository() { }

        public static UserRepository getInstance()
        {
            if(_getInstance == null)
            {
                _getInstance = new UserRepository();
            }
            
            return _getInstance;
        }

        public User getUser(string email, string password)
        {
            return db.Users.Where(x => x.userEmail.Equals(email) && x.userPassword.Equals(password)).FirstOrDefault();
        }

        public void setUserToDatabase()
        {

        }

    }
}
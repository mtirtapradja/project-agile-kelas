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

        public User getUserById(int id)
        {
            return (from x in db.Users where x.userId == id select x).FirstOrDefault();
        }

        public User InsertUser(User user) 
        {
            User newUser = db.Users.Add(user);
            db.SaveChanges();
            return newUser;
        }

        public bool updateUser(User user)
        {
            if (user != null)
            {
                db.SaveChanges();
            }
            return false;
        }

        public void setUserToDatabase()
        {

        }

    }
}
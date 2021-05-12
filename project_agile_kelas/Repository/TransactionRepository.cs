using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Repository
{
    public class TransactionRepository
    {
        private static DatabaseEntities db = new DatabaseEntities();

        public static bool InsertTransaction(TransactionHeader newTransaction)
        {
            if (newTransaction != null)
            {
                db.TransactionHeaders.Add(newTransaction);
                db.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool UpdateTransaction(TransactionHeader currTransaction)
        {

            if (currTransaction != null)
            {
                db.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool DeleteTransaction(TransactionHeader currTransaction)
        {
            if (currTransaction != null)
            {
                db.TransactionHeaders.Remove(currTransaction);
                db.SaveChanges();
                return true;
            }
            return false;
        }

    }
}
using project_agile_kelas.Handler;
using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Controller
{
    public class TransactionController
    {
        public static List<TransactionType> GetAllTransactionList()
        {
            return TransactionHandler.GetAllTransactionType();
        }
        public static bool InsertTransaction(int userId, int typeId, string description, int price)
        {
            return TransactionHandler.InsertTransaction(userId, typeId, description, price);
        }
    }
}
using project_agile_kelas.Factory;
using project_agile_kelas.Model;
using project_agile_kelas.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Handler
{
    public class TransactionHandler
    {
        public static List<TransactionHeader> GetAllTrasactionByUser(int userId)
        {
            return TransactionRepository.GetAllTrasactionByUser(userId);
        }
        public static List<TransactionType> GetAllTransactionType()
        {
            return TransactionRepository.getAllTransactionType();
        }

        public static bool UpdateTransaction(TransactionHeader currTransaction)
        {
            return TransactionRepository.UpdateTransaction(currTransaction);
        }

            public static bool DeleteTransaction(TransactionHeader currTransaction)
        {
            
            return TransactionRepository.DeleteTransaction(currTransaction);
        }

        public static bool InsertTransaction(int userId, int typeId, string description, int price)
        {
            TransactionHeader tf = TransactionFactory.Create(userId, typeId, description, price);
            return TransactionRepository.InsertTransaction(tf);
        }
    }
}
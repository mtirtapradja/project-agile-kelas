using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace project_agile_kelas.Factory
{
    public class TransactionFactory
    {
        public static TransactionHeader Create(int userId, int typeId, string description, int price)
        {
            TransactionHeader t = new TransactionHeader();
            t.userId = userId;
            t.transactionTypeId = typeId;
            t.itemDescription = description;
            t.price = price;
            t.created_at = DateTime.Now;
            t.updated_at = DateTime.Now;
            return t;
        }

    }
}
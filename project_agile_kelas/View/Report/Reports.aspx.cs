using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project_agile_kelas.Model;
using project_agile_kelas.Reports;
using project_agile_kelas.Dataset;
using project_agile_kelas.Controller;

namespace project_agile_kelas.View.Report
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["userId"]);
            TransactionReports reports = new TransactionReports();
            reports.SetDataSource(GetData(userId));
            CrystalReportViewer1.ReportSource = reports;
        }

        private ReportDataset GetData(int userId)
        {
            ReportDataset dataset = new ReportDataset();

            var dataset_user = dataset.User;
            var dataset_transaction = dataset.Transaction;
            var dataset_transactionType = dataset.TransactionType;

            User currentUser = UserController.GetUserById(userId);

            var newRow = dataset_user.NewRow();
            newRow["userId"] = currentUser.userId;
            newRow["userFullName"] = currentUser.userFullName;
            newRow["userEmail"] = currentUser.userEmail;
            newRow["userRole"] = currentUser.userRole;
            dataset_user.Rows.Add(newRow);

            List<TransactionHeader> headers = TransactionController.GetAllTrasactionByUser(userId);

            foreach (var hd in headers)
            {
                var transaction_header = dataset_transaction.NewRow();
                transaction_header["userId"] = hd.userId;
                transaction_header["itemDescription"] = hd.itemDescription;
                transaction_header["price"] = hd.price;
                transaction_header["created_at"] = hd.created_at;
                dataset_transaction.Rows.Add(transaction_header);
            }

            return dataset;
        }
    }
}
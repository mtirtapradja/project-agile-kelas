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
            showNav();

            int userId = Convert.ToInt32(Session["userId"]);
            TransactionReports reports = new TransactionReports();
            reports.SetDataSource(GetData(userId));
            CrystalReportViewer1.ReportSource = reports;
        }

        private void showNav()
        {
            LinkButton button = this.Master.FindControl("lbRegister") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbLogin") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbAccount") as LinkButton;
            button.Visible = true;

            button = this.Master.FindControl("lbReport") as LinkButton;
            button.Visible = true;

            button = this.Master.FindControl("lbLogout") as LinkButton;
            button.Visible = true;
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

                string typeName = "Spending";
                if (hd.transactionId == 1) typeName = "Income";

                transaction_header["transactionTypeId"] = typeName;

                dataset_transaction.Rows.Add(transaction_header);
            }

            return dataset;
        }
    }
}
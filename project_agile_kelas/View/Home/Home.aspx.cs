using project_agile_kelas.Controller;
using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_agile_kelas.View.Home
{
    public partial class Insert : System.Web.UI.Page
    {

        private User userAuth = null;
        private List<TransactionHeader> currTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            middleware();
            if (!IsPostBack)
            {
                lblName.Text = "Welcome, " + userAuth.userFullName;
                initDropDown();
                
            }
            initTable();
        }

        private void initTable()
        {
            currTable = TransactionController.GetAllTrasactionByUser((int)userAuth.userId);
            gvCatatan.DataSource = currTable;
            gvCatatan.DataBind();
        }

        private void initDropDown()
        {
            ddlTransactionType.DataSource = TransactionController.GetAllTransactionList();
            ddlTransactionType.DataBind();
            ddlTransactionType.DataTextField = "transactionTypeName";
            ddlTransactionType.DataValueField = "transactionTypeId";
            ddlTransactionType.DataBind();
        }

        private void middleware()
        {
            if(Session["user"] == null && Request.Cookies["user_auth"] == null)
            {
                Response.Redirect("~/View/Login/Login.aspx");
                return;
            }
            string cookieValue = Request.Cookies["user_auth"].Value;
            int userId;
            bool isInt = int.TryParse(cookieValue, out userId);
            if (!isInt)
            {
                Response.Redirect("~/View/Login/Login.aspx");
                return;
            }
            User user = (User)Session["user"];
            if (user != null)
            {
                userAuth = user;
            }
            else
            {
                userAuth = UserController.GetUserById(userId);
            }

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string desc = txtDescription.Text;
            int price = int.Parse(txtPrice.Text);
            string transactionType = ddlTransactionType.SelectedValue;
            int typeId = int.Parse(transactionType);
            Debug.WriteLine("type idnya : " + typeId);
            TransactionController.InsertTransaction((int)userAuth.userId, typeId, desc, price);
            initTable();
            txtDescription.Text = "";
            txtPrice.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }
    }
}
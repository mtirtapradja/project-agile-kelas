﻿using project_agile_kelas.Controller;
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
        private int totalIncome = 0;
        private int totalSpending = 0;
        private TransactionHeader thEdit = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            showNav();
            middleware();
            if (!IsPostBack)
            {
                
                lblName.Text = "Welcome, " + userAuth.userFullName;
                initDropDown();
                
            }
            initTable();
        }

        private void showNav()
        {
            LinkButton button = this.Master.FindControl("lbRegister") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbLogin") as LinkButton;
            button.Visible = false;
            
            button = this.Master.FindControl("lbAccount") as LinkButton;
            button.Visible = true;
            
            button = this.Master.FindControl("lbLogout") as LinkButton;
            button.Visible = true;
        }

        private void initTable()
        {
            currTable = TransactionController.GetAllTrasactionByUser((int)userAuth.userId);
            totalIncome = TransactionController.getAllIncome((int)userAuth.userId);
            totalSpending = TransactionController.sumAllSpending((int)userAuth.userId);
            txtTotalIncome.Text = totalIncome.ToString();
            txtTotalSpending.Text = totalSpending.ToString();
            gvCatatan.DataSource = currTable;
            gvCatatan.DataBind();
            gvCatatan.FooterRow.Cells[0].Text = "Total (Income - Spending)";
            gvCatatan.FooterRow.Cells[1].Text = (totalIncome - totalSpending).ToString();
            gvCatatan.FooterRow.Cells[2].Text = "";
            gvCatatan.FooterRow.Cells[3].Text = "";

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
            if(Session["user"] == null )
            {
                //if(Request.Cookies["user_auth"] == null)
                //{
                //    Debug.WriteLine("masuk middle");
                //    Response.Redirect("~/View/Login/Login.aspx");
                //    return;
                //}
            }
            User user = (User)Session["user"];
            if (user != null)
            {
                Debug.WriteLine("masuk middle");
                userAuth = user;
                return;
            }
            string cookieValue = "";

            if (Request.Cookies["user_auth"].Value != null)
            {
                cookieValue = Request.Cookies["user_auth"].Value;
            }

            long userId;
            bool isInt = long.TryParse(cookieValue, out userId);
            if (!isInt)
            {
                Debug.WriteLine("masuk middle ini");
                Response.Redirect("~/View/Login/Login.aspx");
                return;
            }
            userAuth = UserController.GetUserById((int)userId);
            
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
            string desc = txtDescription.Text;
            int price = int.Parse(txtPrice.Text);
            string transactionType = ddlTransactionType.SelectedValue;
            int typeId = int.Parse(transactionType);
            thEdit.itemDescription = desc;
            thEdit.price = price;
            thEdit.transactionTypeId = typeId;

            TransactionController.UpdateTransaction(thEdit);
            initTable();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void gvCatatan_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Debug.WriteLine(e.RowIndex);
            TransactionHeader th = currTable[e.RowIndex];
            TransactionController.DeleteTransaction(th);
            initTable();
        }

        protected void gvCatatan_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Debug.WriteLine(e.NewEditIndex);
            //thEdit = currTable[e.NewEditIndex]
        }

        protected void gvCatatan_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvCatatan.SelectedRow;
            thEdit = currTable[row.RowIndex];
            txtDescription.Text = thEdit.itemDescription;
            txtPrice.Text = thEdit.price.ToString();
            ddlTransactionType.SelectedValue = thEdit.transactionTypeId.ToString();
        }
    }
}
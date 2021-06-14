using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project_agile_kelas.Controller;
using project_agile_kelas.Model;

namespace project_agile_kelas.View.Account
{
    public partial class Account : System.Web.UI.Page
    {
        private User userAuth = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            showNav();
            middleware();

            if (!IsPostBack)
            {
                lblName.Text = "Welcome, " + userAuth.userFullName;

            }
        }

        private void showNav()
        {
            LinkButton button = this.Master.FindControl("lbRegister") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbLogin") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbAccount") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbLogout") as LinkButton;
            button.Visible = true;
        }

        private void middleware()
        {
            int userId = 0;
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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            String fullName = txtFullName.Text;
            String password = txtPassword.Text;
            String confirm = txtConfirm.Text;
            String email = txtEmail.Text;


            String cookie = Response.Cookies["user_auth"].Value;

            int userId = -1;
            if (cookie != null)
            {
                userId = Convert.ToInt32(cookie);
            }
            else
            {
                User user = (User)Session["user"];
                userId = Convert.ToInt32(user.userId);
            }

            String respons = UserController.CheckUpdate(userId,fullName,password,confirm,email);
            lblError.Text = respons;
        }
    }
}
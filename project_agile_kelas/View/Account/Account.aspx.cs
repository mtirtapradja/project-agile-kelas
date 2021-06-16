using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            int userId;
            if (Request.Cookies["user_auth"] != null)
            {
                userId = int.Parse(Request.Cookies["user_auth"].Value);
                userAuth = UserController.GetUserById(userId);
            }


            if (Session["userId"] == null)
            {
                Response.Redirect("~/View/Login/Login.aspx");
            }
            else if (Request.Cookies["user_auth"] == null)
            {
                userId = Convert.ToInt32(Session["userId"].ToString());
                userAuth = UserController.GetUserById(userId);
            }
            //if (Session["user"] == null)
            //{
            //    if (Request.Cookies["user_auth"] == null)
            //    {
            //        Debug.WriteLine("masuk middle");
            //        Response.Redirect("~/View/Login/Login.aspx");
            //        return;
            //    }
            //}
            //User user = (User)Session["user"];
            //if (user != null)
            //{
            //    Debug.WriteLine("masuk middle");
            //    userAuth = user;
            //    return;
            //}
            //string cookieValue = "";

            //if (Request.Cookies["user_auth"] != null)
            //{
            //    cookieValue = Request.Cookies["user_auth"].Value;
            //}

            //long userId;
            //bool isInt = long.TryParse(cookieValue, out userId);
            //if (!isInt)
            //{
            //    Debug.WriteLine("masuk middle ini");
            //    Response.Redirect("~/View/Login/Login.aspx");
            //    return;
            //}
            //userAuth = UserController.GetUserById((int)userId);

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
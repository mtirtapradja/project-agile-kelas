using project_agile_kelas.Controller;
using project_agile_kelas.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_agile_kelas.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Response.Cookies["user_auth"] != null)
            {
                int userId = Convert.ToInt32(Response.Cookies["user_auth"].Value);
                Session["userId"] = userId;
                Response.Redirect("~/View/Home/Home.aspx");
            }
            showNav();
        }

        private void showNav()
        {
            LinkButton button = this.Master.FindControl("lbRegister") as LinkButton;
            button.Visible = true;

            button = this.Master.FindControl("lbLogin") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbAccount") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbReport") as LinkButton;
            button.Visible = false;

            button = this.Master.FindControl("lbLogout") as LinkButton;
            button.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string pass = txtPassword.Text;
            lblError.Text = "";
            string response = UserController.CheckLogin(email, pass);

            if (response.Equals(""))
            {
                User user = UserController.GetUser(email, pass);

                if (user != null)
                {
                    lblError.Text = "";
                    if (cbRemember.Checked)
                    {
                        HttpCookie cookie = new HttpCookie("user_auth")
                        {
                            Value = user.userId.ToString(),
                            Expires = DateTime.Now.AddDays(1)
                        };
                        Response.Cookies.Add(cookie);
                    }
                    Debug.WriteLine("lalala");
                    Session["userId"] = user.userId;
                    Response.Redirect("~/View/Home/Home.aspx");
                }
            }
            lblError.Text = response;
        }
    }
}
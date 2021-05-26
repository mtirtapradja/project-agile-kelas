using project_agile_kelas.Controller;
using System;
using System.Collections.Generic;
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

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string pass = txtPassword.Text;
            lblError.Text = "";
            string response = UserController.CheckLogin(email, pass);

            if (response.Equals(""))
            {
                lblError.Text = "";
                Response.Redirect("~/View/Home/Home.aspx");
                return;
            }
            lblError.Text = response;

        }
    }
}
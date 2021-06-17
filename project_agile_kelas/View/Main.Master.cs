using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_agile_kelas.View
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbLogoHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Home/Home.aspx");
        }

        protected void lbRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Register/Register.aspx");
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Login/Login.aspx");
        }

        protected void lbAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Account/Account.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["user_auth"] != null)
            {
                Response.Cookies["user_auth"].Expires = DateTime.Now.AddDays(-1);
            }

            Session.RemoveAll();

            Response.Redirect("~/View/Login/Login.aspx");
        }

        protected void lbReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Report/Reports.aspx");
        }
    }
}
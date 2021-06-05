using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_agile_kelas.View.Register
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string password = txtPassword.Text;
            string confirmpasssword = txtConfirmPassword.Text;

            if (!password.Equals(confirmpasssword))
            {
                lblError.Text = "Password and confirm password must be same!";
                return;
            }

            //tinggal masukin user repository

            lblError.Text = "Register success";
        }
    }
}
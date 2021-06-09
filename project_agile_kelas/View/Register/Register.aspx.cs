using project_agile_kelas.Controller;
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
            string email = txtEmail.Text;

            string message = UserController.CheckRegister(name, password, confirmpasssword, email);
            lblError.Text = message;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmpNum.Text == "1234" && txtPassword.Text == "password")
                Server.Transfer("MainPage.aspx");
            else
                lblStatus.Text = "Incorrect employee number or password";
        }
    }
}
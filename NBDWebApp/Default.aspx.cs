using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

//Required namespaces for registering new users
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;




namespace NBDWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
            body.Attributes.Add("class", "login");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //declare the collection of users
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            //declare the user manager
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
            //try to find the user
            IdentityUser user = manager.Find(txtEmpNum.Text, txtPassword.Text);
            if (user == null)
                lblStatus.Text = "Username or Password is incorrect";
            else
            {
                
                //authenticate user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);
                Response.Redirect("~/MainPage.aspx");
            }

        }

        protected void createAccount_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            //declare the user manager
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            IdentityUser user = new IdentityUser(txtNewEmployee.Text);
            //attempt to store the new user
            IdentityResult idResult = manager.Create(user, txtNewPassWordConfirm.Text);

            if (idResult.Succeeded)
            {
                LblMessage.Text = "User " + user.UserName + "was sucessfully created!";
            }
            else
            {
                LblMessage.Text = idResult.Errors.FirstOrDefault();
            }
        }
    }
}
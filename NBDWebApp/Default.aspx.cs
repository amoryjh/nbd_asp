using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


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
            
            RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
            RoleManager<IdentityRole> roleMgr = new RoleManager<IdentityRole>(roleStore);

            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/MainPage.aspx");
            }
            
               
            //creating roles//
            if (!roleMgr.RoleExists("Admin"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("Admin"));
            }
            if (!roleMgr.RoleExists("Manager"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("Manager"));
            }
            if (!roleMgr.RoleExists("SalesAssoc"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("SalesAssoc"));
            }
            if (!roleMgr.RoleExists("Designer"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("Designer"));
            }
            if (!roleMgr.RoleExists("Laborers"))
            {
                IdentityResult roleResult = roleMgr.Create(new IdentityRole("Laborers"));
            }
          
            
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
                if (txtEmpNum.Text == "Administrator")
                {
                    IdentityResult userResult = manager.AddToRole(user.Id, "Admin");
                }
                //add user to role
                //authenticate user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);
                Response.Redirect("~/MainPage.aspx");
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
                //declare the collection of users
                UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
                //declare the user manager
                UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
                //create a new user
                IdentityUser user = new IdentityUser(txtNewEmployee.Text);
                //attempt to store the new user
                IdentityResult idResult = manager.Create(user, txtNewPassWordConfirm.Text);

                if (idResult.Succeeded)
                {
                    IdentityResult userResult = manager.AddToRole(user.Id, DropDownList1.SelectedValue);
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    authenticationManager.SignIn(userIdentity);
                    Response.Redirect("~/MainPage.aspx");
                }
                else
                    LblError.Text = idResult.Errors.FirstOrDefault();
        }
    }
}
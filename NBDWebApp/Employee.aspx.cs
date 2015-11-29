using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace NBDWebApp
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                //declare the collection of users
                UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
                //declare the user manager
                UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
                //create a new user
                IdentityUser user = new IdentityUser(TxtEmpNum.Text);
                //attempt to store the new user
                IdentityResult idResult = manager.Create(user, TxtEmpPass.Text);

                if (idResult.Succeeded)
                {
                    
                    IdentityResult userResult = manager.AddToRole(user.Id, DropDownList1.SelectedValue);
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    LblMessage.Text = "Empoyee " + TxtEmpNum.Text + "Created Password : " + TxtEmpPass.Text + ", With the role " + DropDownList1.Text + ".";
                }
                else
                    LblMessage.Text = idResult.Errors.FirstOrDefault();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Employee.aspx");
        }
    }
}
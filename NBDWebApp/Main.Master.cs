using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

using System.Security.Principal;
using System.ComponentModel;

namespace NBDWebApp
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (User.Identity.IsAuthenticated)
            {
                //if (User.IsInRole("Admin")){}
                HtmlGenericControl usrName = (HtmlGenericControl)Master.FindControl("lblUserName");
                usrName.InnerHtml = "Welcome, " + User.Identity.Name + ".";
            }*/
        }
    }
}
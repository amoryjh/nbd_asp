using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (User.Identity.IsAuthenticated)
            {
                if (User.IsInRole("Admin"))
                {
                    
                }
                LblUserName.Text = "Welcome "+User.Identity.Name+".";
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
             */
            if (!Page.IsPostBack)
            {
                NBD_SBEntities db = new NBD_SBEntities();

                ddlClientName.DataSource = (from n in db.CLIENTs
                                          select new
                                          {
                                              n.ID,
                                              FullName = n.cliName                                          }
                                          ).ToList();
                ddlClientName.DataTextField = "FullName";
                ddlClientName.DataValueField = "ID";
                ddlClientName.DataBind();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
namespace NBDWebApp
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Default.aspx");
            }

            if (!Page.IsPostBack)
            {
                NBD_DatabaseEntities db = new NBD_DatabaseEntities();

                ddlClientName.DataSource = (from n in db.CLIENTs
                                          select new
                                          {
                                              n.ID,
                                              FullName = n.cliName                                          }
                                          ).ToList();
                ddlClientName.DataTextField = "FullName";
                ddlClientName.DataValueField = "ID";
                ddlClientName.DataBind();

                ddlProject.DataSource = (from n in db.PROJECTs
                                         select new
                                         {
                                             n.ID,
                                             Date = n.projEstEnd
                                         }
                                          ).ToList();
                ddlProject.DataTextField = "Date";
                ddlProject.DataValueField = "ID";
                ddlProject.DataBind();
            }
        }
    }
}
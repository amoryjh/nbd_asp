using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
  public partial class Clients : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }

      HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
      body.Attributes.Add("class", "client-directory");

      if (IsPostBack) return;

      NBD_DatabaseEntities db = new NBD_DatabaseEntities();
      foreach (CLIENT c in db.CLIENTs )
        this.ddlClientName.Items.Add(c.cliName);
      foreach (CLIENT c in db.CLIENTs )
        this.ddlClientContact.Items.Add(c.cliConFName + " " + c.cliConLName);
    
     }
  }
}
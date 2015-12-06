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
      if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx");}
      if (!Page.IsPostBack)
      {
        NBD_DatabaseEntities db = new NBD_DatabaseEntities();

        foreach (CLIENT  c in db.CLIENTs)
          this.ddlClientName.Items.Add(c.cliName);
              
        foreach (PROJECT c in db.PROJECTs)
          this.ddlProject.Items.Add(c.projEstEnd);         
      }
    }
  }
}
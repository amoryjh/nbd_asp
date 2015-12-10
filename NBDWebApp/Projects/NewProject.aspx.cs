using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBDWebApp.Projects
{
    public partial class NewProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated){Response.Redirect("~/Default.aspx");}
            
            if (IsPostBack) return;

            NBD_DatabaseEntities db = new NBD_DatabaseEntities();

            //Fill drop down lists
            foreach (CLIENT c in db.CLIENTs)
                this.ddlClientName.Items.Add(c.cliName);

            foreach (WORKER d in db.WORKERs)
                if (d.designerFName != null)
                    this.ddlDesignerFName.Items.Add(d.designerFName);

        }
    }
}
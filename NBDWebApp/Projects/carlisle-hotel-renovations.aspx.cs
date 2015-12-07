using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace NBDWebApp.Projects
{
    public partial class carlisle_hotel_renovations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }

            HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
            body.Attributes.Add("class", "project-page");

            if (IsPostBack) return;

            NBD_DatabaseEntities db = new NBD_DatabaseEntities();

            //Fill Existing Clients Drop Down
            foreach (CLIENT c in db.CLIENTs)
              this.ddlExistingClientBusinessDesign.Items.Add(c.cliName);

            //Fill City Drop Down
            foreach (CITY c in db.CITies)
                this.ddlClientCityDesign.Items.Add(c.city1);

            //Fill Production Worker Drop Down
            foreach (WORKER c in db.WORKERs)
                this.ddlProductionWorkerNameProduction.Items.Add(c.wrkFName);
        }
    }
}
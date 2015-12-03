using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
    public partial class DailyReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            NBD_DatabaseEntities db = new NBD_DatabaseEntities();
            foreach (PROJECT c in db.PROJECTs)
                this.ddlProject.Items.Add(c.projName);
        }
    }
}
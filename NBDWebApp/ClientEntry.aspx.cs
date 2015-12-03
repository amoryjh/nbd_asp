using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
    public partial class ClientEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
            body.Attributes.Add("class", "client-entry");

            if (IsPostBack) return;

            NBD_DatabaseEntities db = new NBD_DatabaseEntities();
            foreach (CITY c in db.CITies)
                this.ddlCity.Items.Add(c.city1);
        }
    }
}
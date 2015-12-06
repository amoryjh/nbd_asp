using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
    public partial class BidProcess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }

            HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
            body.Attributes.Add("class", "design-bid");
        }
    }
}
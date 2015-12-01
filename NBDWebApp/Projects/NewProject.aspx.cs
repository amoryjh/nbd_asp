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
            if (!Page.IsPostBack)
            {
                NBD_DatabaseEntities db = new NBD_DatabaseEntities();

                ddlClientName.DataSource = (from n in db.CLIENTs
                                            select new
                                            {
                                                n.ID,
                                                FullName = n.cliName
                                            }
                                          ).ToList();
                ddlClientName.DataTextField = "FullName";
                ddlClientName.DataValueField = "ID";
                ddlClientName.DataBind();
            }
        }
    }
}
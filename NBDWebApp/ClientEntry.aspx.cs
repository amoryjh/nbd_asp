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
            if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }

            HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
            body.Attributes.Add("class", "client-entry");

            if (IsPostBack) return;

            NBD_DatabaseEntities db = new NBD_DatabaseEntities();
            foreach (CITY c in db.CITies)
                this.ddlCity.Items.Add(c.city1);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            //Inserting new client into databse
            NBD_DatabaseEntities db = new NBD_DatabaseEntities();
            CLIENT c = new CLIENT();
            c.cliName = this.txtBusiness.Text;
            c.cliAddress = this.txtAddress.Text;
            c.cityID = this.ddlCity.SelectedIndex;
            c.cliProvince = this.ddlProv.SelectedValue;
            c.cliPCode = this.txtPCode.Text;
            c.cliPhone = this.txtPhone.Text;
            c.cliConFName = this.txtClientFName.Text;
            c.cliConLName = this.txtClientLName.Text;
            c.cliConPosition = this.txtClientPos.Text;

            db.CLIENTs.Add(c);
            db.SaveChanges();
        }
    }
}
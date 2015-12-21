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

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                NBD_DatabaseEntities db = new NBD_DatabaseEntities();

                PROJECT p = new PROJECT();

                p.projSite = this.txtProjSite.Text;
                p.projName = this.txtProjName.Text;
                p.clientID = Convert.ToInt32(this.ddlClientName.SelectedValue);
                p.designerID = 3;
                p.projBidDate = Convert.ToDateTime(this.txtBidDate.Text);
                db.PROJECTs.Add(p);
                db.SaveChanges();

                LblMessage.Text = "New Project Sucessfuly Added.";
            }
            catch
            {
                LblMessage.Text = "Error";
            }

            //Call click event for btnClear the clear the form
            btnClear_Click(sender, e);
        }
        //Reset All txtboxes
        protected void btnClear_Click(object sender, EventArgs e)
        {
            this.txtProjName.Text = "";
            this.txtProjSite.Text = "";
            this.ddlClientName.SelectedIndex = 0;
            this.ddlDesignerFName.SelectedIndex = 0;
            this.txtBidDate.Text = "";
        }
    }
}
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
            if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }
            if (IsPostBack) return;

            NBD_DatabaseEntities db = new NBD_DatabaseEntities();
            foreach (PROJECT c in db.PROJECTs)
                this.ddlProject.Items.Add(c.projName);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                NBD_DatabaseEntities db = new NBD_DatabaseEntities();
                LABOUR_REQUIREMENT lr = new LABOUR_REQUIREMENT();
                PROD_TEAM pt = new PROD_TEAM();

                lr.prodTeamID = (pt.projectID = this.ddlProject.SelectedIndex + 1);
                lr.taskID = this.ddlTask.SelectedIndex + 1;
                lr.lreqActHours = Convert.ToInt16(this.txtUserHours.Text);

                db.LABOUR_REQUIREMENT.Add(lr);
                db.SaveChanges();
                LblMessage.Text = "Project Task Sucessfuly Updated.";
            }
            catch
            {
                LblMessage.Text = "Error";
            }

            //Call click event for btnClear the clear the form
            btnClear_Click(sender, e);
        }
        //Reset txtBoxes
        protected void btnClear_Click(object sender, EventArgs e)
        {
            this.txtUserFName.Text = "";
            this.txtUserLName.Text = "";
            this.txtUserHours.Text = "";
            this.ddlProject.SelectedIndex = 0;
            this.ddlTask.SelectedIndex = 0;
        }
    }
}
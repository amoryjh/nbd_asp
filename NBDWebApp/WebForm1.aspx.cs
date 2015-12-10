using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            NBD_DatabaseEntities db = new NBD_DatabaseEntities();
            int id = Convert.ToInt32(this.DropDownList1.SelectedValue);
            this.ListBox1.Items.Clear();
            var query = from project in db.PROJECTs where project.clientID == id select project;
            foreach (var project in query)
                this.ListBox1.Items.Add(project.projName);
        }
    }
}
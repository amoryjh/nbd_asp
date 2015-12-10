using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NBDWebApp.Projects
{
  public partial class london_mall : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
      this.txtClientAddressDesign.Text = "";
      this.txtClientBusinessDesign.Text = "";
      NBD_DatabaseEntities db = new NBD_DatabaseEntities();
      int id = Convert.ToInt32(this.DropDownList2.SelectedValue);
      //this.ListBox1.Items.Clear();
      var query = from client in db.CLIENTs where client.ID == id select client;

      var query2 = from project in db.PROJECTs
                   where project.ID == id
                   select project;

      foreach (var client in query)
      {
        this.txtClientAddressDesign.Text = client.CITY.city1 + " " + client.cliAddress;
      }
      foreach (var q in query2)
      {
        this.txtClientBusinessDesign.Text = q.projName;
      }
    }
  }
}
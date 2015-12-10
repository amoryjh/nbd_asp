using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NBDWebApp
{
  public partial class Clients : System.Web.UI.Page
  {  
    NBD_DatabaseEntities db = new NBD_DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }

      HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("BodyTag");
      body.Attributes.Add("class", "client-directory");

      if (IsPostBack) return;

      //Fill Dropdownlists
      foreach (CLIENT c in db.CLIENTs)
        this.ddlClientName.Items.Add(c.cliName.Trim());
      foreach (CLIENT c in db.CLIENTs)
        this.ddlClientContact.Items.Add(c.cliConFName.Trim() + " " + c.cliConLName.Trim());
      foreach (CITY c in db.CITies)
          this.ddlCityProjectFilter.Items.Add(c.city1);

      List<CLIENT> cList = new List<CLIENT>();
      foreach (CLIENT c in db.CLIENTs)
      {
        CLIENT clientStuff = new CLIENT();
        clientStuff.cliName = c.cliName.Trim();
        clientStuff.cliConFName = c.cliConFName.Trim();
        clientStuff.cliConLName = c.cliConLName.Trim();
        clientStuff.cliConPosition = c.cliConPosition.Trim();
        clientStuff.cliCity = c.CITY.city1.Trim();
        //Only Add in Client If they Have no projects created yet.
        if (c.PROJECTs.Count == 0)
          cList.Add(clientStuff);
        else
          cList.Remove(clientStuff);
      }
      sansProjects.DataSource = cList;
      sansProjects.DataBind();

      List<PROJECT> pList = new List<PROJECT>();
      foreach (PROJECT c in db.PROJECTs)
      {
        PROJECT projectStuff = new PROJECT();

        projectStuff.projName = c.projName.Trim();
        projectStuff.projSite = c.projSite.Trim();
        projectStuff.projBidDate = c.projBidDate;
        projectStuff.projEstStart = c.projEstStart.Trim();
        projectStuff.projEstEnd = c.projEstEnd.Trim();
        projectStuff.projActStart = c.projActStart.Trim();
        projectStuff.projActEnd = c.projActEnd.Trim();
        projectStuff.projActCost = c.projActCost.Trim();
        projectStuff.projBidCustAccept = c.projBidCustAccept;
        projectStuff.projBidMgmtAccept = c.projBidMgmtAccept;
        projectStuff.projCurrentPhase = c.projCurrentPhase.Trim();
        projectStuff.projIsFlagged = c.projIsFlagged;

        //Client Stuff
        projectStuff.cliName = c.CLIENT.cliName.Trim();
        projectStuff.cliAddress = c.CLIENT.cliAddress.Trim();
        projectStuff.cliCity = c.CLIENT.CITY.city1.Trim();
        projectStuff.cliProvince = c.CLIENT.cliProvince.Trim();
        projectStuff.cliPCode = c.CLIENT.cliPCode.Trim();
        projectStuff.cliPhone = c.CLIENT.cliPhone.Trim();
        projectStuff.cliConFName = c.CLIENT.cliConFName.Trim();
        projectStuff.cliConLName = c.CLIENT.cliConLName.Trim();
        projectStuff.cliConPosition = c.CLIENT.cliConPosition.Trim();

        //Add everything to the list
        pList.Add(projectStuff);
      }
      Projects.DataSource = pList;
      Projects.DataBind();
    }
  }
}  
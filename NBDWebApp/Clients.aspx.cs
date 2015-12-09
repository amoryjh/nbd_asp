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
        this.ddlClientName.Items.Add(c.cliName);
      foreach (CLIENT c in db.CLIENTs)
        this.ddlClientContact.Items.Add(c.cliConFName + " " + c.cliConLName);
      foreach (CITY c in db.CITies)
          this.ddlCityProjectFilter.Items.Add(c.city1);

      List<CLIENT> cList = new List<CLIENT>();
      foreach (CLIENT c in db.CLIENTs)
      {
        CLIENT clientStuff = new CLIENT();
        clientStuff.cliName = c.cliName;
        clientStuff.cliConFName = c.cliConFName;
        clientStuff.cliConLName = c.cliConLName;
        clientStuff.cliConPosition = c.cliConPosition;
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

        projectStuff.projName = c.projName;
        projectStuff.projSite = c.projSite;
        projectStuff.projBidDate = c.projBidDate;
        projectStuff.projEstStart = c.projEstStart;
        projectStuff.projEstEnd = c.projEstEnd;
        projectStuff.projActStart = c.projActStart;
        projectStuff.projActEnd = c.projActEnd;
        projectStuff.projActCost = c.projActCost;
        projectStuff.projBidCustAccept = c.projBidCustAccept;
        projectStuff.projBidMgmtAccept = c.projBidMgmtAccept;
        projectStuff.projCurrentPhase = c.projCurrentPhase;
        projectStuff.projIsFlagged = c.projIsFlagged;

        //Client Stuff
        projectStuff.cliName = c.CLIENT.cliName;
        projectStuff.cliAddress = c.CLIENT.cliAddress;
        projectStuff.cliCity = c.CLIENT.CITY.city1;
        projectStuff.cliProvince = c.CLIENT.cliProvince;
        projectStuff.cliPCode = c.CLIENT.cliPCode;
        projectStuff.cliPhone = c.CLIENT.cliPhone;
        projectStuff.cliConFName = c.CLIENT.cliConFName;
        projectStuff.cliConLName = c.CLIENT.cliConLName;
        projectStuff.cliConPosition = c.CLIENT.cliConPosition;

        //Add everything to the list
        pList.Add(projectStuff);
      }
      Projects.DataSource = pList;
      Projects.DataBind();
    }

    protected void ddlClientName_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
  }
}  
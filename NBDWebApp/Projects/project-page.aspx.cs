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

      NBD_DatabaseEntities db = new NBD_DatabaseEntities();
      int id = Convert.ToInt32(this.DropDownList2.SelectedValue);
      //this.ListBox1.Items.Clear();
      var query = from client in db.CLIENTs where client.ID == id select client;

      var query2 = from project in db.PROJECTs
                   where project.ID == id
                   select project;

      foreach (var client in query)
      {
          //client info
        this.txtClientAddressDesign.Text    = client.cliAddress;
        this.txtClientCityDesign.Text       = client.CITY.city1;
        this.txtClientPCodeDesign.Text      = client.cliPCode;
        this.txtClientPhoneDesign.Text      = client.cliPhone;
        this.txtClientFNameDesign.Text      = client.cliConFName;
        this.txtClientLNameDesign.Text      = client.cliConLName;
        this.txtClientPosDesign.Text        = client.cliConPosition;

      }

      foreach (var q in query2)
      {
          //Client Info
        this.txtClientBusinessDesign.Text = q.projName;
          
          //NBD staff
          if (q.WORKER.wrkTypeID == 2)
          {
              //DESIGN BID
              this.txtDesignerFNameDesign.Text = q.WORKER.wrkFName;
              this.txtDesignerLNameDesign.Text = q.WORKER.wrkLName;

          }
          else if(q.WORKER.WORKER_TYPE.ID == 7)
          {
              //DESIGN BID
              this.txtSalesAssocFNameDesign.Text = q.WORKER.wrkFName;
              this.txtSalesAssocLNameDesign.Text = q.WORKER.wrkLName;


          }

          //project
          this.txtBidDateDesign.Text = Convert.ToString(q.projBidDate);
          this.txtBidEstBeginDateDesign.Text = Convert.ToString(q.projEstStart);
          this.txtBidEstComDateDesign.Text = Convert.ToString(q.projEstEnd);
          this.txtProjSiteDesign.Text = q.projSite;
          this.txtBidEstCostDesign.Text = q.projEstCost;
          this.LlblTitle.Text = q.projName;
          
          //Production PLAN Project
          //project
          //this.txtProjSiteProducton.Text = q.projName;
          //this.txtProjSiteProduction.Text = q.projSite;
          //this.txtBeginDateProduction.Text = q.projActStart;
          //this.txtComDateProdcution.Text = q.projActEnd;
          //this.txtBidCostProduction.Text = q.projEstCost;
          //Total Expenses
          //this.LblTotal.Text = q.projEstCost;
          

      }
    }
  }
}
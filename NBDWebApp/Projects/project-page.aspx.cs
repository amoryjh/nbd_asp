using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NBDWebApp.Projects
{
  public partial class london_mall : System.Web.UI.Page
  {
    NBD_DatabaseEntities db = new NBD_DatabaseEntities();
    int projID = 1;
    protected void Page_Load(object sender, EventArgs e)
    {

        //////////////////////////////////////
        //**********************************//
        //**********************************//
        //************DESIGN BID************//
        //**********************************//
        //**********************************//
        //////////////////////////////////////

        if (!IsPostBack)
        {
            //clearing on refresh
            this.txtClientAddressDesign.Text = "";
            this.txtClientCityDesign.Text = "";
            this.txtClientPCodeDesign.Text = "";
            this.txtClientPhoneDesign.Text = "";
            this.txtClientFNameDesign.Text = "";
            this.txtClientLNameDesign.Text = "";
            this.txtClientPosDesign.Text = "";
            this.txtDesignerFNameDesign.Text = "";
            this.txtDesignerLNameDesign.Text = "";
            this.txtSalesAssocFNameDesign.Text = "";
            this.txtSalesAssocLNameDesign.Text = "";
            this.txtBidDateDesign.Text = "";
            this.txtBidEstBeginDateDesign.Text = "";
            this.txtBidEstComDateDesign.Text = "";
            this.txtProjSiteDesign.Text = "";
            this.txtBidEstCostDesign.Text = "";
            this.LlblTitle.Text = "";
        }

        //Fill Inventory Desc for Material Req
        foreach (INVENTORY i in db.INVENTORies)
            this.ddlMaterialDescDesign.Items.Add(i.MATERIAL.matDesc + " " + i.invSizeAmnt + " " + i.invSizeUnit);

        //Fill Worker desc for Labour requirments
        foreach (WORKER_TYPE wt in db.WORKER_TYPE)
            this.ddlLabourSummaryDescDesign.Items.Add(wt.wrkTypeDesc);

        //////////////////////////////////////
        //**********************************//
        //**********************************//
        //*******PRODUCTION PLAN************//
        //**********************************//
        //**********************************//
        //////////////////////////////////////

        //Fill projTeam Sales Assoc. & Designer
        this.txtSalesAssocFNameProduction.Text = "Bob Reinhardt";
        this.txtDesignerFNameProduction.Text = "Tamara Bakken";

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    { 
      NBD_DatabaseEntities db = new NBD_DatabaseEntities();
      int id = Convert.ToInt32(this.DropDownList2.SelectedValue);
      var query = from client in db.CLIENTs where client.ID == id select client;

      var query2 = from project in db.PROJECTs
                   where project.ID == id
                   select project;

      txtClientBusinessDesign.Text = this.DropDownList2.SelectedItem.ToString();
      this.txtDesignerPhoneDesign.Text = "4087753645";
      this.txtSalesAssocPhoneDesign.Text = "4087753652";

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
          if (txtClientPhoneDesign.Text == "2262822677")
          {
              txtSalesAssocLNameDesign.Text = "Reinhardt";
              txtSalesAssocFNameDesign.Text = "Bob";
              
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

    protected void btnAddMaterial_Click(object sender, EventArgs e)
    {
        //Add Material To Req Material for Project

        NBD_DatabaseEntities db = new NBD_DatabaseEntities();

        MATERIAL_REQ mr = new MATERIAL_REQ();

        mr.projectID = this.ddlProjectID.SelectedIndex +1;
        mr.inventoryID = this.ddlMaterialDescDesign.SelectedIndex + 1;
        mr.mreqEstQty = Convert.ToInt16(this.txtQtyEstDesign.Text);

        db.MATERIAL_REQ.Add(mr);
        db.SaveChanges();

        gvMaterialReqDesign.DataBind();
        //Puts you back to the materials table
        Response.Redirect("~/Projects/project-page.aspx#ContentPlaceHolder2_gvMaterialReqDesign");

    }

    protected void btnAddLabourSummaryDesign_Click(object sender, EventArgs e)
    {
        NBD_DatabaseEntities db = new NBD_DatabaseEntities();

        LABOUR_SUMMARY ls = new LABOUR_SUMMARY();

        ls.projectID = this.ddlProjectID.SelectedIndex + 1;
        ls.lsHours = Convert.ToInt16(this.txtLabourSummaryHoursDesign.Text);
        ls.workerTypeID = this.ddlLabourSummaryDescDesign.SelectedIndex + 1;

        db.LABOUR_SUMMARY.Add(ls);
        db.SaveChanges();

        gvLabourSummaryDesign.DataBind();
    }
  }
}
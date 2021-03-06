﻿using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated) { Response.Redirect("~/Default.aspx"); }

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
                this.lblTitle.Text = "";

                //Fill Inventory Desc for Material Req
                foreach (INVENTORY i in db.INVENTORies)
                    this.ddlMaterialDescDesign.Items.Add(i.MATERIAL.matDesc + " " + i.invSizeAmnt + " " + i.invSizeUnit);

                //Fill Worker desc for Labour requirments
                foreach (WORKER_TYPE wt in db.WORKER_TYPE)
                    this.ddlLabourSummaryDescDesign.Items.Add(wt.wrkTypeDesc);
            }



            //////////////////////////////////////
            //**********************************//
            //**********************************//
            //*******PRODUCTION PLAN************//
            //**********************************//
            //**********************************//
            //////////////////////////////////////

            if (!IsPostBack)
            {
                foreach (WORKER w in db.WORKERs)
                    this.ddlProductionWorkerNameProduction.Items.Add(w.prodWorkerFName);

                foreach (INVENTORY i in db.INVENTORies)
                    this.ddlMaterialDescProduction.Items.Add(i.MATERIAL.matDesc + " " + i.invSizeAmnt + " " + i.invSizeUnit);

                foreach (TOOL t in db.TOOLs)
                    this.ddlToolDescProduction.Items.Add(t.toolDesc);
            }

            //////////////////////////////////////
            //**********************************//
            //**********************************//
            //*******Design Budget**************//
            //**********************************//
            //**********************************//
            //////////////////////////////////////

            if (!Page.IsPostBack)
            {
                DataTable dt1 = new DataTable();
                DataTable dt2 = new DataTable();
                DataRow dr1 = null;
                DataRow dr2 = null;
                DataRow dr3 = null;
                DataRow dr4 = null;
                DataRow dr5 = null;
                DataRow dr6 = null;
                DataRow dr7 = null;

                dt1.Columns.Add("Task");
                dt1.Columns.Add("Date");
                dt1.Columns.Add("Hours");

                dt2.Columns.Add("Task");
                dt2.Columns.Add("Date");
                dt2.Columns.Add("Hours");

                dr1 = dt1.NewRow();
                dr1["Task"] = "Inital Meeting With Client";
                dr1["Date"] = "April 15";
                dr1["Hours"] = 1;
                dt1.Rows.Add(dr1);

                /////////////////
                //1
                dr2 = dt2.NewRow();
                dr2["Task"] = "Prepare preliminary sketches";
                dr2["Date"] = "April 21";
                dr2["Hours"] = 2;
                dt2.Rows.Add(dr2);
                //2
                dr3 = dt2.NewRow();
                dr3["Task"] = "Prepare design bid";
                dr3["Date"] = "April 21";
                dr3["Hours"] = 2;
                dt2.Rows.Add(dr3);
                //3
                dr4 = dt2.NewRow();
                dr4["Task"] = "Meet with client";
                dr4["Date"] = "April 25";
                dr4["Hours"] = 1;
                dt2.Rows.Add(dr4);
                //4
                dr5 = dt2.NewRow();
                dr5["Task"] = "Revise Sketches & Bid";
                dr5["Date"] = "April 25";
                dr5["Hours"] = 2;
                dt2.Rows.Add(dr5);
                //5
                dr6 = dt2.NewRow();
                dr6["Task"] = "Meet with client";
                dr6["Date"] = "May 2";
                dr6["Hours"] = 1;
                dt2.Rows.Add(dr6);
                //6
                dr7 = dt2.NewRow();
                dr7["Task"] = "Prepare Initial blueprint";
                dr7["Date"] = "May 3";
                dr7["Hours"] = 3;
                dt2.Rows.Add(dr7);

                dt1.AcceptChanges();
                dt2.AcceptChanges();
                gvHoursToDateDBudget.DataSource = dt1;
                gvEstimatedHoursDBudget.DataSource = dt2;
                gvHoursToDateDBudget.DataBind();
                gvEstimatedHoursDBudget.DataBind();
            }

        }
        protected void ddlProjectID_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Gets the ProjectID from the dropdownlist
            int ProjectID = Convert.ToInt32(this.ddlProjectID.SelectedValue);
            //Set clientID to default value
            int ClientID = 0;

            //Query for project information
            var queryProject = from project in db.PROJECTs where project.ID == ProjectID select project;

            foreach (var project in queryProject)
            {
                //Get clientID for specefic project 
                ClientID = project.clientID;
                lblTitle.Text = project.projName;

                //Project information for design bid
                this.txtBidDateDesign.Text = Convert.ToString(project.projBidDate);
                this.txtBidEstBeginDateDesign.Text = Convert.ToString(project.projEstStart);
                this.txtBidEstComDateDesign.Text = Convert.ToString(project.projEstEnd);
                this.txtProjSiteDesign.Text = project.projSite;
                this.txtBidEstCostDesign.Text = project.projEstCost;

                //Project information for design budget
                this.txtBudgetSubmittedDBudget.Text = Convert.ToString(project.projBidDate);
                this.txtBeginDatedBudget.Text = Convert.ToString(project.projEstStart);
                this.txtComDateDBudget.Text = Convert.ToString(project.projEstEnd);
                this.txtProjSiteDBudget.Text = project.projSite;
                this.txtBidCostDBudget.Text = project.projEstCost;

                //Project information for production plan
                this.txtProjProducton.Text = project.projName;
                this.txtBeginDateProduction.Text = Convert.ToString(project.projEstStart);
                this.txtComDateProdcution.Text = Convert.ToString(project.projEstEnd);
                this.txtProjSiteProduction.Text = project.projSite;
                this.txtBidCostProduction.Text = project.projEstCost;
            }

            //Quaery for client information
            var queryClient = from client in db.CLIENTs where client.ID == ClientID select client;

            foreach (var client in queryClient)
            {
                //Client information for design bid
                this.txtClientBusinessDesign.Text = client.cliName;
                this.txtClientAddressDesign.Text = client.cliAddress;
                this.txtClientCityDesign.Text = client.CITY.city1;
                this.txtClientProvDesign.Text = client.cliProvince;
                this.txtClientPCodeDesign.Text = client.cliPCode;
                this.txtClientPhoneDesign.Text = client.cliPhone;
                this.txtClientFNameDesign.Text = client.cliConFName;
                this.txtClientLNameDesign.Text = client.cliConLName;
                this.txtClientPosDesign.Text = client.cliConPosition;

                //NBD staff information for design bid
                this.txtSalesAssocFNameDesign.Text = "Bob";
                this.txtSalesAssocLNameDesign.Text = "Reinhardt";
                this.txtDesignerFNameDesign.Text = "Tamara";
                this.txtDesignerLNameDesign.Text = "Bakken";

                //Client information for design budget
                this.txtClientBusinessdBudget.Text = client.cliName;
                this.txtClientCityDBudget.Text = client.CITY.city1;
                this.txtClientAddressDBudget.Text = client.cliAddress;
                this.txtClientProvDBudget.Text = client.cliProvince;
                this.txtClientPCodeDBudget.Text = client.cliPCode;
                this.txtClientPhoneDBudget.Text = client.cliPhone;
                this.txtClientFNameDBudget.Text = client.cliConFName;
                this.txtClientLNameDBudget.Text = client.cliConLName;
                this.txtClientPosDBudget.Text = client.cliConPosition;

                //NBD staff information for design budget
                this.txtSalesAssocFNameDBudget.Text = "Bob";
                this.txtSalesAssocLNameDBudget.Text = "Reinhardt";
                this.txtDesignerFNameDBudget.Text = "Tamara";
                this.txtDesignerLNameDBudget.Text = "Bakken";
            }

            //No phone numbers actually in database so hardcoded values
            this.txtDesignerPhoneDesign.Text = "4087753645";
            this.txtDesignerPhoneDBudget.Text = "4087753645";

            this.txtSalesAssocPhoneDesign.Text = "4087753652";
            this.txtSalesAssocPhoneDBudget.Text = "4087753652";
        }

        //Adds materials_req for design bid
        protected void btnAddMaterial_Click(object sender, EventArgs e)
        {
            try
            {
                //Add instance for material_req
                MATERIAL_REQ mr = new MATERIAL_REQ();

                //gather information to insert a new material_req for specefic project
                mr.projectID = Convert.ToInt32(this.ddlProjectID.SelectedValue);
                mr.inventoryID = this.ddlMaterialDescDesign.SelectedIndex + 1;
                mr.mreqEstQty = Convert.ToInt16(this.txtQtyEstDesign.Text);

                //add material_req to the database
                db.MATERIAL_REQ.Add(mr);
                db.SaveChanges();

                //refresh the gridview
                gvMaterialReqDesign.DataBind();
            }
            catch
            {
                lblErrormsgMaterialReqDesign.Text = "Something went wrong!";
            }

            //set the textboxes and dropdown back to defaults
            ddlMaterialDescDesign.SelectedIndex = 0;
            txtQtyEstDesign.Text = "";
        }

        //Deletes materials_req for design bid 
        protected void btnSubMaterial_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of material_req with ID of textbox value
                var matReq = new MATERIAL_REQ { ID = Convert.ToInt32(txtSubMaterial.Text) };
                //Attach records
                db.MATERIAL_REQ.Attach(matReq);
                //Remove record
                db.MATERIAL_REQ.Remove(matReq);
                db.SaveChanges();
                //Refresh gridview
                gvMaterialReqDesign.DataBind();
            }
            catch
            {
                lblErrormsgMaterialReqDesign.Text = "Please select a valid row to delete!";
            }

            //Set textbox back to default
            txtSubMaterial.Text = "";
        }

        //Gets the selected gridview row index for material_req on design bid
        protected void gvMaterialReqDesign_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvMaterialReqDesign.Rows[e.NewSelectedIndex];
            this.txtSubMaterial.Text = row.Cells[1].Text;
        }

        //Adds laboursummary information for design bid
        protected void btnAddLabourSummaryDesign_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of labour summary
                LABOUR_SUMMARY ls = new LABOUR_SUMMARY();

                //Gather information needed in order to create labour summary for specefic project
                ls.projectID = Convert.ToInt32(this.ddlProjectID.SelectedValue);
                ls.lsHours = Convert.ToInt16(this.txtLabourSummaryHoursDesign.Text);
                ls.workerTypeID = this.ddlLabourSummaryDescDesign.SelectedIndex + 1;

                //Add labour summary to database
                db.LABOUR_SUMMARY.Add(ls);
                db.SaveChanges();

                //Refresh the gridview
                gvLabourSummaryDesign.DataBind();
            }
            catch
            {
                lblErrormsgLabourSummaryDesign.Text = "Something went wrong!";
            }

            //Set textboxes and drop down back to default 
            txtLabourSummaryHoursDesign.Text = "";
            ddlLabourSummaryDescDesign.SelectedIndex = 0;
        }

        //Deletes labour summary information for design bid
        protected void btnSubLabourSummary_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of labour summary with ID of textbox value
                var ls = new LABOUR_SUMMARY { ID = Convert.ToInt32(txtSubLabourSummary.Text) };
                //Attach records
                db.LABOUR_SUMMARY.Attach(ls);
                //Remove record
                db.LABOUR_SUMMARY.Remove(ls);
                db.SaveChanges();
                //Refresh gridview
                gvLabourSummaryDesign.DataBind();
            }
            catch
            {
                lblErrormsgLabourSummaryDesign.Text = "Please select a valid row to delete!";
            }

            //Set textbox back to default
            txtSubLabourSummary.Text = "";
        }

        //Gets the selected row index for labour summary on the design bid
        protected void gvLabourSummaryDesign_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvLabourSummaryDesign.Rows[e.NewSelectedIndex];
            this.txtSubLabourSummary.Text = row.Cells[1].Text;
        }

        //Submit finished design bid
        protected void btnSubmitDesignBid_Click(object sender, EventArgs e)
        {
            try
            {
                //get the project ID
                int pID = Convert.ToInt32(this.ddlProjectID.SelectedValue);

                //Establish linc
                var p = db.PROJECTs.Where(c => c.ID == pID).First();

                //Add in changed values 
                p.projBidDate = Convert.ToDateTime(this.txtBidDateDesign.Text);
                p.projEstStart = this.txtBidEstBeginDateDesign.Text;
                p.projEstEnd = this.txtBidEstComDateDesign.Text;
                p.projEstCost = this.txtBidEstCostDesign.Text;

                //Submit to database
                db.SaveChanges();

                lblErrormsgDesignBidSudmit.Text = "Design Bid Submitted!";
            }
            catch
            {
                lblErrormsgDesignBidSudmit.Text = "Something went wrong!";
            }
        }

        //Submit finished design budget
        protected void btnSubmitDesignBudget_Click(object sender, EventArgs e)
        {
            lblErrormsgDesignBudget.Text = "Design Budget Submitted!";
        }

        //Add workers to project
        protected void btnAddProdWorker_Click(object sender, EventArgs e)
        {
            try
            {
                //Create production team instance
                PROD_TEAM pt = new PROD_TEAM();

                //Gather information needed to form a new production team
                pt.projectID = Convert.ToInt32(this.ddlProjectID.SelectedValue);
                pt.workerID = this.ddlProductionWorkerNameProduction.SelectedIndex + 1;
                pt.teamPhaseIn = this.txtProductionTeamPhaseProduction.Text;

                //Save changes to database
                db.PROD_TEAM.Add(pt);
                db.SaveChanges();

                //Refresh the gridview
                gvProdTeamProduction.DataBind();
            }

            catch
            {
                lblErrormsgProductionTeam.Text = "Something went wrong!";
            }

            //Set the dropdownlist and textbox back to default
            this.ddlProductionWorkerNameProduction.SelectedIndex = 0;
            this.txtProductionTeamPhaseProduction.Text = "";
        }

        //Delete workers from production team
        protected void btnSubProdWorker_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of prodcionteam with ID of textbox value
                var pt = new PROD_TEAM { ID = Convert.ToInt32(txtSubProdWorker.Text) };
                //Attach records
                db.PROD_TEAM.Attach(pt);
                //Remove record
                db.PROD_TEAM.Remove(pt);
                db.SaveChanges();
                //Refresh gridview
                gvProdTeamProduction.DataBind();
            }
            catch
            {
                lblErrormsgProductionTeam.Text = "Please select a valid row to delete!";
            }

            //Set textbox back to default
            txtSubProdWorker.Text = "";
        }

        //Gets the selected row index for the production team
        protected void gvProdTeamProduction_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvProdTeamProduction.Rows[e.NewSelectedIndex];
            this.txtSubProdWorker.Text = row.Cells[1].Text;
        }

        //Add materials to the prodcution plan
        protected void btnAddMaterialProduction_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of material_req
                MATERIAL_REQ mr = new MATERIAL_REQ();

                //Gather all information needed to create material_req
                mr.projectID = Convert.ToInt32(this.ddlProjectID.SelectedValue);
                mr.inventoryID = this.ddlMaterialDescProduction.SelectedIndex + 1;
                mr.mreqEstQty = Convert.ToInt16(this.txtQtyEstProduction.Text);
                mr.mreqDeliver = Convert.ToDateTime(this.txtMaterialDeliverProduction.Text);
                mr.mreqInstall = Convert.ToDateTime(this.txtMaterialInstallProduction.Text);

                //Save material_req to database
                db.MATERIAL_REQ.Add(mr);
                db.SaveChanges();

                //Refresh Gridview
                gvMaterialReqProduction.DataBind();
            }
            catch
            {
                lblErrormsgProductionMaterials.Text = "Something went wrong!";
            }

            //Set textboxes and dropdownlists back to default
            this.ddlMaterialDescProduction.SelectedIndex = 0;
            this.txtQtyEstProduction.Text = "";
            this.txtMaterialDeliverProduction.Text = "";
            this.txtMaterialInstallProduction.Text = "";
        }

        protected void btnSubProductionMaterials_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of materal_req with ID of textbox value
                var mr = new MATERIAL_REQ { ID = Convert.ToInt32(txtSubProductionMaterials) };
                //Attach records
                db.MATERIAL_REQ.Attach(mr);
                //Remove record
                db.MATERIAL_REQ.Remove(mr);
                db.SaveChanges();
                //Refresh gridview
                gvMaterialReqProduction.DataBind();
            }
            catch
            {
                lblErrormsgProductionMaterials.Text = "Please select a valid row to delete!";
            }

            //Set textbox back to default
            txtSubProductionMaterials.Text = "";
        }

        //Select the material_req row from the gridview
        protected void gvMaterialReqProduction_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvMaterialReqProduction.Rows[e.NewSelectedIndex];
            this.txtSubProductionMaterials.Text = row.Cells[1].Text;
        }

        //Add tools to the production plan
        protected void btnAddToolProduction_Click(object sender, EventArgs e)
        {
            try
            {
                //Create a tool instance
                PROD_TOOL t = new PROD_TOOL();

                //Gather information needed to make a tool
                t.projectID = Convert.ToInt32(this.ddlProjectID.SelectedValue);
                t.ptQty = Convert.ToByte(this.txtToolQtyEstProduction.Text);
                t.ptDeliverFrom = Convert.ToDateTime(this.txtToolDeliverFromProduction.Text);
                t.ptDeliverTo = Convert.ToDateTime(this.txtToolDeliverToProduction.Text);
                t.toolID = this.ddlToolDescProduction.SelectedIndex + 1;

                //Sace tool to database
                db.PROD_TOOL.Add(t);
                db.SaveChanges();

                //Refresh gridview
                gvToolRequirementProduction.DataBind();
            }
            catch
            {
                lblErrormsgToolProdcution.Text = "Something went wrong!";
            }

            //Set textboxes the dropdowns back to defaults
            this.txtToolQtyEstProduction.Text = "";
            this.txtToolDeliverFromProduction.Text = "";
            this.txtToolDeliverToProduction.Text = "";
            this.ddlToolDescProduction.SelectedIndex = 0;
        }

        //Delete tools from project
        protected void btnSubToolProduction_Click(object sender, EventArgs e)
        {
            try
            {
                //Create instance of tool with ID of textbox value
                var t = new PROD_TOOL { ID = Convert.ToInt32(txtSubToolProduction.Text) };
                //Attach records
                db.PROD_TOOL.Attach(t);
                //Remove record
                db.PROD_TOOL.Remove(t);
                db.SaveChanges();
                //Refresh gridview
                gvToolRequirementProduction.DataBind();

            }
            catch
            {
                this.lblErrormsgToolProdcution.Text = "Please select a valid row to delete!";
            }

            //Set textbox back to default
            this.txtSubToolProduction.Text = "";
        }

        //Select the selected value from the tools gridview
        protected void gvToolRequirementProduction_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow row = gvToolRequirementProduction.Rows[e.NewSelectedIndex];
            this.txtSubToolProduction.Text = row.Cells[1].Text;
        }
    }
}
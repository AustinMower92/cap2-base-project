using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminSchedules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void ddlGroup_Changed(object sender, EventArgs e)
        {
            
        }
        protected void ddlStatus_Changed(object sender, EventArgs e)
        {
            
        }

        // gets students that correspond with the location selected
        // sets the other drop downs and search bars to empty
        protected void ddlLocation_Changed(object sender, EventArgs e)
        {
            

        }

        protected void btnDownloadData_Click(object sender, EventArgs e)
        {
            
        }

        // searches the database for students that have a similar keyword in their data
        // sets drops downs to default
        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        // clears all searches
        // resets gridview to original
        protected void btnClear_Click(object sender, EventArgs e)
        {

        }


        protected void gvStudentList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {

        }


        // keep spot on page
        protected void gvStudentList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        // code to hide select button from gridview, change hover color to yellow, and wire click to select button
        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {

        }
    }
}
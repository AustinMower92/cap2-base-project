using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminStudentEvaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["AdminViewStuEval"]) == 2)
            {
                lblSuccessfulUpload.Visible = true;
            }
            else if (Convert.ToInt32(Session["AdminViewStuEval"]) == 1)
            {
                lblUnsuccessfulUpload.Visible = true;
            }
        }

        protected void DownloadTemplate_Click(object sender, EventArgs e)
        {
            using (var client = new WebClient())
            {
                client.DownloadFile("", "Monthly-Evaluation-Template.xlsx");
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminStudentView.aspx");
        }

        protected void btnPublish1_Click(object sender, EventArgs e)
        {
            btnPublish1.Visible = false;
            btnUnpublish1.Visible = true;
            lblPublishStatus.Text = "Published";
        }

        protected void btnUnpublish1_Click(object sender, EventArgs e)
        {
            btnPublish1.Visible = true;
            btnUnpublish1.Visible = false;
            lblPublishStatus.Text = "Not Published";
        }
    }
}
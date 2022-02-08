using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminStudentView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session["AdminViewStuEval"] = 1;
            Response.Redirect("AdminStudentEvaluation.aspx");
            
        }

        protected void btnConfirmUpload_Click(object sender, EventArgs e)
        {
            Session["AdminViewStuEval"] = 2;
            Response.Redirect("AdminStudentEvaluation.aspx");
            
        }
    }
}
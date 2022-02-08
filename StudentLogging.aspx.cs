using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class StudentLogging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateLog_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentCreateLog.aspx");
        }

        protected void btnViewHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewLogList.aspx");
        }
    }
}
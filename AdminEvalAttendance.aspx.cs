using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminEvalAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            editTable.Visible = false;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            editTable.Visible = true;
        }
    }
}
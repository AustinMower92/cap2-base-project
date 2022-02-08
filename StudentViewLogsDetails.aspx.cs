using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class StudentViewLogsDetails : System.Web.UI.Page
    {
        ArrayList arrLogs = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ShowLogs();

            GenerateArrayList();

            ShowLogs();


        }

        public void ShowLogs()

        {

            gvLogs.DataSource = arrLogs;

            gvLogs.DataBind();

        }

        public void GenerateArrayList()
        {
            Log objLog;

            objLog = new Log();
            objLog.Index = "1";
            objLog.Gender = "Male";
            objLog.LifeCycleStage = "Early Childhood";
            objLog.ICD = "S92.521S";
            objLog.CPT1 = "91307";
            objLog.CPT2 = "54057";
            objLog.CPT3 = "54401";
            objLog.CPT4 = "54205";
            objLog.CPT5 = "";

            arrLogs.Add(objLog);

        }
        protected void gvLogs_RowEditing(Object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)

        {
            gvLogs.EditIndex = e.NewEditIndex;

            ShowLogs();
        }
        protected void gvLogs_RowUpdating(Object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)

        {
            int rowIndex = e.RowIndex;

            gvLogs.EditIndex = -1;

            ShowLogs();

        }
        protected void gvLogs_RowCancelingEdit(Object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)

        {
            gvLogs.EditIndex = -1;

            ShowLogs();

        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewLogs.aspx");
        }

        protected void gvLogs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
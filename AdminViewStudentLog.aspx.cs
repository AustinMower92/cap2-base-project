using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminViewStudentLog : System.Web.UI.Page
    {
        ArrayList arrLogs = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateArrayList();
            ShowStudents();
        }

        public void ShowStudents()
        {
            gvLogs2.DataSource = arrLogs;
            gvLogs2.DataBind();
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

            objLog = new Log();
            objLog.Index = "2";
            objLog.Gender = "Male";
            objLog.LifeCycleStage = "Adolescent";
            objLog.ICD = "M72.2";
            objLog.CPT1 = "01212";
            objLog.CPT2 = "00732";
            objLog.CPT3 = "";
            objLog.CPT4 = "";
            objLog.CPT5 = "";

            arrLogs.Add(objLog);

            objLog = new Log();
            objLog.Index = "3";
            objLog.Gender = "Female";
            objLog.LifeCycleStage = "Adult";
            objLog.ICD = "M79.676";
            objLog.CPT1 = "31505";
            objLog.CPT2 = "31572";
            objLog.CPT3 = "77049";
            objLog.CPT4 = "";
            objLog.CPT5 = "";

            arrLogs.Add(objLog);

            objLog = new Log();
            objLog.Index = "";
            objLog.Gender = "";
            objLog.LifeCycleStage = "";
            objLog.ICD = "";
            objLog.CPT1 = "";
            objLog.CPT2 = "";
            objLog.CPT3 = "";
            objLog.CPT4 = "";
            objLog.CPT5 = "";

            arrLogs.Add(objLog);

            objLog = new Log();
            objLog.Index = "";
            objLog.Gender = "";
            objLog.LifeCycleStage = "";
            objLog.ICD = "";
            objLog.CPT1 = "";
            objLog.CPT2 = "";
            objLog.CPT3 = "";
            objLog.CPT4 = "";
            objLog.CPT5 = "";

            arrLogs.Add(objLog);
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewStudentLogList.aspx");
        }

        protected void gvLogs2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvLogs2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvLogs2.PageIndex = e.NewPageIndex;
            gvLogs2.DataSource = arrLogs;
            gvLogs2.DataBind();
        }

        protected void cbDeleteHeader_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbDelete_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewStudentLogList.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //searchByIndextxt.Text = "";
        }
        protected void gvLogs2_RowEditing(Object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)

        {
            gvLogs2.EditIndex = e.NewEditIndex;

            ShowStudents();
        }
        protected void gvLogs2_RowUpdating(Object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)

        {
            int rowIndex = e.RowIndex;

            gvLogs2.EditIndex = -1;

            ShowStudents();

        }
        protected void gvLogs2_RowCancelingEdit(Object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)

        {
            gvLogs2.EditIndex = -1;

            ShowStudents();

        }
    }
}

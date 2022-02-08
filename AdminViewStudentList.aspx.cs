using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminViewStudentList : System.Web.UI.Page
    {
        ArrayList arrStudents = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateArrayList();
            ShowStudents();
        }

        public void ShowStudents()

        {

            gvStudents.DataSource = arrStudents;

            gvStudents.DataBind();

        }

        public void GenerateArrayList()

        {

            Student objStudent;



            for (int i = 1; i <= 20; i++)

            {

                objStudent = new Student();

                objStudent.TuID = "tui" + (10000 + i).ToString();

                objStudent.FirstName = "FirstName " + i.ToString();

                objStudent.LastName = "LastName " + i.ToString();

                objStudent.Rotation = "Rotation" + i.ToString();

                objStudent.Group = "TY00" + i.ToString();

                arrStudents.Add(objStudent);

            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminViewStudentLogList.aspx");
        }

        protected void gvStudents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvStudents.PageIndex = e.NewPageIndex;
            gvStudents.DataSource = arrStudents;
            gvStudents.DataBind();

        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogging.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            searchByIndextxt.Text = "";

        }
    }
}

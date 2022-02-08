using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminEvalMonthlyReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            studentTable.Visible = false;
        }


        protected void Search_Click(object sender, EventArgs e)
        {
            
            //Dim student As String = Request.Form("StudentList");

            //if (student = "Test User 1")
            //{
            //    studentTable.Visible = true;
            //    nameLabel.Text = "Test User 1";
            //    studentTable.Focus();
            //}
            //else if (student = "Test User 2")
            //{
            //    studentTable.Visible = true;
            //    nameLabel.Text = "Test User 2";
            //    studentTable.Focus();
            //}
            //else if (student = "Test User 3")
            //{
            //    studentTable.Visible = true;
            //    nameLabel.Text = "Test User 3";
            //    studentTable.Focus();
            //}
            //else if (student = "Test User 4")
            //{
            //    studentTable.Visible = true;
            //    nameLabel.Text = "Test User 4";
            //    studentTable.Focus();
            //}
        }

        protected void testUser1_Click(object sender, EventArgs e)
        {
            studentTable.Visible = true;
            nameLabel.Text = "Text User 1";
            studentTable.Focus();
        }

        protected void testUser2_Click(object sender, EventArgs e)
        {
            studentTable.Visible = true;
            nameLabel.Text = "Text User 2";
            studentTable.Focus();
        }

        protected void testUer3_Click(object sender, EventArgs e)
        {
            studentTable.Visible = true;
            nameLabel.Text = "Text User 3";
            studentTable.Focus();
        }

        protected void testUer4_Click(object sender, EventArgs e)
        {
            studentTable.Visible = true;
            nameLabel.Text = "Text User 4";
            studentTable.Focus();
        }
    }
}
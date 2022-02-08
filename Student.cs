using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Capstone_1_Monthly_Evaluation
{
    public class Student
    {
        private string tuID;
        private string firstname;
        private string lastname;
        private string rotation;
        private string group;

        public String TuID
        {
            get { return tuID; }
            set { tuID = value; }
        }

        public String FirstName
        {
            get { return firstname; }
            set { firstname = value; }
        }

        public String LastName
        {
            get { return lastname; }
            set { lastname = value; }
        }

        public String Group
        {
            get { return group; }
            set { group = value; }
        }

        public String Rotation
        {
            get { return rotation; }
            set { rotation = value; }
        }
    }
}
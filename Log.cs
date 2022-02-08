using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Capstone_1_Monthly_Evaluation
{
    public class Log
    {
       
            private string index;
            private string gender;
            private string lifecyclestage;
            private string icd;
            private string cpt1;
            private string cpt2;
            private string cpt3;
            private string cpt4;
            private string cpt5;

            public String Index
            {
                get { return index; }
                set { index = value; }
            }

            public String Gender
            {
                get { return gender; }
                set { gender = value; }
            }

            public String LifeCycleStage
            {
                get { return lifecyclestage; }
                set { lifecyclestage = value; }
            }

            public String ICD
            {
                get { return icd; }
                set { icd = value; }
            }

            public String CPT1
            {
                get { return cpt1; }
                set { cpt1 = value; }
            }
            public String CPT2
            {
                get { return cpt2; }
                set { cpt2 = value; }
            }
            public String CPT3
            {
                get { return cpt3; }
                set { cpt3 = value; }
            }
            public String CPT4
            {
                get { return cpt4; }
                set { cpt4 = value; }
            }
            public String CPT5
            {
                get { return cpt5; }
                set { cpt5 = value; }
            }
        
        
    }
}
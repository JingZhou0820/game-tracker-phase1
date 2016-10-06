using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using statement require to connect enity framwork database
using lab4_mytry1.Models;
//using System.Web.ModelBinding;
using System.Diagnostics;

namespace lab4_mytry1
{
    public partial class students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStudents();
            }

        }
        private void getStudents()
        {

            using (ContosoContext db = new ContosoContext())
            {
                var students = (from allstudents in db.Students
                                select allstudents);
                StudentGridView.DataSource = students.ToList();
                StudentGridView.DataBind();

            }

        }
    }
}
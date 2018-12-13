using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;
using Library_Management_System.Data;

namespace Library_Management_System
{
    public partial class registerTeacher : System.Web.UI.Page
    {
        static string tid = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSubmitTCHR_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            int result = db.sp_insertTeacherInfo(txtNameTCHR.Text, txtDesignationTCHR.Text, txtBranchTCHR.Text, txtContactTCHR.Text, txtLecturesTCHR.Text);

            ObjectParameter t_id = new ObjectParameter("tid", typeof(System.Int32));
            db.sp_teacherID(txtNameTCHR.Text, t_id);

            if (result > 0)
            {
                Response.Write("document.alert('Successfully Submitted....!!!!')");
                tid = t_id.Value.ToString();
                teachersignupbox.Visible = true;
                teachersubmitbox.Visible = false;
            }
            else
            {
                SetFocus(txtNameTCHR);
            }
        }

        protected void btnSignupTCHR_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            int result = db.sp_insertTCHRLogin(int.Parse(tid), txtUSernameTCHR.Text, txtPasswordTCHR.Text);

            if (result > 0)
            {
                Response.Write("document.alert('Successfully Submitted....!!!!')");
                Response.Redirect("books.aspx");
            }
            else
            {
                SetFocus(txtUSernameTCHR);
            }
        }
    }
}
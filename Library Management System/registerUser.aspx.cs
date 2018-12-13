using Library_Management_System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;

namespace Library_Management_System
{
    public partial class registerUser : System.Web.UI.Page
    {
        static string libID = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            int result = db.sp_insertStudentInfo(int.Parse(txtRegNoSTD.Text), txtBranchSTD.Text, txtSectionSTD.Text, txtSemesterSTD.Text, int.Parse(txtYOASTD.Text));

            ObjectParameter lib_id = new ObjectParameter("libid", typeof(System.Int32));
            db.sp_libraryID(int.Parse(txtRegNoSTD.Text), lib_id);

            if (result > 0)
            {
                Response.Write("document.alert('Successfully Submitted....!!!!')");
                libID = lib_id.Value.ToString();
                studentsignupbox.Visible = true;
                studentsubmitbox.Visible = false;
            }
            else
            {
                SetFocus(txtRegNoSTD);
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            int result = db.sp_insertSTDLogin(int.Parse(libID), txtUsernameSTD.Text, txtPasswordSTD.Text);

            if (result > 0)
            {
                Response.Write("document.alert('Successfully Submitted....!!!!')");
                Response.Redirect("books.aspx");
            }
            else
            {
                SetFocus(txtUsernameSTD);
            }
        }
    }
}
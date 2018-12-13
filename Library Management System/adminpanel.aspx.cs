using Library_Management_System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class adminpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateBooks();
                populateIssueBook();
                populateStudentInfo();
                populateStudentLogin();
                populateTeacherInfo();
                populateTeacherLogin();
            }
        }

        private void populateBooks()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                gvBooks.DataSource = GetBooksRecord();
                gvBooks.DataBind();
            }
        }

        private void populateIssueBook()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                gvIssueBook.DataSource = GetIssueBooks();
                gvIssueBook.DataBind();
            }
        }

        private void populateStudentInfo()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                gvStudentInfo.DataSource = GetStudentInfo();
                gvStudentInfo.DataBind();
            }
        }

        private void populateStudentLogin()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                gvStudentLogin.DataSource = GetStudentLogin();
                gvStudentLogin.DataBind();
            }
        }

        private void populateTeacherInfo()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                gvTeacherInfo.DataSource = GetTeacherInfo();
                gvTeacherInfo.DataBind();
            }
        }

        private void populateTeacherLogin()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                gvTeacherLogin.DataSource = GetTeacherLogin();
                gvTeacherLogin.DataBind();
            }
        }

        protected void gvBooks_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBooks.PageIndex = e.NewPageIndex;
            this.populateBooks();
        }

        public List<tblBook> GetBooksRecord()
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var listitemsrecord = (from x in db.tblBooks orderby x.code descending select x).ToList<tblBook>();
            return listitemsrecord;

        }

        public List<tblBooksIssued> GetIssueBooks()
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var listitemsrecord = (from x in db.tblBooksIssueds orderby x.bookid descending select x).ToList<tblBooksIssued>();
            return listitemsrecord;

        }
        public List<tblStudentInfo> GetStudentInfo()
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var listitemsrecord = (from x in db.tblStudentInfoes orderby x.libid descending select x).ToList<tblStudentInfo>();
            return listitemsrecord;

        }
        public List<tblStudentLogin> GetStudentLogin()
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var listitemsrecord = (from x in db.tblStudentLogins orderby x.logid descending select x).ToList<tblStudentLogin>();
            return listitemsrecord;

        }
        public List<tblTeacherInfo> GetTeacherInfo()
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var listitemsrecord = (from x in db.tblTeacherInfoes orderby x.tid descending select x).ToList<tblTeacherInfo>();
            return listitemsrecord;

        }
        public List<tblTeacherLogin> GetTeacherLogin()
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var listitemsrecord = (from x in db.tblTeacherLogins orderby x.loginid descending select x).ToList<tblTeacherLogin>();
            return listitemsrecord;
        }

        protected void timerGVBooks_Tick(object sender, EventArgs e)
        {
            populateBooks();
        }

        protected void timerIssueBook_Tick(object sender, EventArgs e)
        {
            populateIssueBook();
        }

        protected void gvIssueBook_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            gvIssueBook.PageIndex = e.NewPageIndex;
            this.populateIssueBook();
        }

        protected void timerStudentInfo_Tick(object sender, EventArgs e)
        {
            populateStudentInfo();
        }

        protected void gvStudentInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvStudentInfo.PageIndex = e.NewPageIndex;
            this.populateStudentInfo();
        }

        protected void timerStudentLogin_Tick(object sender, EventArgs e)
        {
            populateStudentLogin();
        }

        protected void gvStudentLogin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvStudentLogin.PageIndex = e.NewPageIndex;
            this.populateStudentLogin();
        }

        protected void timerTeacherInfo_Tick(object sender, EventArgs e)
        {
            populateTeacherInfo();
        }

        protected void gvTeacherInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTeacherInfo.PageIndex = e.NewPageIndex;
            this.populateTeacherInfo();
        }

        protected void timerTeacherLogin_Tick(object sender, EventArgs e)
        {
            populateTeacherLogin();
        }

        protected void gvTeacherLogin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTeacherLogin.PageIndex = e.NewPageIndex;
            this.populateTeacherLogin();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            tblBook tbl = db.tblBooks.ToList().Where(x => x.code == int.Parse(txtCode.Text.ToString())).First();

            txtTitle.Text= tbl.title;
            txtAuthor.Text= tbl.author;
            txtPublication.Text = tbl.publication;
            txtSubject.Text= tbl.subject;
            txtBooksQnty.Text= tbl.no_of_copies.ToString();

        }

        protected void btnInsertBooks_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            tblBook tbl = new tblBook();
            tbl.title = txtTitle.Text;
            tbl.author = txtAuthor.Text;
            tbl.publication = txtPublication.Text;
            tbl.subject = txtSubject.Text;
            tbl.no_of_copies = int.Parse(txtBooksQnty.Text);
            db.AddTotblBooks(tbl);
            db.SaveChanges();
            populateBooks();
        }

        protected void btnUpdateBooks_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            tblBook tbl = db.tblBooks.ToList().Where(x => x.code == int.Parse(txtCode.Text)).First();

            tbl.title = txtTitle.Text;
            tbl.author = txtAuthor.Text;
            tbl.publication = txtPublication.Text;
            tbl.subject = txtSubject.Text;
            tbl.no_of_copies = int.Parse(txtBooksQnty.Text);

            db.SaveChanges();
            populateBooks();

        }

        protected void btnDeleteBooks_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();

            tblBook tbl = db.tblBooks.ToList().Where(x => x.code == int.Parse(txtCode.Text)).First();
            db.DeleteObject(tbl);
            db.SaveChanges();
            populateBooks();
        }
    }
}
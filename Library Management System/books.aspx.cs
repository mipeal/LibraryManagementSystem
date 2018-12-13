using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Objects;
using Library_Management_System.Data;
using System.Reflection;

namespace Library_Management_System
{
    public partial class books : System.Web.UI.Page
    {
        public string title { get; set; }
        public string author { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                //search();
            }
        }


        //public void search()
        //{
        //    if (Session["title"].ToString() =="title")
        //    {         
        //        author = Session["author"].ToString();
        //        txtSearch.Text = author;
        //        searchBooksByAuthor();
        //    }
        //    else
        //    {
        //        title = Session["title"].ToString();
        //        txtSearch.Text = title;
        //        searchBooks();
        //    }
        //}

        public void searchBooks()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                dlSearch.DataSource = from Books in db.tblBooks
                                      where Books.title.Contains(title)
                                              select Books;
                dlSearch.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                dlSearch.DataSource = from Books in db.tblBooks
                                      where Books.title.Contains(txtSearch.Text)
                                      select Books;
                dlSearch.DataBind();
            }
        }

        public void searchBooksByAuthor()
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                dlSearch.DataSource = from Books in db.tblBooks
                                      where Books.author.Contains(author)
                                        select Books;
                dlSearch.DataBind();
            }
        }

        protected void btnSearchAuthor_Click(object sender, EventArgs e)
        {
            using (BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities())
            {
                dlSearch.DataSource = from Books in db.tblBooks
                                      where Books.author.Contains(txtSearch.Text)
                                      select Books;
                dlSearch.DataBind();
            }
        }

        //private StateBag PreviousPageViewState
        //{
        //    get
        //    {
        //        StateBag returnValue = null;
        //        if (PreviousPage != null)
        //        {
        //            Object objPreviousPage = (Object)PreviousPage;
        //            MethodInfo objMethod = objPreviousPage.GetType().GetMethod("ReturnViewState");
        //            return (StateBag)objMethod.Invoke(objPreviousPage, null);
        //        }
        //        return returnValue;
        //    }
        //}
    }
}
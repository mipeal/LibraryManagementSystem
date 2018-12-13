using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["title"] = "title";
                Session["author"] = "author";
            }
        }
        public void titleStateValue()
        {
            if (txtSearchTitle.Text != null || txtSearchTitle.Text != "")
            {
                Session["title"] = txtSearchTitle.Text;
            }
            else
            {
                Session["title"] = txtSearchByTitle.Text;
            }
        }
        public void authorStatevalue()
        {

            if (txtSearchAuthor.Text != null || txtSearchAuthor.Text != "")
            {
                Session["author"] = txtSearchAuthor.Text;
            }
            else
            {
                Session["author"] = txtSearchByAuthor.Text;
            }
        }
        protected void btnSearchAuthor_Click(object sender, EventArgs e)
        {
            authorStatevalue();
            Response.Redirect("books.aspx");
        }

        protected void btnSearchTitle_Click(object sender, EventArgs e)
        {
            titleStateValue();
            Server.Transfer("books.aspx");
        }

        protected void btnSearchByAuthor_Click(object sender, EventArgs e)
        {
            authorStatevalue();
            Response.Redirect("books.aspx");
        }

        protected void btnSearchByTitle_Click(object sender, EventArgs e)
        {
            titleStateValue();
            Server.Transfer("books.aspx");
        }
        
    }
}
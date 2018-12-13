using Library_Management_System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            BCC_DOTNET_LMSEntities db = new BCC_DOTNET_LMSEntities();
            var myUser = db.tblStudentLogins
        .FirstOrDefault(u => u.username == txtUsername.Text
                     && u.password == txtPassword.Text);

            if (myUser != null)    //User was found
            {
                Response.Write("alert('Login Succesfull...!!!');");
                Response.Redirect("books.aspx");
            }
            else    //User was not found
            {
                Response.Write("alert('Login Failed...!!!');");
                SetFocus(txtUsername);
            }           
        }        
    }
}
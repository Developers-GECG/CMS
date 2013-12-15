using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.Common;

namespace CMS
{
    public partial class Login : System.Web.UI.Page
    {
        private String connString = "server=localhost;User Id=root;Password=root;database=cms";
        private LoginTasks loginTasks;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            loginTasks = new LoginTasks(connString);
            Boolean flag = false;
            if (ddlLogInAs.Text == "Staff") flag = !flag;
            int i = loginTasks.checkLogin(username.Text, pwd.Text, flag);
            switch (i)
            {
                case 0:
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert(" + i + ")</script>");
                    Session["UserID"] = loginTasks.returnName();
                    Response.Redirect("StaffPortal/Staff-home.aspx");
                    break;
                case 1:
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert(" + i + ")</script>");
                    Session["UserID"] = loginTasks.returnName();
                    Response.Redirect("StudentPortal/Student-home.aspx");
                    break;
                case 2:
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert(" + i + ")</script>");
                    break;
            }
            //String uname = username.Text;
            //String password = pwd.Text;
            //String type = ddlLogInAs.Text;
            //if (loginTasks.Login(username.Text, pwd.Text, ddlLogInAs.Text))
            //{
            //    switch (ddlLogInAs.Text)
            //    {
            //        case "Staff":
            //            Response.Redirect("StaffPortal/Staff-home.aspx");
            //            break;
            //        case "Student":
            //            Response.Redirect("StudentPortal/Student-home.aspx");
            //            break;
            //    }
            //}
            //else
            //{
            //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            //}
        }
    }
}
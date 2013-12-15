using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.Login;

namespace CMS
{
    public partial class Login : System.Web.UI.Page
    {
        private String connString = "server=localhost;User Id=root;Password=root;database=cms";
        private LoginTasks loginTasks;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }
        protected void Register_Click(object sender, EventArgs e)
        {
            if (ddlRegisterAs.Text == "Staff")
            {
                Response.Redirect("StaffPortal/StaffRegister.aspx");
            }
            else if (ddlRegisterAs.Text == "Student")
            {
                Response.Redirect("StudentPortal/StudentRegister.aspx");
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            loginTasks = new LoginTasks(connString);
            Boolean flag = true;
            if (ddlLogInAs.Text == "Staff") flag = !flag;
            // Boolean i = loginTasks.checkLogin(username.Text, pwd.Text, flag);
            if (loginTasks.checkLogin(username.Text, pwd.Text, flag))
            {
                switch (flag)
                {
                    case false:
                        Session["UserName"] = loginTasks.returnName();
                        Session["UserID"] = username.Text;
                        Response.Redirect("StaffPortal/Staff-home.aspx");
                        break;
                    case true:
                        Session["UserName"] = loginTasks.returnName();
                        Session["UserID"] = username.Text;
                        Response.Redirect("StudentPortal/Student-home.aspx");
                        break;
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid UserName or Password')</script>");
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
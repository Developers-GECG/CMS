using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.VirtualClassroom;
using System.Data;
using CMS.Logic.Database;
using CMS.Logic;
using MySql.Data.MySqlClient;

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddVideo : System.Web.UI.Page
    {
        private DataTable dt;
        public Functions func = new Functions("server=localhost;User Id=root;Password=root;database=cms");
        private DBConnect dbc = new DBConnect("server=localhost;User Id=root;Password=root;database=cms");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                func.fillDropdownlist(ddlClass, "Select id,title from CMS.virtualclass_master", "id", "title");
                ddlClass.Items.Insert(0, new ListItem("Select or Create Class", "0"));
                ddlClass.Items.Insert(1, new ListItem("Create New Class", "1"));
            }
        }
        //protected String getStaffId(String username)
        //{
        //    string qry = "select id from `cms`.`staff_master` where email_id = '" + username + "'";
        //    dt = dbc.executeSelectQueryWithDT(qry);
        //    return dt.Rows[0]["id"].ToString();
        //}
        protected void addClass(Object sender, EventArgs e)
        {
            String qry = "call AddClass('" + Text_classTitle.Text + "', '" + Text_classDescription.Text + "', '" + Session["UserID"].ToString() + "', '" + Text_courtesy.Text + "', '" + Text_CKey.Text + "', '" + DDL_AssocSemester.Text + "');";
            dbc.executeIUDQuery(qry);
            Response.Redirect("Staff-home.aspx");
        }
        protected void addVideo(Object sender, EventArgs e)
        {
            String qry = "call AddVideo('" + Text_title.Text + "', '" + ddlClass.SelectedItem.Text + "', '" + Text_key.Text + "', '" + Text_description.Text + "', '" + func.getStaffId(Session["UserID"].ToString()) + "');";
            dbc.executeIUDQuery(qry);
            Response.Redirect("Staff-home.aspx");
        }
    }


}
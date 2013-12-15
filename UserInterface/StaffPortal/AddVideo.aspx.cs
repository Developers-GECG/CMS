using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMS.Logic.VirtualClassroom;
using System.Data;
using CMS.Logic.Database;
using MySql.Data.MySqlClient;

namespace CMS.UserInterface.StaffPortal
{
    public partial class AddVideo : System.Web.UI.Page
    {
        private Video video;
        private DataTable dt;
        private DBConnect dbc = new DBConnect("server=localhost;User Id=root;Password=root;database=cms");
        protected void Page_Load(object sender, EventArgs e)
        {
            video = new Video();
            this.dt = video.poplateVirtualClass();
            ddlClass.DataSource = this.dt;
            ddlClass.DataTextField = "title";
            ddlClass.DataValueField = "title";
            ddlClass.DataBind();
            ddlClass.Items.Insert(0, new ListItem("Select or Create Class", "0"));
            ddlClass.Items.Insert(1, new ListItem("Create New Class", "1"));
        }
        protected void Class_Click(Object sender, EventArgs e)
        {
            if (ddlClass.SelectedValue == "1")
            {

            }
        }
        protected String getStaffId(String username)
        {
            string qry = "select id from `cms`.`staff_master` where email_id = '" + username + "'";
            dt = dbc.executeSelectQueryWithDT(qry);
            return dt.Rows[0]["id"].ToString();
        }
        protected String getClassId()
        {
            string qry = "SELECT id FROM `cms`.`virtualclass_master` where title = '@class_name'";
            dt = dbc.executeSelectQueryWithDT(qry);
            return dt.Rows[0]["id"].ToString();

        }
        protected void addClass(Object sender, EventArgs e)
        {
            String qry = "INSERT INTO `cms`.`virtualclass_master` (`title`, `description`, `staff_id`, `courtesy`, `key`) VALUES " +
                "( '" + Text_classTitle.Text + "', '" + Text_classDescription.Text + "', '" + this.getStaffId(Session["UserID"].ToString()) + "', '" + Text_courtesy.Text + "', '" + Text_CKey.Text + "');";
            dbc.executeIUDQuery(qry);
            Response.Redirect("Staff-home.aspx");
        }
        protected void addVideo(Object sender, EventArgs e)
        {
            
            String qry = "INSERT INTO `cms`.`video_master` (`title`, `class_id`, `key`, `description`, `thumbnail_path`) VALUES ('" + Text_title.Text + "', '" + ddlClass.SelectedValue + "', '" + Text_key.Text + "', '" + Text_description.Text + "', 'thumbnail.jpg');";
            dbc.executeIUDQuery(qry);
        }
    }


}